import React, { Component } from "react";
import "./Nav.css";
import { Link } from "react-router-dom";
import {} from "material-design-icons";
import { connect } from "react-redux";
import Login from "./../Login/Login";

class Nav extends Component {
  constructor() {
    super();
    this.state = {

    };
  }
  render() {
    if (this.props.loggedIn === false) {
      var areYouLoggedIn = "Login";
    } else {
      var areYouLoggedIn = "Logout";
    }
    return (
      <div id= "navbar" className="sticky">
        <Link to="/">
           <div className="home-container">
            Home
           </div>
        </Link>
       <Link to="/login" className="login">
         <div className="login">
          <a href={process.env.REACT_APP_LOGIN}>{areYouLoggedIn}</a>
         </div>
        </Link>
          <Link to="/shopping" className="shopping">
            Shop 
          </Link>
        <div className="cart-container">
          <Link to="/cart" className="cart-word">
            Cart
          </Link>
        </div>
        <div className="contact-container">
          <Link to="/contact" className="contact-word">
            Contact
          </Link>
          </div>
      </div>
    );
  }
}

function mapStateToProps(state) {
  var { loggedIn } = state;
  return {
    loggedIn
  };
}

export default connect(mapStateToProps)(Nav);
