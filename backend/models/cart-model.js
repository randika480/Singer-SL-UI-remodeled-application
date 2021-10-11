const mongoose = require("mongoose");

const CartSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  price: {
    type: String,
  },
  imageUrl: {
    type: String,
  },
});

const Cart = mongoose.model("cart", CartSchema);
module.exports = Cart;
