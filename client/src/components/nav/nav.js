import React from 'react';
import { Link } from 'react-router-dom';
import './nav.css';

const Nav = () => (
    <nav className="nav flexContainer">
        <div className="oneButton">
            <Link to="/allbooks">All Books</Link>
        </div>
        <div className="flexContainer">
            <div className="oneButton">
                <Link to="/rentedbooks">Rented Books</Link>
            </div>
            <div className="oneButton">
                <Link to="/mybooks">My Books</Link>
            </div>
            <div className="oneButton">
                <Link to="/myaccount">My Account</Link>
            </div>
        </div>
    </nav>
);

export default Nav;
