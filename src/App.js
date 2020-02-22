import React from "react";
import "./App.css";
import Map from "./Components/Map";
import FindAddressButton from "./Components/FindAddressButton";
import AddressBar from "./Components/AddressBar";
import CallButton from "./Components/CallButton";

function App() {
  return (
    <div>
      <AddressBar />
      {/* <FindAddressButton /> */}
      <Map />
      <CallButton />/
    </div>
  );
}

export default App;
