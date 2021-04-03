'use strict';
const {
  Model, Sequelize
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Order extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({ User, Order, Book}) {
      Order.belongsTo(User);
      Order.belongsTo(Book);
      // define association here
    }
  };
  Order.init({
    id: { 
      type: DataTypes.INTEGER(11),
      autoIncrement: true,
      primaryKey: true,
    },
    qty: { type: DataTypes.INTEGER(11), allowNull: false },
    order_at: { type:DataTypes.DATE, defaultValue: sequelize.Now , allowNull: false },
    user_id: { type: DataTypes.INTEGER(11), allowNull: false },
    book_id: { type: DataTypes.INTEGER(11), allowNull: false },
  }, {
    sequelize,
    modelName: 'Order',
    tableName: 'order',
  });
  return Order;
};