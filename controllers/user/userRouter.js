const express = require("express");
const router = express.Router();
const { postValidator, runValidation } = require("./userValidator");
const { getUser, createUser, updateUser, deleteUser } = require("./userController");

router.get("/", getUser).post("/", postValidator, runValidation, createUser).put("/", postValidator, runValidation, updateUser).delete("/", deleteUser);



module.exports = router;