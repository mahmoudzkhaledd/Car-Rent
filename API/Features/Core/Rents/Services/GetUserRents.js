const asyncHandeler = require('express-async-handler');
const Rent = require('../../../../Models/Rent');

exports.getUserRents = asyncHandeler(
    async (req, res, next) => {
        const userModel = res.locals.userModel;
        const rents = await Rent.find({
            userId: userModel.id,
        }).populate('carId', { images: 0 });
        res.status(200).json({ rents });
    }
)