import React from "react";
import "./AddressBar.css";

function AddressBar(props) {
  return (
    <div className="address-bar-container">
      <div className="address-bar">
        <h3 className="address-bar-address">
          Anklmaer strasse 9, Berlin, Germany
        </h3>
      </div>
    </div>
  );
}

export default AddressBar;
