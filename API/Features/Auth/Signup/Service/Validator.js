const { check } = require('express-validator');
const validator = require('../../../../middlewares/validatorMiddleware');

module.exports.signupValidator = [
    check('firstName').isLength({ min: 3, max: 100 }).withMessage("first name must be between 3 and 32 characters"),
    check('lastName').isLength({ min: 3, max: 100 }).withMessage("last name must be between 3 and 32 characters"),
    check('email').isEmail().withMessage("please enter valid email"),
    check('password').isLength({ min: 8, max: 200 }).withMessage("password name must be between 8 and 32 characters"),
    
    validator
];