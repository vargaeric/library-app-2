const { GraphQLString, GraphQLInt, GraphQLList } = require('graphql');
const crudOperations = require('../../sequelize/operations/crudOperations');
const Book = require('../../sequelize/models/book');
const {
    TimestampType,
    GenreEnumType,
    AgeRestrictionEnumType,
    BookType,
} = require('../types');

const queries = {
    findAllBooks: {
        type: GraphQLList(BookType),
        args: {
            id: { type: GraphQLInt },
            title: { type: GraphQLString },
            author: { type: GraphQLString },
            genre: { type: GenreEnumType },
            coverPhoto: { type: GraphQLString },
            description: { type: GraphQLString },
            pageNumber: { type: GraphQLInt },
            ageRestriction: { type: AgeRestrictionEnumType },
            rentalDate: { type: TimestampType },
            rentedByUserId: { type: GraphQLInt },
            addedByUserId: { type: GraphQLInt },
        },
        resolve: (parent, args) => crudOperations(Book).findAll(args),
    },
};

const mutations = {
    createBook: {
        type: BookType,
        args: {
            title: { type: GraphQLString },
            author: { type: GraphQLString },
            genre: { type: GenreEnumType },
            coverPhoto: { type: GraphQLString },
            description: { type: GraphQLString },
            pageNumber: { type: GraphQLInt },
            ageRestriction: { type: AgeRestrictionEnumType },
            rentalDate: { type: TimestampType },
            rentedByUserId: { type: GraphQLInt },
            addedByUserId: { type: GraphQLInt },
        },
        resolve: (parent, args) => crudOperations(Book).create(args),
    },
    editBook: {
        type: BookType,
        args: {
            id: { type: GraphQLInt },
            title: { type: GraphQLString },
            author: { type: GraphQLString },
            genre: { type: GenreEnumType },
            coverPhoto: { type: GraphQLString },
            description: { type: GraphQLString },
            pageNumber: { type: GraphQLInt },
            ageRestriction: { type: AgeRestrictionEnumType },
            rentalDate: { type: TimestampType },
            rentedByUserId: { type: GraphQLInt },
            addedByUserId: { type: GraphQLInt },
            userId: { type: GraphQLInt },
        },
        resolve: (parent, args) => crudOperations(Book).edit(args),
    },
    removeBook: {
        type: BookType,
        args: {
            id: { type: GraphQLInt },
        },
        resolve: (parent, args) => crudOperations(Book).remove(args),
    },
};

module.exports = {
    queries,
    mutations,
};
