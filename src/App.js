import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "./index.css";
import SignUp from "./SignUp";
function App() {
  return (
    <div className="background">
      {/* {returnedData}
      <button onClick={() => getData("/quit")}> click</button> */}
      <SignUp />
      {/* {console.log("sad", returnedData[0][0])} */}
    </div>
  );
}

export default App;
