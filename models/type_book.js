'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Type_book extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({ Type_book, Book }) {
      Type_book.hasMany(Book,{
        foreignKey: "type_book_id",
      })
      // define association here
    }
  };
  Type_book.init({
    id: { 
      type: DataTypes.INTEGER(11),
      autoIncrement: true,
      primaryKey: true,
    },
    name: { type:DataTypes.STRING(255), allowNull: false },
  }, {
    sequelize,
    modelName: 'Type_book',
    tableName: 'type_book',
  });
  return Type_book;
};