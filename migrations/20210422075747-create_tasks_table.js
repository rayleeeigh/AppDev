'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable("tasks", {
      taskID:{
        type: Sequelize.BIGINT,
        autoIncrement: true,
        primaryKey: true,
        allowNull: true
      },
      taskDesc:{
        type: Sequelize.STRING,
        allowNull: false,
      },
      status:{
        type: Sequelize.ENUM('Complete','Incomplete'),
        allowNull: false
      },
      createdAt:{
        type: Sequelize.DATE,
        allowNull:false
      },
      completedAt:{
        type: Sequelize.DATE
      },
      updatedAt:{
        type: Sequelize.DATE
      },
      deletedAt:{
        type: Sequelize.DATE
      }
    })
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable("tasks");
  }
};
