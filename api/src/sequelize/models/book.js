const Sequelize = require('sequelize');
const sequelize = require('../database/connection');

const Book = sequelize.define('book', {
    id: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    title: {
        type: Sequelize.STRING(100),
        allowNull: false,
    },
    author: {
        type: Sequelize.STRING(30),
        allowNull: false,
    },
    genre: {
        type: Sequelize.ENUM,
        values: [
            'fantasy',
            'sci-fi',
            'western',
            'romance',
            'thriller',
            'mystery',
        ],
        allowNull: false,
    },
    coverPhoto: {
        type: Sequelize.STRING(200),
    },
    description: {
        type: Sequelize.STRING(2000),
        allowNull: false,
    },
    pageNumber: {
        type: Sequelize.INTEGER(11),
    },
    ageRestriction: {
        type: Sequelize.ENUM,
        values: ['child', 'teen', 'adult'],
    },
    rentalDate: {
        type: Sequelize.DATE,
    },
    addedByUserId: {
        type: Sequelize.INTEGER(11),
        allowNull: false,
    },
});

module.exports = Book;
