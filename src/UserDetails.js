import React from "react";

import { ThemeProvider as MuiThemeProvider } from "@material-ui/core/styles";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";

const UserDetails = (props) => {
  const Continue = (e) => {
    e.preventDefault();
    props.nextStep();
  };

  return (
    <div className="pt-5 container " style={{ width: "40%" }}>
      <div className=" pt-5 pb-5 mt-5 mb-5 bg-white">
        <div className="pt-5 pb-5">
          <div className="pt-2 pb-5 text-center">
            <div>
              <h3>Book Your Flight </h3>
            </div>
            <div>
              <TextField
                placeholder="Email Address"
                label="Email Address"
                onChange={props.handleChange("email")}
                defaultValue={props.values.email}
              />
            </div>
            <div>
              {" "}
              <TextField
                placeholder="To"
                label="To"
                onChange={props.handleChange("to")}
                defaultValue={props.values.to}
              />
            </div>

            <div>
              <TextField
                placeholder="From"
                label="From"
                onChange={props.handleChange("from")}
                defaultValue={props.values.from}
              />
            </div>
            <div className="pt-4">
              <button type="button" class="btn btn-primary " onClick={Continue}>
                Next
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default UserDetails;
