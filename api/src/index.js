const express = require('express');
const graphqlHTTP = require('express-graphql');
const cors = require('cors');
const schema = require('./graphql/schemas');
const userBookAssociation = require('./sequelize/operations/userBookAssociation');

const app = express();

const PORT = 3000;

app.use(cors());
app.use('/graphql', graphqlHTTP({
    schema,
    graphiql: true,
}));

userBookAssociation();

app.use('/', (req, res) => {
    res.send('Hello Erik!');
});

app.listen(PORT, () => {
    console.log(`You are currently listening to port nr.${PORT}...`);
});
