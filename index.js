const express = require('express');
const multer  = require('multer');
const path = require('path');
const db = require('./db/db');
const schema = require('./schemaValidation/validation');

const app = express();
app.use(express.json());
const port =  process.env.PORT || 3000;

//Doctor registration
app.post('/doctor_registration', (req, res) => {
    let data = req.body;
    let sql = `INSERT INTO psychiatrists(doctor_id, role, hospital_id, hospital_name) VALUES('${data.doctor_id}', '${data.role}', '${data.hospital_id}', '${data.hospital_name}')`;
    
    db.query(sql, (err, result) => {
        if(err) {
            res.status(400).send(`Not able to register, ${err}`);
            throw err;
        }
        res.status(200).send('Doctor registered Successfully');
    })
})

//File Upload
const storage = multer.diskStorage({
    destination: 'uploads/images',
    filename: (req,file,cb)=>{
        return cb(null, `${file.fieldname}_${Date.now()}${path.extname(file.originalname)}`)
    }
})

const upload = multer({
    storage:storage,
})

//Patient Registration
app.post('/patient_registration', upload.single('photo'), (req, res) => {
    let data = req.body;
    const result = schema.validate(data);
    if(result.error) {
        res.status(400).send(result.error.details[0].message);
        return;
    }
    else {
    let sql = `INSERT INTO patients(name, address, email, phone, password, photo, doctor_id, hospital_id) VALUES('${data.name}', '${data.address}', '${data.email}', '${data.phone}', '${data.password}', '${req.file.filename}', '${data.doctor_id}', '${data.hospital_id}')`;
        
        db.query(sql, (err, result) => {
            if(err) {
                res.status(400).send(`Not able to register, ${err}`);
                throw err;
            }
            res.status(200).send('Patient registered Successfully');
        })
    }
})

//Get Details
var PatientDetails = [];
app.get('/details/:id', (req, res) => {
    PatientDetails = [];
    let data = db.query(`SELECT * FROM patients INNER JOIN psychiatrists ON patients.hospital_id='${req.params.id}' &&psychiatrists.hospital_id = '${req.params.id}'`, function(err, result){
        if(err)
        {
            res.status(400).send(err);
        }
        const key = 'id';
        let Patient = [...new Map(result.map(item=> [item[key], item])).values()];
        let PatientId = [...new Set(result.map(item=>item.id))];
        let PsychiatristId = [...new Set(result.map(item=>item.doctor_id))];
        for(let i=0; i<PatientId.length; i++)
        {
            PatientDetails.push({PatientId: PatientId[i], PatientName:Patient[i].name})
        }

        let TotalPatients = [...new Set(result.map(item=>item.id))];
        
        let TotalPsychiatrists = [...new Set(result.map(item=>item.doctor_id))];
        
        resp = {hospitalName: result[0].hospital_name, TotalPsychiatrists:TotalPsychiatrists.length, TotalPatients: TotalPatients.length, PsychiatristId: PsychiatristId, PatientDetails}
        res.status(200).json(resp)
    });
})


app.listen(port, ()=>{
    console.log(`running on server ${port}`);
})