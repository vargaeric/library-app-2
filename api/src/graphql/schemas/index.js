const { GraphQLSchema, GraphQLObjectType } = require('graphql');
const userSchemas = require('./user');
const bookSchemas = require('./book');

const schema = new GraphQLSchema({
    query: new GraphQLObjectType({
        name: 'RootQueryType',
        fields: {
            ...userSchemas.queries,
            ...bookSchemas.queries,
        },
    }),
    mutation: new GraphQLObjectType({
        name: 'RootMutationType',
        fields: {
            ...userSchemas.mutations,
            ...bookSchemas.mutations,
        },
    }),
});

module.exports = schema;
