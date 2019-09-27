const {
    GraphQLObjectType,
    GraphQLInt,
    GraphQLString,
    GraphQLEnumType,
    GraphQLScalarType,
} = require('graphql');
const { Kind } = require('graphql/language');

const TimestampType = new GraphQLScalarType({
    name: 'Timestamp',
    serialize(date) {
        return (date instanceof Date) ? date.getTime() : null;
    },
    parseValue(date) {
        try {
            return new Date(value);
        } catch (error) {
            return null;
        }
    },
    parseLiteral(ast) {
        if (ast.kind === Kind.INT) {
            return new Date(parseInt(ast.value, 10));
        }

        if (ast.kind === Kind.STRING) {
            return this.parseValue(ast.value);
        }

        return null;
    },
});

const GenreEnumType = new GraphQLEnumType({
    name: 'GenreEnumType',
    values: {
        fantasy: { value: 'fantasy' },
        scifi: { value: 'sci-fi' },
        western: { value: 'western' },
        romance: { value: 'romance' },
        thriller: { value: 'thriller' },
        mystery: { value: 'mystery' },
    },
});

const AgeRestrictionEnumType = new GraphQLEnumType({
    name: 'AgeRestrictionEnumType',
    values: {
        child: { value: 'child' },
        teen: { value: 'teen' },
        adult: { value: 'adult' },
    },
});

const UserType = new GraphQLObjectType({
    name: 'User',
    fields: {
        id: { type: GraphQLInt },
        username: { type: GraphQLString },
        password: { type: GraphQLString },
        fullName: { type: GraphQLString },
        age: { type: GraphQLInt },
    },
});

const BookType = new GraphQLObjectType({
    name: 'Book',
    fields: {
        id: { type: GraphQLInt },
        title: { type: GraphQLString },
        author: { type: GraphQLString },
        genre: { type: GenreEnumType },
        coverPhoto: { type: GraphQLString },
        pageNumber: { type: GraphQLInt },
        ageRestriction: { type: AgeRestrictionEnumType },
        rentalDate: { type: TimestampType },
    },
});

module.exports = {
    TimestampType,
    GenreEnumType,
    AgeRestrictionEnumType,
    UserType,
    BookType,
};
