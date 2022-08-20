import React, { useState } from "react";

import { ThemeProvider as MuiThemeProvider } from "@material-ui/core/styles";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";
const Confirmation = (props) => {
  const [Del_Flight_No, setDel_Flight_No] = useState(0);
  const [Flight_No, setFlight_No] = useState(0);
  const [To, setTo] = useState("");
  const [From, setFrom] = useState("");
  const [DeptTime, setDeptTime] = useState("");
  const [ArrvTime, setArrvTime] = useState("");
  const [Distance, setDistance] = useState(0);
  const [ID, setID] = useState("");
  const [Capacity, setCapacity] = useState(0);
  const [Type, setType] = useState("");
  const [Company, setCompany] = useState("");
  const [City, setCity] = useState("");

  //   const handleflightChange = () => (e) => {
  //     console.log(e);
  //     setflight(e.target.value);

  //   };

  const Addflight = async () => {
    const message = await fetch("/addflight", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({
        Flight_No,
        To,
        From,
        DeptTime,
        ArrvTime,
        Distance,
        ID,
        Capacity,
        Type,
        Company,
        City,
      }),
    }).then((res) => res.json());
    console.log(message);
  };

  const Deleteflight = async () => {
    const message = await fetch("/deleteflight", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({
        Del_Flight_No,
      }),
    }).then((res) => res.json());
    console.log(message);
  };

  const Continue = (e) => {
    e.preventDefault();
    props.nextStep();
  };

  const Previous = (e) => {
    e.preventDefault();
    props.prevStep();
  };

  const Add = () => {
    console.log(
      Flight_No,
      To,
      From,
      DeptTime,
      ArrvTime,
      Distance,
      ID,
      Capacity,
      Type,
      Company,
      City
    );

    Addflight();
  };

  const Del = () => {
    Deleteflight();
  };

  return (
    <div className="pt-2 container " style={{ width: "40%" }}>
      <div className=" pb-5 mt-5 mb-5 bg-white">
        <div className=" ">
          <div className=" pt-3 text-center">
            <div>
              <h3>Edit Flights </h3>
            </div>

            <div>
              <h6>Add Flight</h6>
            </div>

            <div>
              <TextField
                placeholder="Flight Number"
                label="Flight Number"
                onChange={(e) => setFlight_No(e.target.value)}
                defaultValue={Flight_No}
              />

              <TextField
                placeholder="To"
                label="To"
                onChange={(e) => setTo(e.target.value)}
                defaultValue={To}
              />

              <TextField
                placeholder="From"
                label="From"
                onChange={(e) => setFrom(e.target.value)}
                defaultValue={From}
              />

              <TextField
                placeholder="DeptTime"
                label="DeptTime"
                onChange={(e) => setDeptTime(e.target.value)}
                defaultValue={DeptTime}
              />

              <TextField
                placeholder="ArrvTime"
                label="ArrvTime"
                onChange={(e) => setArrvTime(e.target.value)}
                defaultValue={ArrvTime}
              />

              <TextField
                placeholder="Distance"
                label="Distance"
                onChange={(e) => setDistance(e.target.value)}
                defaultValue={Distance}
              />

              <TextField
                placeholder="ID"
                label="ID"
                onChange={(e) => setID(e.target.value)}
                defaultValue={ID}
              />

              <TextField
                placeholder="Capacity"
                label="Capacity"
                onChange={(e) => setCapacity(e.target.value)}
                defaultValue={Capacity}
              />

              <TextField
                placeholder="Type"
                label="Type"
                onChange={(e) => setType(e.target.value)}
                defaultValue={Type}
              />

              <TextField
                placeholder="Company"
                label="Company"
                onChange={(e) => setCompany(e.target.value)}
                defaultValue={Company}
              />

              <TextField
                placeholder="City"
                label="City"
                onChange={(e) => setCity(e.target.value)}
                defaultValue={City}
              />
            </div>

            <div className="mt-4">
              <button type="button" class="btn btn-primary " onClick={Previous}>
                Previous
              </button>

              <button type="button" class="btn btn-primary " onClick={Add}>
                Add
              </button>
            </div>

            <div className="mt-2">
              <h6>Delete Flight</h6>
            </div>

            <div>
              <TextField
                placeholder="Flight Number"
                label="Flight Number"
                onChange={(e) => setDel_Flight_No(e.target.value)}
                defaultValue={Del_Flight_No}
              />
            </div>

            <div className="mt-4">
              <button type="button" class="btn btn-primary " onClick={Del}>
                Delete Flight
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Confirmation;
