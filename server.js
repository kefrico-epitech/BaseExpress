const express = require("express");
const bodyParser = require("body-parser");
const Note = require("./model/noteModel");
const cors = require("cors");
const noteRoutes = require('./routes/noteRoutes');

const app = express();
app.use(bodyParser.json());

app.use(cors());

app.use("/api", noteRoutes);
// app.use("/users", usersRoutes);


const PORT = 5010;
app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}`);
});
