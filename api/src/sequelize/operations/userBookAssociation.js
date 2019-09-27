const sequelize = require('../database/connection');
const User = require('../models/user');
const Book = require('../models/book');

const userBookAssociation = () => {
    User.hasMany(Book, { foreignKey: 'rentedByUserId' });
    User.hasMany(Book, { foreignKey: 'addedByUserId' });

    sequelize.sync();
};

module.exports = userBookAssociation;
