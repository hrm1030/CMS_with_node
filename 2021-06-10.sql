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

 Date: 09/06/2021 10:01:29
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
    _id: ObjectId("60bdec25ccbe8d35bc373202"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "Hello",
    content: "<p>Hello everyone.</p>\n\n<p>Nice to meet you.</p>\n\n\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7548784545",
    "created_at": ISODate("2021-06-07T09:51:33.643Z"),
    like: NumberInt("8"),
    dislike: NumberInt("2"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021572519353.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021572519396.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c04e6db76c2a2ec4e3acb2"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "story",
    content: "<h2 style=\"font-style:italic;\">He has left</h2>\n",
    poster: "123456",
    "poster_id": "60c04cbd65536b1c58d2dc2e",
    "poster_email": "sage.2025@outlook.com",
    "poster_phone": "+7123739202",
    "created_at": ISODate("2021-06-09T05:15:25.285Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c05bd4b76c2a2ec4e3acb3"),
    "category_id": "60b70a76b2794a3cd06af42e",
    category: "Picture",
    title: "My picture",
    content: "<p>Please check it!</p>\n",
    poster: "codedarkhorse",
    "poster_id": "60c04c4165536b1c58d2dc2d",
    "poster_email": "codedarkhorse@gmail.com",
    "poster_phone": "+7912345678",
    "created_at": ISODate("2021-06-09T06:12:36.539Z"),
    like: NumberInt("1"),
    dislike: NumberInt("0"),
    images: "post_60c04c4165536b1c58d2dc2d_202158231151284.jpg,post_60c04c4165536b1c58d2dc2d_20215823126935.jpg,post_60c04c4165536b1c58d2dc2d_20215823128580.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c082e20b4a881ec0953719"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "Nice",
    content: "<p><strong><em>Volt, everybody!</em></strong></p>\n\n<p><strong><em>Nice to meet you.</em></strong></p>\n\n<p><strong><em>If you have some problems, please contact me.</em></strong></p>\n\n<p><strong><em>I can solve your issue.</em></strong></p>\n\n<p><strong><em>Thanks.<img alt=\"smiley\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /></em></strong><br />\n&nbsp;</p>\n",
    poster: "Aleksey Leha",
    "poster_id": "60bdf2f692b1aa3bc89e5154",
    "poster_email": "aleksey@gmail.com",
    "poster_phone": "+1546798797",
    "created_at": ISODate("2021-06-09T08:59:14.909Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60bdf2f692b1aa3bc89e5154_2021591590972.jpg,post_60bdf2f692b1aa3bc89e5154_20215915915.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0847cdc84503c74ab6082"),
    "category_id": "60b7070018da12192cab8774",
    category: "Movie",
    title: "Nice",
    content: "<p>Nice to meet you.</p>\n\n<p><strong>I am a senior developer.</strong></p>\n\n<p><strong>Thanks....</strong></p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+1246464878",
    "created_at": ISODate("2021-06-09T09:06:04.955Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021592553492.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021592553499.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c09e46c2a8aa4228f479d6"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "werwrwqe",
    content: "<p>sadfasdfasdfsa</p>\n",
    poster: "sadfa",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+2341243214",
    "created_at": ISODate("2021-06-09T10:56:06.488Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_20215935525785.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215935525793.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215935525806.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215935525809.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c09fc9c35eb13d289581dd"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "sdasfda",
    content: "<p>sadfsadfsdfsdafsadfas</p>\n",
    poster: "sdfas",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+2342342143",
    "created_at": ISODate("2021-06-09T11:02:33.503Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021594215172.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021594215191.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0a0576e001b0bfc50dc83"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "asdsad",
    content: "<p>sadfsadf</p>\n",
    poster: "sadf",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+3241242134",
    "created_at": ISODate("2021-06-09T11:04:55.493Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021594438895.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021594438902.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0a0c85a20894348051206"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "sdfsdaf",
    content: "<p>sadfsdfsdfasdfsdf</p>\n",
    poster: "sdfsa",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+4324214213",
    "created_at": ISODate("2021-06-09T11:06:48.619Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021594646356.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021594646364.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021594646369.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0cb1ecd583569f83113ff"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "dsfsadfsadfadsf",
    content: "<p>sfsdfsdfdfffsgdfgdsfg<span style=\"font-family:Georgia,serif\">dfgdsfgdfgdfg</span></p>\n\n<h3 style=\"color:#aaaaaa; font-style:italic\"><span style=\"font-family:Georgia,serif\">dsfaffadfsfasdfsdfsdfsdf</span></h3>\n",
    poster: "sdfas",
    "poster_id": "60bdf2f692b1aa3bc89e5154",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+1564879879",
    "created_at": ISODate("2021-06-09T14:07:26.453Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60bdf2f692b1aa3bc89e5154_2021597718839.jpg,post_60bdf2f692b1aa3bc89e5154_2021597718847.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0cc3ecd583569f8311400"),
    "category_id": "60b705d4f4b21d39786cc9bf",
    category: "Novel",
    title: "Hello, hrm!",
    content: "<p><strong>How are you!</strong><sup> I&#39;m fine.</sup></p>\n\n<p><span style=\"background-color:#2ecc71\">Thank you!!!!</span></p>\n\n<p>&nbsp;</p>\n",
    poster: "codedarkhorse",
    "poster_id": "60c04c4165536b1c58d2dc2d",
    "poster_email": "codedarkhorse@gmail.com",
    "poster_phone": "+7912345678",
    "created_at": ISODate("2021-06-09T14:12:14.646Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60c04c4165536b1c58d2dc2d_20215971157833.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0dd93e9e51120ece6bc29"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "sdfsdfsadf",
    content: "<p>adfsdfsafda</p>\n",
    poster: "Dmitriy Lotov",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-09T15:26:11.626Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_20215982322738.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215982322745.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215982322750.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215982322753.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215982322758.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0ddfee9e51120ece6bc2a"),
    "category_id": "60b705a304f1d5202cfaa881",
    category: "Music",
    title: "sdfsadf",
    content: "<p>sadfsdafsdfdsaf</p>\n\n<h1>sdfsdfsdfsdf</h1>\n\n<h2>er<span style=\"background-color:#8e44ad\">wrwsdfsdfsddf</span><sup><span style=\"background-color:#8e44ad\">ewrqerqqr</span><sub><span style=\"background-color:#8e44ad\">ddfdfdfasdfafdasfdassdfsdf</span></sub></sup></h2>\n\n<p>sdfsadfsdf</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-09T15:27:58.372Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_20215982742675.jpg,post_60b63a7ad2a7ea368cf9cf0a_20215982742684.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0e122b00c061690e0e8c4"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "sdfsda",
    content: "<p>sdfsdfsdaf</p>\n\n<h2>sdfsadfsadfsdfa</h2>\n\n<h3>sdddddddddddddddddddddddddddddddddddd</h3>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-09T15:41:22.28Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_2021598419605.jpg,post_60b63a7ad2a7ea368cf9cf0a_2021598419613.jpg,",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c0e1f5b524ac13d46962d5"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    title: "asdfsadf",
    content: "<p>sdfsadf</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-09T15:44:53.419Z"),
    like: NumberInt("0"),
    dislike: NumberInt("0"),
    images: "post_60b63a7ad2a7ea368cf9cf0a_20215984448547.jpg,",
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
    photo: "60b63a7ad2a7ea368cf9cf0a.jpg",
    introduction: "Hello, everybody.\r\nMy name is Dmitriy Lotov. I am from Russia.\r\nI am a Software Engineer.\r\nI hope so many help.\r\nThanks.",
    "left_membership": NumberInt("4"),
    industry: "Insurrance",
    "card_number": "4679 8798 7979 7897",
    cvc: NumberInt("1545"),
    "expire_month": NumberInt("12"),
    "expire_year": NumberInt("2021")
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
    photo: "60b7c2a8f2667e2ea4ca3a2e.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    "left_membership": NumberInt("1"),
    industry: "Insurrance"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60ba112fb661092db48de46d"),
    name: "Xia",
    surname: "Jing",
    phone: "+6594545783",
    email: "xiajing@gmail.com",
    password: "$2a$08$A9SGudWdXGpBNRzOfogvfekPaihyv7IzKmA/t3bUy.JWCNl/hkwGu",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    "created_at": ISODate("2021-06-08T18:00:34.037Z"),
    permission: NumberInt("2"),
    photo: "60ba112fb661092db48de46d.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    industry: "Insurrance"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60bdf2f692b1aa3bc89e5154"),
    name: "Aleksey",
    surname: "Leha",
    phone: "+7542124548",
    email: "aleksey@gmail.com",
    password: "$2a$08$WWWGiAXebueT3eC4OLdAjeUUO1Ox46le7jL8K9nNxB/3HhhBEKXHe",
    membership: NumberInt("4"),
    "left_membership": NumberInt("1"),
    "created_at": ISODate("2021-06-09T02:58:28.929Z"),
    permission: NumberInt("2"),
    photo: "60bdf2f692b1aa3bc89e5154.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "started_at": ISODate("2021-06-06T15:07:19.454Z"),
    "card_number": "4567 9797 9465 4687",
    cvc: NumberInt("4545"),
    "expire_month": NumberInt("12"),
    "expire_year": NumberInt("2021")
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
    "started_at": ISODate("1970-03-02T00:00:00.000Z"),
    permission: NumberInt("2"),
    photo: "60c04c4165536b1c58d2dc2d.jpg",
    introduction: "I'm aleksey...",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021")
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
    "expire_year": null
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
    photo: "60c099f99484a11bb40d0a3d.jpg",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": null
} ]);
