const { body, validationResult } = require("express-validator");
const { Book, Type_book } = require("../../models")
const { fail } = require("../../config/response");

exports.runValidation=(req,res,next) => {
    const errors = validationResult(req);
    if(!errors.isEmpty()) {
        res.status(400).json(fail({msg:errors.array()[0].msg }));
    }
    next();
};

exports.postValidator = [
    body("name")
    .notEmpty()
    .withMessage("nama buku tidak boleh kosong")
    .custom(async (value) => {
      const book = await Book.findOne({
        where: { name: value },
      });
      if (book) {
        return Promise.reject("nama buku sudah digunakan");
      }
    }),
    body("type_book_id", "type buku tidak boleh kosong")
    .notEmpty()
    .custom(async (value) => {
      const type_book_id = await Type_book.findOne({ where: { id: value } });
      if (!type_book_id) return Promise.reject("Tipe buku tidak tersedia");
    }),
];