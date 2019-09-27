import React, { Component } from 'react';
import { HashRouter } from 'react-router-dom';
import './app.css';
import Nav from '../nav/nav';
import Main from '../main/main';
import Footer from '../footer/footer';

class App extends Component {
    render() {
        return (
            <div className="app flexContainerColumn">
                <HashRouter>
                    <Nav />
                    <Main />
                </HashRouter>
                <Footer />
            </div>
        );
    }
}

export default App;
