const validator = require('../../../../middlewares/validatorMiddleware');
const { check } = require('express-validator');

module.exports.rentCarValidator = [

    check("clientName").isLength({ min: 3, max: 100 })
        .withMessage("Client name must be between 3 and 100 characters!"),
    check("clientPhone").isLength({ min: 11, max: 15 })
        .withMessage("Client phone must be between 11 and 15 characters!"),
    check("clientIdentity").isLength({ min: 3, max: 50 })
        .withMessage("Client Id must be between 3 and 50 characters!"),
    check("totalPrice")
        .isFloat({ min: 0 })
        .withMessage("Please Add valid total price number"),
    check("paidPrice")
        .isFloat({ min: 0 })
        .withMessage("Please Add valid paid price number"),
    check("remainingPrice")
        .isFloat({ min: 0 })
        .withMessage("Please Add valid remaining price number"),
    
    validator,
];