require("dotenv").config();
const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const cors = require("cors");

const productsRoutes = require("./routes/product-routes");
const CartRoutes = require("./routes/cart-routes");

const app = express();

app.use(cors());
app.use(bodyParser.json({ limit: "30mb" }));
app.use(bodyParser.urlencoded({ extended: true }));

const PORT = process.env.PORT || 5000;
const URI = process.env.MONGODB_DEV_URI;

mongoose
  .connect(URI, {
    useCreateIndex: true,
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useFindAndModify: false,
  })
  .then(() => {
    console.log("MongoDB Connection Success");
  })
  .catch((err) => {
    console.log("Connection Failed - " + err);
  });

app.use("/matrix/api/products", productsRoutes);
app.use("/matrix/api/cart", CartRoutes);

//event loop for server
app.listen(PORT, () => {
  console.log(`Backend Server is running on port ${PORT}`);
});
