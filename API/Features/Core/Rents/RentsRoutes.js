const appRouter = require('express').Router();
const { rentCar } = require('./Services/RentCar');
const { getUserRents } = require('./Services/GetUserRents');
const { getRent } = require('./Services/GetRent');
const { editRent } = require('./Services/EditRent');

appRouter.get('/', getUserRents);
appRouter.route('/:id').get(getRent).put(editRent);
appRouter.post('/cars/:id/rent', rentCar);

module.exports = appRouter;  