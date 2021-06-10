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

 Date: 10/06/2021 08:09:30
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
db.getCollection("categories").insert([ {
    _id: ObjectId("60c040d665536b1c58d2dc26"),
    name: "Valleyball",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0410265536b1c58d2dc27"),
    name: "Tennis",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0411765536b1c58d2dc28"),
    name: "Swimming",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0412c65536b1c58d2dc29"),
    name: "Snow boarding",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0413865536b1c58d2dc2a"),
    name: "Hunting",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0417565536b1c58d2dc2b"),
    name: "Scket",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0418165536b1c58d2dc2c"),
    name: "Running",
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
    _id: ObjectId("60c1f4cf178aa300f439de28"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "I love my family",
    content: "<p>Hello, everyone.</p>\n\n<p>Nice to meet you.</p>\n\n<p>I am Dmitriy, In this time. I am going to talk about the my picture.</p>\n\n<p>Ok. This is my family, my father, mother, wife and son.</p>\n\n<p>I love my family. Of course, whoever love family. But I feel another feeling from my family.</p>\n\n<p>My parents always try best for me and my wife gives me lovely and warm force.</p>\n\n<p>Also, I am very glad by my cute son.</p>\n\n<p>I am very happy.</p>\n\n<p>Everyone, Love your family.</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-10T11:17:35.86Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_20215104177270.jpg",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c1f563178aa300f439de29"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "I love my family",
    content: "<p>Hello, everyone.</p>\n\n<p>Nice to meet you.</p>\n\n<p>I am Dmitriy, In this time. I am going to talk about the my picture.</p>\n\n<p>Ok. This is my<strong> family, my father, mother, wife</strong> and <strong>son</strong>.</p>\n\n<p>I love my family. Of course, whoever love family. But I feel another feeling from my family.</p>\n\n<p>My <span style=\"color:#27ae60\"><strong>parents</strong></span> always try best for me and my <span style=\"color:#e74c3c\"><strong>wife</strong></span> gives me lovely and warm force.</p>\n\n<p>Also, I am very glad by my <span style=\"color:#2980b9\"><strong>cute son</strong></span>.</p>\n\n<p>I am very happy.</p>\n\n<h2><strong><em>Everyone, <span style=\"color:#e74c3c\">Love</span> your <span style=\"color:#16a085\">family</span>.</em></strong></h2>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-10T11:20:03.388Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_20215104177270.jpg",
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
    "created_at": ISODate("2021-06-09T17:01:06.984Z"),
    permission: NumberInt("1"),
    __v: NumberInt("0"),
    state: NumberInt("1"),
    photo: "60b63a7ad2a7ea368cf9cf0a.png",
    introduction: "Hello, everybody.\r\nMy name is Dmitriy Lotov. I am from Russia.\r\nI am a Software Engineer.\r\nI hope so many help.\r\nThanks.",
    "left_membership": NumberInt("4"),
    industry: "Insurrance",
    "card_number": "4679 8798 7979 7897",
    cvc: NumberInt("1545"),
    "expire_month": NumberInt("12"),
    "expire_year": NumberInt("2021"),
    "share_cnt": 0
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
    state: NumberInt("1"),
    __v: NumberInt("0"),
    photo: "60b7c2a8f2667e2ea4ca3a2e.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    "left_membership": NumberInt("1"),
    industry: "Insurrance",
    "share_cnt": 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60ba112fb661092db48de46d"),
    name: "Xia",
    surname: "Jing",
    phone: "+6594545783",
    email: "xiajing@gmail.com",
    password: "$2a$08$A9SGudWdXGpBNRzOfogvfekPaihyv7IzKmA/t3bUy.JWCNl/hkwGu",
    membership: NumberInt("4"),
    "left_membership": NumberInt("0"),
    "created_at": ISODate("2021-06-08T18:00:34.037Z"),
    permission: NumberInt("2"),
    photo: "60ba112fb661092db48de46d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    industry: "Insurrance",
    "share_cnt": 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60bdf2f692b1aa3bc89e5154"),
    name: "Aleksey",
    surname: "Leha",
    phone: "+7542124548",
    email: "aleksey@gmail.com",
    password: "$2a$08$WWWGiAXebueT3eC4OLdAjeUUO1Ox46le7jL8K9nNxB/3HhhBEKXHe",
    membership: NumberInt("3"),
    "left_membership": NumberInt("0"),
    "created_at": ISODate("2021-06-10T09:26:03.877Z"),
    permission: NumberInt("2"),
    photo: "60bdf2f692b1aa3bc89e5154.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "started_at": ISODate("2021-06-10T09:26:03.877Z"),
    "card_number": "4646 6464 6464 6456",
    cvc: NumberInt("154"),
    "expire_month": NumberInt("12"),
    "expire_year": NumberInt("20"),
    "share_cnt": 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c04c4165536b1c58d2dc2d"),
    name: "code",
    surname: "darkhorse",
    phone: "+7912345678",
    email: "codedarkhorse@gmail.com",
    password: "$2a$08$Xjl5qEgd0q2h14dpDZN9X.XZnyKXrpScJZ7/STV8VczPgeeMvN/H.",
    membership: NumberInt("4"),
    "left_membership": NumberInt("2"),
    "card_number": "1232 2222 2222 1321",
    "expire_month": NumberInt("3"),
    cvc: NumberInt("3234"),
    "created_at": ISODate("2021-06-09T06:09:46.553Z"),
    "started_at": ISODate("2021-06-06T15:07:19.454Z"),
    permission: NumberInt("2"),
    photo: "60c04c4165536b1c58d2dc2d.png",
    introduction: "I'm aleksey...",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    "share_cnt": 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c04cbd65536b1c58d2dc2e"),
    name: "sage2025",
    surname: "Aleksey",
    phone: "+7123739202",
    email: "sage.2025@outlook.com",
    password: "$2a$08$6TjowHyfMQoBwtBqdiVNZuvj9qv/Pwqyu9dMuj9aNZk3Qhtf6XjfS",
    membership: NumberInt("1"),
    "left_membership": NumberInt("0"),
    "card_number": "",
    "expire_month": null,
    cvc: null,
    "created_at": ISODate("2021-06-09T05:14:37.568Z"),
    "started_at": null,
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "expire_year": null,
    "share_cnt": 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c099f99484a11bb40d0a3d"),
    name: "OOHS",
    surname: "oohs",
    phone: "+7545676454",
    email: "oohs0907@outlook.com",
    password: "$2a$08$OVirYLonZKoXPKpfobeKDewWDGfoqJbnvG5dLBE7z3K/KvaZL9bw2",
    membership: NumberInt("1"),
    "left_membership": NumberInt("0"),
    "card_number": "",
    "expire_month": null,
    cvc: null,
    "created_at": ISODate("2021-06-09T10:38:14.921Z"),
    "started_at": null,
    permission: NumberInt("2"),
    photo: "60c099f99484a11bb40d0a3d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": null,
    "share_cnt": 0
} ]);
