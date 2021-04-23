const {DataTypes} = require("sequelize");
const instance = require("../connection");

const task = instance.sequelize.define("tasks", {
    taskID:{
        type: DataTypes.BIGINT,
        autoIncrement: true,
        primaryKey: true,
      },
      taskDesc:{
        type: DataTypes.STRING,
      },
      status:{
        type: DataTypes.ENUM('Complete','Incomplete'),
      }
    },{
        createdAt:true,
        updatedAt:true,
        completedAt: true,
        deletedAt:true,
        tableName: "tasks"
    }

)

exports.model = task;