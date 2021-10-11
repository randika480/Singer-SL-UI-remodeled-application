const express = require("express");
const router = express.Router();

const {
    createSellerProduct,
    getSellerProducts
} = require("../controllers/product-controller");


router.route("/addProducts").post(createSellerProduct);
router.route("/getProducts").get(getSellerProducts);

module.exports = router;