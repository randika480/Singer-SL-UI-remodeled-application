const ProductModel = require("../models/product-model");

//create new product
exports.createSellerProduct = async (req, res) => {
    const {
      name,
      description,
      imageUrl,
      price,
    } = req.body;

    try {
      const product = await ProductModel.create({
        name,
        description,
        imageUrl,
        price,
      });
      res.status(201).json(product);
    } catch (error) {
      res.status(409).json({
        success: false,
        desc: "Error in adding product",
        error: error.message,
      });
    }
  };

  exports.getSellerProducts = async (req, res) => {
    await ProductModel.find().exec(
      (error, products) => {
        if (error) {
          return res.status(400).json({ error });
        }
        res.status(200).json({ products });
      }
    );
  };