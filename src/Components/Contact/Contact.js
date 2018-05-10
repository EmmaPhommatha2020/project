import React, {Component} from "react";
import Nav from "./../Nav/Nav";
import "./Contact.css";




export default class Contact extends Component{
 
    render(){
        return(
            <div>
                <Nav />
                <div className="contact-info">
                    <p> Phone: 303-112-2233 </p>
                    <p> E-mail: laos-shop@gmail.com </p>
                </div>
            </div>
        )
    }
}