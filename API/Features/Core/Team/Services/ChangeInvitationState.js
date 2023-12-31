const asyncHandeler = require('express-async-handler');
const Team = require('../../../../Models/Team');
const Invitation = require('../../../../Models/Invitation');
const ObjectId = require('mongoose').Types.ObjectId


exports.changeInvState = asyncHandeler(
    async (req, res, next) => {
        const userModel = res.locals.userModel;
        const invId = req.params.id;
        if (!ObjectId.isValid(invId)) {
            return res.sendStatus(404);
        }
        const { accept } = req.body;
        const ans = await Invitation.deleteOne({
            userId: userModel.id,
            _id: invId,
        });
        if (ans.deletedCount == 0) {
            return res.sendStatus(404);
        }
        if (accept) {
            await Team.updateOne({
                $push: {
                    members: userModel.id,
                },
            });
        }
        res.sendStatus(200);
    }
)