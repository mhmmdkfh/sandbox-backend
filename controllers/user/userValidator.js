const { body, validationResult } = require("express-validator");
const { User } = require("../../models")
const { fail } = require("../../config/response");

exports.runValidation=(req,res,next) => {
    const errors = validationResult(req);
    if(!errors.isEmpty()) {
        res.status(400).json(fail({msg:errors.array()[0].msg }));
    }
    next();
};

exports.postValidator = [
    body("name", "nama tidak boleh kosong").notEmpty(),
    body("address", "address tidak boleh kosong").notEmpty(),
    body("gender", "jenis kelamin tidak boleh kosong")
      .isIn(["M", "F"])
      .withMessage("jenis kelamin tidak sesuai"),
    body("phone")
    .notEmpty()
    .withMessage("phone tidak boleh kosong")
    .custom(async (value) => {
      const user = await User.findOne({
        where: { phone: value },
      });
      if (user) {
        return Promise.reject("Nomor telepon sudah digunakan");
      }
    }),
];