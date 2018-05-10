import React, { Component } from 'react';
// import logo from './logo.jpeg';
import './App.css';
import routes from './routes';
import {Link} from 'react-router-dom';


class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          {/* <img src={logo} className="App-logo" alt="logo" /> */}
           <div className="App-title ">
            Laos Shop
           </div>
        </header>
        {routes}
      </div>
    );
  }
}

export default App;
