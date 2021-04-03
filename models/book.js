'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Book extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({ Book, Order, Type_book }) {
      Book.hasMany(Order,{
        foreignKey: "book_id",
      });
      Book.belongsTo(Type_book);
      // define association here
    }
  };
  Book.init({
    id: { 
      type: DataTypes.INTEGER(11),
      autoIncrement: true,
      primaryKey: true,
    },
    name: {type: DataTypes.STRING(255), allowNull: false},
    type_book_id: { type: DataTypes.INTEGER(11), allowNull: false },
  }, {
    sequelize,
    modelName: 'Book',
    tableName: 'book',
  });
  return Book;
};