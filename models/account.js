const {DataTypes} = require("sequelize");
const instance = require("../connection");

const account = instance.sequelize.define("accounts", {
    id:{
        type: DataTypes.BIGINT,
        autoIncrement: true,
        primaryKey: true,
      },
      code:{
        type: DataTypes.STRING,
      },
      username:{
        type: DataTypes.STRING,
        unique: true,
      },
      password:{
        type:DataTypes.STRING,
      }
    },{
        createdAt:true,
        updatedAt: true,
        deletedAt: true,
        tableName: "accounts"
    }

)

exports.model = account;