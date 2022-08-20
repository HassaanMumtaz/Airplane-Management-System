const express = require("express");
const cors = require("cors");
const operationdb = require("./database/operationdb");
const API_PORT = process.env.PORT || 5000;
const app = express();
app.use(express.json());
app.use(express.urlencoded());
app.use(cors());

app.post("/getairport", async (req, res) => {
  const result = await operationdb.getairport(req.body.code);
  console.log("getairport api called");
  res.send(result.recordset);
});

app.post("/getflight", async (req, res) => {
  const result = await operationdb.getflight(req.body.to, req.body.from);
  console.log("get api called");
  res.send(result.recordset);
});

app.post("/addflight", async (req, res) => {
  const result = await operationdb.addflight(
    +req.body.Flight_No,
    req.body.To,
    req.body.From,
    req.body.DeptTime,
    req.body.ArrvTime,
    +req.body.Distance,
    req.body.ID,
    +req.body.Capacity,
    req.body.Type,
    req.body.Company,
    req.body.City
  );
  console.log("get api called");
  res.send(result.recordset);
});

app.post("/deleteflight", async (req, res) => {
  const result = await operationdb.deleteflight(+req.body.Del_Flight_No);
  console.log("delete api called");
  res.send(result.recordset);
});

app.post("/createairport", async (req, res) => {
  console.log("create api called");
  await operationdb.createairport(req.body);
  const result = await operationdb.getairport(req.body.name);
  res.send(result.recordset);
});

// app.get("/air", function (req, res) {
//   console.log(airports_list);
//   res.send({ result: airports_list });
// });

// app.get("/quit", function (req, res) {
//   console.log("called quit");
//   res.send({ result: "Goodbye" });
// });

app.listen(API_PORT, () => console.log(`Listening on Port ${API_PORT}`));
