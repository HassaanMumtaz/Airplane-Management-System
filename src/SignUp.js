import React, { Component } from "react";
import UserDetails from "./UserDetails";
import PersonalDetails from "./PersonalDetails";
import Confirmation from "./Confirmation";
import Success from "./Success";
export default class Hello extends Component {
  state = {
    step: 1,
    email: "",
    to: "",
    from: "",
    firstName: "",
    lastName: "",
    flight_no: "",
    date_of_flight: "",
    arrival_of_flight: "",
  };

  // go back to previous step
  prevStep = () => {
    const { step } = this.state;
    this.setState({ step: step - 1 });
  };

  // proceed to the next step
  nextStep = () => {
    const { step } = this.state;
    this.setState({ step: step + 1 });
  };

  // handle field change
  handleChange = (input) => (e) => {
    this.setState({ [input]: e.target.value });
  };

  render() {
    const { step } = this.state;
    const {
      email,
      to,
      from,
      firstName,
      lastName,
      flight_no,
      date_of_flight,
      arrival_of_flight,
    } = this.state;
    const values = {
      email,
      to,
      from,
      firstName,
      lastName,
      date_of_flight,
      arrival_of_flight,
      flight_no,
    };
    switch (step) {
      case 1:
        return (
          <UserDetails
            nextStep={this.nextStep}
            handleChange={this.handleChange}
            values={values}
          />
        );
      case 2:
        return (
          <PersonalDetails
            prevStep={this.prevStep}
            nextStep={this.nextStep}
            handleChange={this.handleChange}
            values={values}
          />
        );
      case 3:
        return (
          <Confirmation
            prevStep={this.prevStep}
            nextStep={this.nextStep}
            values={values}
          />
        );
      case 4:
        return (
          <Success
            prevStep={this.prevStep}
            nextStep={this.nextStep}
            values={values}
          />
        );
      // never forget the default case, otherwise VS code would be mad!
      default:
      // do nothing
    }
  }
}
