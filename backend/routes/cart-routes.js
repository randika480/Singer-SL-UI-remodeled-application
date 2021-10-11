const express = require("express");
const router = express.Router();

const { createCart, getCart } = require("../controllers/cart-controller");

router.route("/createCart").post(createCart);
router.route("/getCart").get(getCart);

module.exports = router;
