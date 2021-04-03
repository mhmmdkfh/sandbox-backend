const { success, fail } = require("../../config/response");
const { User } = require("../../models");

exports.getUser = async(req,res) => {
    const data = await User.findAll();
    res.json(success({msg:"data user berhasil diterima", data}));
};

exports.createUser = async(req, res) => {
    try {
        const data = await User.create(req.body);
        res.json(success({msg:"data user berhasil ditambahkan", data}));   
    } catch (error) {
        res.json(fail({ msg: error }));
    }
};

exports.updateUser = async({body}, res) => {
    if (!body.id) res.json(fail({msg:"data id tidak ditemukan" }));
    try {
        const payload = body;

        const data = await User.update(payload, {
            where: {
                id: body.id,
            },
        });
        res.json(success({msg: "data user berhasil diubah", data}));
    } catch (error) {
        res.json(fail({ msg: error }));
    }
};

exports.deleteUser = async({body}, res) => {
    if (!body.id) res.json(fail({msg:"data id tidak ditemukan" }));
    try {
        const data = await User.destroy({
            where: {
                id: body.id,
            },
        });
        if (data) res.json(success({msg:"data user berhasil dihapus", data}));
        else res.json(fail({msg:"data user gagal dihapus", data}))
    } catch (error) {
        res.json(fail({ msg: error }));
    }
    
}