const express = require("express");
const router = express.Router();
const { postValidator, runValidation } = require("./bookValidator");
const { getBook, createBook, updateBook, deleteBook } = require("./bookController");

router.get("/", getBook).post("/", postValidator, runValidation, createBook).put("/", postValidator, runValidation, updateBook).delete("/", deleteBook);

module.exports = router;