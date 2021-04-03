'use strict';
const {
  Model, Sequelize
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({ User, Order }) {
      User.hasMany(Order,{
        foreignKey: "user_id",
      });
      // define association here
    }
  };
  User.init({
    id: { 
      type: DataTypes.INTEGER(11),
      autoIncrement: true,
      primaryKey: true,
    },
    name: {type:DataTypes.STRING(255), allowNull: false},
    address: {type:DataTypes.STRING(255), allowNull: false},
    phone: {type:DataTypes.STRING(255), allowNull: false},
    gender: {type:DataTypes.STRING(10), allowNull: false},
  }, {
    sequelize,
    modelName: 'User',
    tableName: 'user',
  });
  return User;
};