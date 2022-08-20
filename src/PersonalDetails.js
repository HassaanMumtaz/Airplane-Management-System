import React, { useState, useEffect } from "react";

import { ThemeProvider as MuiThemeProvider } from "@material-ui/core/styles";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";
// import { getairport } from "../../database/operationdb";

const PersonalDetails = (props) => {
  const [airportData, setairportData] = useState("");
  const [airport, setairport] = useState({
    CODE: "",
    NAME: "",
    CITY: "",
    ADDRESS: "",
    COUNTRY: "",
    TERMINALS: 0,
    CAPACITY: 0,
  });

  const [flight, setflight] = useState({
    FLIGHT_NO: 0,
    TO: "",
    FROM: "",
    DEPARTURE_DATETIME: "",
    ARRIVAL_DATETIME: "",
    DISTANCE: 0,
    ID: "",
  });

  const getairport = async () => {
    const newData = await fetch("/getairport", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({ code: props.values.code }),
    }).then((res) => res.json());
    console.log(newData);
    setairport(newData[0]);
    console.log("airport", airport);
  };

  const getflight = async () => {
    const newData = await fetch("/getflight", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({ to: props.values.to, from: props.values.from }),
    }).then((res) => res.json());
    console.log(newData);
    setflight(newData[0]);
    console.log("flight", flight);
  };

  const createairport = async () => {
    const newData = await fetch("/createairport", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({ ...airport }),
    }).then((res) => res.json());
    console.log(newData);
    setairportData(newData[0]);
  };

  const Continue = (e) => {
    e.preventDefault();
    props.values.flight_no = flight.ID;
    props.values.date_of_flight = flight.DEPARTURE_DATETIME;
    props.values.arrival_of_flight = flight.ARRIVAL_DATETIME;
    props.nextStep();
  };

  const Previous = (e) => {
    e.preventDefault();
    props.prevStep();
  };

  return (
    <div className="pt-2 container " style={{ width: "40%" }}>
      <div className=" pt-2 pb-5 mt-5 mb-5 bg-white">
        <div className="pt-5 pb-5">
          <div className=" pb-5 text-center">
            <div>
              <h3>Book Your Flight </h3>
            </div>
            <div>
              <TextField
                placeholder="First Name"
                label="First Name"
                onChange={props.handleChange("firstName")}
                defaultValue={props.values.firstName}
              />
            </div>
            <div>
              {" "}
              <TextField
                placeholder="Last Name"
                label="Last Name"
                onChange={props.handleChange("lastName")}
                defaultValue={props.values.lastName}
              />
            </div>
            <div>
              {" "}
              <TextField
                placeholder="departure"
                label="departure"
                onChange={props.handleChange("date_of_flight")}
                defaultValue={props.values.date_of_flight}
              />
            </div>
            <TextField
              placeholder="Flight_NO"
              label="Flight_NO"
              onChange={props.handleChange("flight_no")}
              defaultValue={props.values.flight_no}
            />
            <div className="mt-4">
              <button type="button" class="btn btn-primary " onClick={Previous}>
                Previous
              </button>
              <button
                type="button"
                class="btn btn-primary mx-1"
                onClick={Continue}
              >
                Next
              </button>
              <button
                type="button"
                class="btn btn-primary mx-1"
                onClick={getflight}
              >
                Show Available Flight
              </button>
              {/* <button
                type="button"
                class="btn btn-primary mx-1"
                onClick={getairport}
              >
                Show Available
              </button> */}
            </div>
            {/* <div>
              <ul>
                <li>Code: {airport.CODE}</li>
                <li>Name: {airport.NAME}</li>
                <li>Age: {airport.ADDRESS}</li>
                <li>City: {airport.CITY}</li>
                <li>Country: {airport.COUNTRY}</li>
                <li>Terminal: {airport.TERMINALS}</li>
                <li>Capacity: {airport.CAPACITY}</li>
              </ul>
            </div> */}
            <div>
              <div className="pt-1"></div>
              <div className="pt-1 text-center">
                <ul>To: {flight.TO}</ul>
                <ul>From: {flight.FROM}</ul>
                <ul>Departure Date: {flight.DEPARTURE_DATETIME}</ul>
                <ul>Arrival Date: {flight.ARRIVAL_DATETIME}</ul>
                <ul>Distance: {flight.DISTANCE}</ul>
                <ul>Flight Number: {flight.ID}</ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    // <div>
    //   <TextField
    //     placeholder="First Name"
    //     label="First Name"
    //     onChange={props.handleChange("firstName")}
    //     defaultValue={props.values.firstName}
    //   />

    //   <TextField
    //     placeholder="Last Name"
    //     label="Last Name"
    //     onChange={props.handleChange("lastName")}
    //     defaultValue={props.values.lastName}
    //   />

    //   <TextField
    //     placeholder="Country"
    //     label="Country"
    //     onChange={props.handleChange("country")}
    //     defaultValue={props.values.country}
    //   />
    //   <Button onClick={Continue}>Next</Button>
    //   <button onClick={Previous}>Previous</button>
    // </div>
  );
};

export default PersonalDetails;
