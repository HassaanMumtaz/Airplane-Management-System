import React from "react";

import { ThemeProvider as MuiThemeProvider } from "@material-ui/core/styles";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";
const Confirmation = (props) => {
  const Continue = (e) => {
    e.preventDefault();
    props.nextStep();
  };

  const Previous = (e) => {
    e.preventDefault();
    props.prevStep();
  };

  return (
    <div className="pt-5 container " style={{ width: "40%" }}>
      <div className=" pt-5 pb-5 mt-5 mb-5 bg-white">
        <div className="pt-5 pb-5">
          <div className="pt-2 pb-5 text-center">
            <div>
              <h3>Your Booking Details are as follows </h3>
            </div>

            <div className="">
              <p>email: {props.values.email}</p>
              <p>firstname: {props.values.firstName}</p>
              <p>lastname: {props.values.lastName}</p>
              <p>to: {props.values.to}</p>
              <p>from: {props.values.from}</p>
              <p>Flight Number: {props.values.flight_no}</p>
              <p>Departure: {props.values.date_of_flight}</p>
            </div>

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
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Confirmation;
