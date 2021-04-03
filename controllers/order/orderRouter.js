const express = require("express");
const router = express.Router();
const { getOrder, createOrder } = require("./orderController");

router.get("/", getOrder).post("/", createOrder);

module.exports = router;