const { success,fail } = require("../../config/response");
const { Book } = require("../../models");

exports.getBook = async(req,res) => {
    const data = await Book.findAll();
    res.json(success({msg:"data buku berhasil diterima", data}));
};

exports.createBook = async(req, res) => {
    try {
        const data = await Book.create(req.body);
        res.json(success({msg:"data buku berhasil ditambahkan", data}));   
    } catch (error) {
        res.json(fail({ msg: error }));
    }
}

exports.updateBook = async({body}, res) => {
    if (!body.id) res.json(fail({msg:"data id tidak ditemukan" }));
    try {
        const payload1 = body;

        const data = await Book.update(payload1, {
            where: {
                id: body.id,
            },
        });
        res.json(success({msg:"data buku berhasil diubah", data}));
    } catch (error) {
        res.json(fail({ msg: error }));
    }
}

exports.deleteBook = async({body}, res) => {
    if (!body.id) res.json(fail({msg:"data id tidak ditemukan" }));
    try {
        const data = await Book.destroy({
            where: {
                id: body.id,
            },
        });
        if (data) res.json(success({msg:"data buku berhasil dihapus", data}));
        else res.json(fail({msg:"data buku gagal dihapus", data}))
    } catch (error) {
        res.json(fail({ msg: error }));
    }
}