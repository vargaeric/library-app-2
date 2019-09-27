const Sequelize = require('sequelize');
const sequelize = require('../database/connection');

const User = sequelize.define('user', {
    id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    username: {
        type: Sequelize.STRING(12),
        allowNull: false,
    },
    password: {
        type: Sequelize.STRING(30),
        allowNull: false,
    },
    age: {
        type: Sequelize.INTEGER(7),
        allowNull: false,
    },
    fullName: {
        type: Sequelize.STRING(30),
    },
    email: {
        type: Sequelize.STRING(30),
    },
    telephoneNr: {
        type: Sequelize.STRING(15),
    },
});

module.exports = User;
