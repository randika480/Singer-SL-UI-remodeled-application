const CartModel = require("../models/cart-model");

//create new product
exports.createCart = async (req, res) => {
  const { name, imageUrl, price } = req.body;

  try {
    const product = await CartModel.create({
      name,
      imageUrl,
      price,
    });
    res.status(201).json(product);
  } catch (error) {
    res.status(409).json({
      success: false,
      desc: "Error in adding cart items",
      error: error.message,
    });
  }
};

exports.getCart = async (req, res) => {
  await CartModel.find().exec((error, cart) => {
    if (error) {
      return res.status(400).json({ error });
    }
    res.status(200).json({ cart });
  });
};
