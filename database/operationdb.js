const config = require("./configdb");
const sql = require("mssql");

const getairport = async (code) => {
  try {
    let pool = await sql.connect(config);
    let airports = pool
      .request()
      .query(`SELECT * FROM AIRPORT WHERE CODE = '${code}'`);
    console.log("operation", airports);
    return airports;
  } catch (error) {
    console.log(error);
  }
};

const getflight = async (to, from) => {
  try {
    let pool = await sql.connect(config);
    let flight = pool
      .request()
      .query(`select * from FLIGHT where "TO" = '${to}' and "FROM"='${from}'`);
    console.log("operation", flight);
    return flight;
  } catch (error) {
    console.log(error);
  }
};

const addflight = async (
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
) => {
  try {
    let pool = await sql.connect(config);
    let message = pool.request()
      .query(`New_Flight '${Flight_No}','${To}','${From}','${DeptTime}','${ArrvTime}',${Distance},'${ID}',${Capacity},'${Type}','${Company}','${City}'
      `);
    console.log("operation", message);
    return message;
  } catch (error) {
    console.log("hiiii");
  }
};

const deleteflight = async (Del_Flight_No) => {
  try {
    let pool = await sql.connect(config);
    let message = pool
      .request()
      .query(`Delete from FLIGHT where FLIGHT_NO = ${Del_Flight_No}`);
    console.log("operation", message);
    return message;
  } catch (error) {
    console.log("hiiii");
  }
};

const createairport = async (airport) => {
  try {
    let pool = await sql.connect(config);
    let airports = pool
      .request()
      .query(
        `INSERT INTO AIRPORT VALUES ('${airport.CODE}','${airport.NAME}','${airport.CITY}','${airport.ADDRESS}','${airport.COUNTRY}',${airport.TERMINAL},${airport.CAPACITY})`
      );
    console.log(airports);
    return airports;
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  getairport,
  createairport,
  getflight,
  addflight,
  deleteflight,
};
