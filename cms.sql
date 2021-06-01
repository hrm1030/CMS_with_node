/*
 Navicat Premium Data Transfer

 Source Server         : localhost_27017
 Source Server Type    : MongoDB
 Source Server Version : 40404
 Source Host           : localhost:27017
 Source Schema         : cms

 Target Server Type    : MongoDB
 Target Server Version : 40404
 File Encoding         : 65001

 Date: 01/06/2021 10:57:23
*/


// ----------------------------
// Collection structure for categories
// ----------------------------
db.getCollection("categories").drop();
db.createCollection("categories");

// ----------------------------
// Documents of categories
// ----------------------------
db.getCollection("categories").insert([ {
    _id: ObjectId("60b4f367705ba95c4813c999"),
    name: "23424sdfsdf45sdf2sfasd",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for industries
// ----------------------------
db.getCollection("industries").drop();
db.createCollection("industries");

// ----------------------------
// Documents of industries
// ----------------------------
db.getCollection("industries").insert([ {
    _id: ObjectId("60b4f37c705ba95c4813c99a"),
    name: "Insurrance",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for posts
// ----------------------------
db.getCollection("posts").drop();
db.createCollection("posts");

// ----------------------------
// Documents of posts
// ----------------------------
db.getCollection("posts").insert([ {
    _id: ObjectId("60b4f351705ba95c4813c998"),
    "category_id": "23424sdfsdf45sdf2sfasd",
    content: "sdfsfsfsfdsasfsdfsadfdsafdsafdsafas",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("60b63a7ad2a7ea368cf9cf0a"),
    name: "Dmitriy",
    surname: "Lotov",
    phone: "+7501458786",
    email: "hrm.2021@outlook.com",
    password: "$2a$08$XjjDIqTWHOBTP4mnPiG2XuBAL69sLQ9RUnuwh.yF2iINgubXTlRre",
    membership: NumberInt("0"),
    "created_at": ISODate("2021-06-01T00:00:02.021Z"),
    permission: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60b63ba3293bfe3038d14366"),
    name: "Wilson",
    surname: "Liv",
    phone: "+45421245",
    email: "wilson@mail.ru",
    password: "$2a$08$cPfOoQIJR3g3.aJ/pMmWguSLIIRT5L5ZgM6MKlTlVdtbVvDBRZYam",
    membership: NumberInt("0"),
    "created_at": ISODate("2021-06-01T07:00:00.000Z"),
    permission: NumberInt("2"),
    __v: NumberInt("0")
} ]);
