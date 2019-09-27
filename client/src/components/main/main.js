import React from 'react';
import { Route } from 'react-router-dom';
import './main.css';
import AllBooks from '../allBooks/allBooks';
import MyBooks from '../myBooks/myBooks';
import MyAccount from '../myAccount/myAccount';

const Main = () => (
    <main className="main">
        <Route exact path="/allbooks" component={AllBooks} />
        <Route exact path="/mybooks" component={MyBooks} />
        <Route exact path="/myaccount" component={MyAccount} />
    </main>
);

export default Main;
