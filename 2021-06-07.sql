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

 Date: 07/06/2021 06:30:08
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
    name: "Article",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b700033a4f000027002e12"),
    name: "Report",
    __v: 0
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b705a304f1d5202cfaa881"),
    name: "Music",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b705d4f4b21d39786cc9bf"),
    name: "Novel",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b7070018da12192cab8774"),
    name: "Movie",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b708856714e93290647af4"),
    name: "Book",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70a76b2794a3cd06af42e"),
    name: "Picture",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70b3857fd8a05e0b830c8"),
    name: "Sport",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70c43f2d0483c58581b53"),
    name: "Art",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70c99f2d0483c58581b55"),
    name: "Content",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70cc556897839f874a1d6"),
    name: "Golf",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70eccada3ef35742f5bc7"),
    name: "Footbal",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799ee714c7b32d4da3165"),
    name: "Basketball",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799f6714c7b32d4da3166"),
    name: "Game",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799fc714c7b32d4da3167"),
    name: "Dance",
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
db.getCollection("industries").insert([ {
    _id: ObjectId("60b73a8072f6d2353c743661"),
    name: "Bank",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b7966c903a5d417887f05f"),
    name: "Bank2",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b79672903a5d417887f060"),
    name: "Bank3",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b79679903a5d417887f061"),
    name: "Bank4",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b79680903a5d417887f062"),
    name: "Bank5",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b79686903a5d417887f063"),
    name: "Bank6",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b7968a903a5d417887f064"),
    name: "Bank7",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b7968f903a5d417887f065"),
    name: "Bank8",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b79693903a5d417887f066"),
    name: "Bank9",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b7969a903a5d417887f067"),
    name: "Bank10",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b7969f903a5d417887f068"),
    name: "Bank11",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b796a4903a5d417887f069"),
    name: "Bank12",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b797a098d52a3d18c69882"),
    name: "Bank13",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b797b798d52a3d18c69883"),
    name: "Bank14",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b797bc98d52a3d18c69884"),
    name: "Bank15",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b797c098d52a3d18c69885"),
    name: "Bank16",
    __v: NumberInt("0")
} ]);
db.getCollection("industries").insert([ {
    _id: ObjectId("60b797c498d52a3d18c69886"),
    name: "Bank17",
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
    _id: ObjectId("60bdec25ccbe8d35bc373202"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "Hello",
    content: "<p>Hello everyone.</p>\n\n<p>Nice to meet you.</p>\n\n<p>&nbsp;</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7548784545",
    "created_at": ISODate("2021-06-07T09:51:33.643Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021572519353.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021572519396.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60bdee60b3b09121887d6d94"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "Hello World!",
    content: "<p>Nice to meet you.</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7545487454",
    "created_at": ISODate("2021-06-07T10:01:04.916Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60bdef1e7d05291ee047eb43"),
    "category_id": "60b705a304f1d5202cfaa881",
    category: "Music",
    title: "Hi",
    content: "<p>Nice to meet you.</p>\n",
    poster: "Xia Jing",
    "poster_id": "60ba112fb661092db48de46d",
    "poster_email": "xiajing@gmail.com",
    "poster_phone": "+6950258454",
    "created_at": ISODate("2021-06-07T10:04:14.684Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60ba112fb661092db48de46d_202157345143.jpg,",
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
    membership: NumberInt("4"),
    "created_at": ISODate("2021-06-03T20:52:25.234Z"),
    permission: NumberInt("1"),
    __v: NumberInt("0"),
    state: NumberInt("1"),
    photo: "60b63a7ad2a7ea368cf9cf0a.jpg",
    introduction: "Hello, everybody.\r\nMy name is Dmitriy Lotov. I am from Russia.",
    "left_membership": NumberInt("2"),
    industry: "Insurrance"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60b7c2a8f2667e2ea4ca3a2e"),
    name: "Maksim",
    surname: "Klazhnov",
    phone: "+75846893453",
    email: "maksim@gmail.com",
    password: "$2a$08$ewTyRIC7wqBZ7zwYo7QmEOGdJdWm/I7dSid0u6voOZL2easIHACnC",
    membership: NumberInt("2"),
    "created_at": ISODate("2021-06-04T19:50:02.412Z"),
    permission: NumberInt("2"),
    state: NumberInt("0"),
    __v: NumberInt("0"),
    photo: "60b7c2a8f2667e2ea4ca3a2e.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    "left_membership": NumberInt("1"),
    industry: "Insurrance"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60ba112fb661092db48de46d"),
    name: "Xia",
    surname: "Jing",
    phone: "6594545783",
    email: "xiajing@gmail.com",
    password: "$2a$08$A9SGudWdXGpBNRzOfogvfekPaihyv7IzKmA/t3bUy.JWCNl/hkwGu",
    membership: NumberInt("4"),
    "left_membership": NumberInt("0"),
    "created_at": ISODate("2021-06-04T20:14:00.195Z"),
    permission: NumberInt("2"),
    photo: "60ba112fb661092db48de46d.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("0"),
    __v: NumberInt("0"),
    industry: "Insurrance"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60bdf2f692b1aa3bc89e5154"),
    name: "Aleksey",
    surname: "Leha",
    phone: "7542124548",
    email: "aleksey@gmail.com",
    password: "$2a$08$WWWGiAXebueT3eC4OLdAjeUUO1Ox46le7jL8K9nNxB/3HhhBEKXHe",
    membership: NumberInt("1"),
    "left_membership": NumberInt("1"),
    "created_at": ISODate("2021-06-07T10:21:17.54Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("0"),
    industry: "Insurrance",
    __v: NumberInt("0")
} ]);
