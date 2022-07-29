const Joi = require('joi');

const schema = Joi.object({
    name: Joi.string().required(),
    address: Joi.string().min(10).required(),
    email: Joi.string().email().required(),
    phone: Joi.number().integer().min(1000000000).message("Invalid phone number").max(9999999999).message("Invalid phone number").required(),
    password: Joi.string().pattern(new RegExp("(?=.*\d)(?=.*[a-z])(?=.*[A-Z])")).min(8).max(15).required(),
    doctor_id: Joi.string().required(),
    hospital_id: Joi.string().required()
});

module.exports = schema;