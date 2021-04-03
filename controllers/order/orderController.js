const { success,fail } = require("../../config/response");
const { Order, User, Book, Type_book, sequelize } = require("../../models");

exports.createOrder = async(req, res) => {
    if (!req.body.Order) return res.json(fail({ msg: "data order tidak boleh kosong" }));
    const order = req.body.Order;
    const payload2 = order.map((order) => ({
        user_id: order.user_id,
        book_id: order.book_id,
        qty: order.qty,
    }));
    try {
        const data = await Order.bulkCreate(payload2);
        res.json(success({msg:"data order berhasil ditambahkan", data}));   
    } catch (error) {
        res.json(fail({ msg: error }));
    }
}

exports.getOrder = async(req, res) => {
    try {
        const data = await User.findAll({
          attributes: ["name", "phone"],
          group: ["id", "book_id"],
          order: [
            "name",
            [sequelize.fn("sum", sequelize.col("qty")), "DESC"],
          ],
          include: [
            {
              model: Order,
              attributes: [
                [sequelize.fn("sum", sequelize.col("qty")), "qty"],
              ],
              include: {
                model: Book,
                attributes: ["name"],
                include: { model: Type_book, attributes: ["name"] },
              },
            },
          ],
        });
        return res.json(success({ msg: "data berhasil ditemukan", data }));
      } catch (error) {
        res.json(fail({ msg: error }));
      }
}