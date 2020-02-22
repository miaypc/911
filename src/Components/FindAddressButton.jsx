import React from "react";
import "./FindAddressButton.css";
import Compass from "./Images/Compass.svg";

function FindAddressButton() {
  return (
    <div className="find-address-button-container">
      <button
        className="find-address-button"
        type="submit"
        id="find-your-address"
        value="Submit"
      >
        <img
          className="find-address-button-compass"
          src={Compass}
          alt="compass"
        />
        <p className="find-address-button-title">Find your address</p>
      </button>
    </div>
  );
}

export default FindAddressButton;
