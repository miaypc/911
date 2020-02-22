import React from "react";
import mapboxgl from "mapbox-gl";
import "./Map.css";

mapboxgl.accessToken =
  "pk.eyJ1IjoibWlhYW5kYW50aG9ueSIsImEiOiJjazZ4amN6bnkwbTJsM2xtdnliMTF0Y3ZhIn0.HT3szSG6szu0jGX09YfoZw";

class Map extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      lng: 5,
      lat: 34,
      zoom: 2
    };
  }
  componentDidMount() {
    const map = new mapboxgl.Map({
      container: this.mapContainer,
      style: "mapbox://styles/mapbox/streets-v11",
      center: [this.state.lng, this.state.lat],
      zoom: this.state.zoom
    });
  }
  render() {
    return (
      <div>
        <div ref={el => (this.mapContainer = el)}></div>
      </div>
    );
  }
}

export default Map;
