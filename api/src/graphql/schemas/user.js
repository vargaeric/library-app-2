const { GraphQLString, GraphQLInt, GraphQLList } = require('graphql');
const crudOperations = require('../../sequelize/operations/crudOperations');
const User = require('../../sequelize/models/user');
const { UserType } = require('../types');

const queries = {
    findAllUser: {
        type: GraphQLList(UserType),
        args: {
            id: { type: GraphQLInt },
            username: { type: GraphQLString },
            password: { type: GraphQLString },
            age: { type: GraphQLInt },
            fullName: { type: GraphQLString },
            email: { type: GraphQLString },
            telephoneNr: { type: GraphQLString },
        },
        resolve: (parent, args) => crudOperations(User).findAll(args),
    },
};

const mutations = {
    createUser: {
        type: UserType,
        args: {
            username: { type: GraphQLString },
            password: { type: GraphQLString },
            age: { type: GraphQLInt },
            fullName: { type: GraphQLString },
            email: { type: GraphQLString },
            telephoneNr: { type: GraphQLString },
        },
        resolve: (parent, args) => crudOperations(User).create(args),
    },
    editUser: {
        type: UserType,
        args: {
            id: { type: GraphQLInt },
            username: { type: GraphQLString },
            password: { type: GraphQLString },
            age: { type: GraphQLInt },
            fullName: { type: GraphQLString },
            email: { type: GraphQLString },
            telephoneNr: { type: GraphQLString },
        },
        resolve: (parent, args) => crudOperations(User).edit(args),
    },
    removeUser: {
        type: UserType,
        args: {
            id: { type: GraphQLInt },
        },
        resolve: (parent, args) => crudOperations(User).remove(args),
    },
};

module.exports = {
    queries,
    mutations,
};
