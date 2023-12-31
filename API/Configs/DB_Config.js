const mongoose = require('mongoose');
const Team = require('../Models/Team')
module.exports = async function configDbConnection() {
    const url = process.env.MONGO_URL;
    mongoose.set("strictQuery", false);
    mongoose.connect(url, {
        useNewUrlParser: true,
        useUnifiedTopology: true,
    }).then(async () => {
        console.log("Connected To Database");
        // await Team.create({
        //     leader: "6578ab3606e6f7e2972c947b",
        //     name: "asdasdad",
        //     description: "",
        //     members: [],
        // })
    });
    

}