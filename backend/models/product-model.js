const mongoose = require("mongoose");

const ProductSchema = new mongoose.Schema({
    name:{
        type:String,
        required:true
    },
    description: {
        type:String,

    },
    imageUrl:{
        type:String,
    },
    price:{
        type:Number,
    },
   
});

const Product = mongoose.model("product",ProductSchema);
module.exports = Product;