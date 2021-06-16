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

 Date: 16/06/2021 02:01:04
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
    name: "Football",
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
db.getCollection("categories").insert([ {
    _id: ObjectId("60c3c46531f2421e5c8d5a42"),
    name: "COVID19",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7c6bab6973b68ef3ada"),
    name: "Science",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7d0bab6973b68ef3adb"),
    name: "Technology",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7ddbab6973b68ef3adc"),
    name: "Medical",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7eabab6973b68ef3add"),
    name: "IT",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c830bab6973b68ef3ade"),
    name: "Software",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c98c87e2dc2794257bb3"),
    name: "Economy",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c9a287e2dc2794257bb4"),
    name: "Internet",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c9d987e2dc2794257bb5"),
    name: "Freelancer",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf0bf7f68b07fc83c5ca"),
    name: "City",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf1af7f68b07fc83c5cb"),
    name: "University",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf28f7f68b07fc83c5cc"),
    name: "Hospital",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf2ff7f68b07fc83c5cd"),
    name: "Doctor",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d6e53072b30c504f6d78"),
    name: "Hotel",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d7933072b30c504f6d79"),
    name: "Education",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d79c3072b30c504f6d7a"),
    name: "Industry",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d7ae3072b30c504f6d7b"),
    name: "Global Warming",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for faqs
// ----------------------------
db.getCollection("faqs").drop();
db.createCollection("faqs");

// ----------------------------
// Documents of faqs
// ----------------------------
db.getCollection("faqs").insert([ {
    _id: ObjectId("60c603d865122b3aa0cc9de8"),
    title: "Hello",
    category: "Article",
    email: "aleksey@gmail.com",
    content: "Hello everyone.\r\nNice to meet you.\r\nThanks.",
    __v: NumberInt("0")
} ]);
db.getCollection("faqs").insert([ {
    _id: ObjectId("60c61a4540023a380cc56541"),
    title: "Article",
    category: "Article",
    email: "aleksey@gmail.com",
    content: "Report",
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
    __v: NumberInt("0"),
    language: "EN"
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
    shared: NumberInt("9"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_20215104177270.jpg",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c8de8567be4d245c67a92f"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "Newbie Freelancer",
    content: "<p>Hello. everybody. Nice to meet you.</p>\n\n<p>I am a freelancer, I am looking for job that is very serious and long term. If I talk about the serious point, it is not small and short time.</p>\n\n<p>I won&#39;t accept the job and I have not time for spending so small one. <img alt=\"smiley\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /></p>\n\n<p>As you know, freelancer is very difficult job. But I don&#39;t regret my way.</p>\n\n<p>If you have big and long term job, please contact me.</p>\n\n<p>My email is hrm.2021@outlook.com</p>\n\n<p>Thank you very much. Best regard.</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-15T17:08:21.8Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_202151510812504.jpg",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c8e80e67be4d245c67a930"),
    "category_id": "60c8cf28f7f68b07fc83c5cc",
    category: "Hospital",
    title: "Healthy care",
    content: "<p>Hi. My name is Dmitriy Lotov.</p>\n\n<p>I am a doctor. I care and defend people everyday. I love my job and I have big duty called &quot;Healthy care&quot;.</p>\n\n<p>So, I love my job more and more.</p>\n\n<p><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-15T17:49:02.615Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_2021515104857832.jpg",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c8e8d167be4d245c67a931"),
    "category_id": "60c3c46531f2421e5c8d5a42",
    category: "COVID19",
    title: "Healthy care from COVID19",
    content: "<p>Hi. My name is Dmitriy Lotov.</p>\n\n<p>I am a doctor. I care and defend people&nbsp;everyday from<span style=\"font-size:16px\"> </span><span style=\"color:#c0392b\"><strong><span style=\"font-size:16px\">COVID19</span> </strong></span>and so on. I love my job and I have big duty called &quot;<strong><span style=\"font-size:16px\"><span style=\"color:#27ae60\">Healthy care</span></span></strong>&quot;.</p>\n\n<p>So, I love my job more and more.</p>\n\n<p><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-15T17:52:17.318Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_2021515104857832.jpg",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60c9b78051867445d863cf1a"),
    "category_id": "60b70b3857fd8a05e0b830c8",
    category: "Sport",
    title: "I love sport.",
    content: "<p>Hello, everyone. I am from Greece.</p>\n\n<p>I like sport.</p>\n\n<p>Everyone, love <span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><strong>sport</strong></span></span>.</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-16T08:34:08.662Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_2021516134020.jpg",
    language: "GR",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for recommendcategories
// ----------------------------
db.getCollection("recommendcategories").drop();
db.createCollection("recommendcategories");

// ----------------------------
// Documents of recommendcategories
// ----------------------------
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c630887e13990e60acac0e"),
    category: "Novel",
    email: "aleksey@gmail.com",
    content: "I like novel.",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c630f610611204dc6a0de7"),
    category: "Article",
    email: "aleksey@gmail.com",
    content: "asdfasdf\r\nasdfsadfa\r\nasdfasdfasd\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6eea49b5f3f43ecf8e955"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "Hello everyone.",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f01bfd0f8031883c04f7"),
    category: "Novel",
    email: "hrm.2021@outlook.com",
    content: "I love novel.\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f04bc39e9b44d0c13425"),
    category: "Novel",
    email: "hrm.2021@outlook.com",
    content: "I love novel.\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f0cbc39e9b44d0c13426"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "I love article.",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f2fcfe71893d44e3e2a5"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "I love article.",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f322fe71893d44e3e2a6"),
    category: "Music",
    email: "hrm.2021@outlook.com",
    content: "I love music",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c6f4987f53204668afe759"),
    category: "Music",
    email: "hrm.2021@outlook.com",
    content: "I love music",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c82e46038ff2443ca1dd1a"),
    category: "Picture",
    email: "hrm.2021@outlook.com",
    content: "I love Picture",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c840da034cd22c0cdf6993"),
    category: "Music",
    email: "hrm.2021@outlook.com",
    content: "I love music\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60c8415b767735198c4f9109"),
    category: "Music",
    email: "hrm.2021@outlook.com",
    content: "I love music\r\n",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for supports
// ----------------------------
db.getCollection("supports").drop();
db.createCollection("supports");

// ----------------------------
// Documents of supports
// ----------------------------
db.getCollection("supports").insert([ {
    _id: ObjectId("60c630697e13990e60acac0d"),
    name: "Aleksey",
    email: "aleksey@gmail.com",
    content: "Hi, this is my report.",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c832e6425d633330533da2"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c8330b04a5f944a818cf28"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c8331d04a5f944a818cf29"),
    name: "hkjlhkl",
    email: "hrm.2021@outlook.com",
    content: "hlkyjouiyouioi",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c833421eaa1e4a48c1c246"),
    name: "hkjlhkl",
    email: "hrm.2021@outlook.com",
    content: "hlkyjouiyouioi",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c8335a1eaa1e4a48c1c247"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c835841eaa1e4a48c1c248"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c835c9fe57cb05485b7f2a"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support\r\n",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c835f7fe57cb05485b7f2b"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "sdfsafasdfa",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c83bfd9fbe213018039605"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "Support",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c83d1197e77d1738283af3"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "Support",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c83d3a2762653ffc4d4f9f"),
    name: "Dmitriy",
    email: "aleksey@gmail.com",
    content: "sdfsafsafasfa",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c840bd034cd22c0cdf6992"),
    name: "Dmitriy",
    email: "aleksey@gmail.com",
    content: "sdfsafsafasfa",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c8416f767735198c4f910a"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60c844b2de928a4ad02e6591"),
    name: "Dmitriy",
    email: "hrm.2021@outlook.com",
    content: "support",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for trainings
// ----------------------------
db.getCollection("trainings").drop();
db.createCollection("trainings");

// ----------------------------
// Documents of trainings
// ----------------------------
db.getCollection("trainings").insert([ {
    _id: ObjectId("60c6ae2109101f0eacff9001"),
    title: "Begginer",
    description: "Beginner's training",
    url: "../../videos/trainings/begginer.mp4",
    __v: NumberInt("0")
} ]);
db.getCollection("trainings").insert([ {
    _id: ObjectId("60c6b102017761217c04d19e"),
    title: "Professional",
    description: "Professional training",
    url: "../../videos/trainings/professional.mp4",
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
    "shared_cnt": 0
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
    "left_membership": NumberInt("4"),
    industry: "Insurrance",
    "shared_cnt": 0,
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60ba112fb661092db48de46d"),
    name: "Xia",
    surname: "Jing",
    phone: "+6594545783",
    email: "xiajing@gmail.com",
    password: "$2a$08$A9SGudWdXGpBNRzOfogvfekPaihyv7IzKmA/t3bUy.JWCNl/hkwGu",
    membership: NumberInt("3"),
    "left_membership": NumberInt("2"),
    "created_at": ISODate("2021-06-10T17:43:49.995Z"),
    permission: NumberInt("2"),
    photo: "60ba112fb661092db48de46d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    industry: "Insurrance",
    "card_number": "4567 9879 7456 4798",
    cvc: NumberInt("1541"),
    "expire_month": NumberInt("12"),
    "expire_year": NumberInt("2021"),
    "started_at": ISODate("2021-06-10T17:43:49.995Z"),
    "shared_cnt": 0,
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60bdf2f692b1aa3bc89e5154"),
    name: "Aleksey",
    surname: "Leha",
    phone: "+7542124548",
    email: "aleksey@gmail.com",
    password: "$2a$08$WWWGiAXebueT3eC4OLdAjeUUO1Ox46le7jL8K9nNxB/3HhhBEKXHe",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    "created_at": ISODate("2021-06-15T08:15:52.182Z"),
    permission: NumberInt("2"),
    photo: "60bdf2f692b1aa3bc89e5154.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "started_at": ISODate("2021-06-15T08:15:52.182Z"),
    "card_number": "4111 1111 1111 1111",
    cvc: NumberInt("145"),
    "expire_month": NumberInt("6"),
    "expire_year": NumberInt("2021"),
    "shared_cnt": NumberInt("1"),
    ask: null
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
    "shared_cnt": 0,
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c04cbd65536b1c58d2dc2e"),
    name: "sage2025",
    surname: "Aleksey",
    phone: "+7123739202",
    email: "sage.2025@outlook.com",
    password: "$2a$08$6TjowHyfMQoBwtBqdiVNZuvj9qv/Pwqyu9dMuj9aNZk3Qhtf6XjfS",
    membership: NumberInt("1"),
    "left_membership": NumberInt("2"),
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
    "shared_cnt": 0,
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c099f99484a11bb40d0a3d"),
    name: "OOHS",
    surname: "oohs",
    phone: "+7545676454",
    email: "oohs0907@outlook.com",
    password: "$2a$08$OVirYLonZKoXPKpfobeKDewWDGfoqJbnvG5dLBE7z3K/KvaZL9bw2",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    "card_number": "7545 4646 5798 7987",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("245"),
    "created_at": ISODate("2021-06-11T06:41:46.204Z"),
    "started_at": ISODate("2021-06-11T06:41:46.204Z"),
    permission: NumberInt("2"),
    photo: "60c099f99484a11bb40d0a3d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    "shared_cnt": 0,
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c457e17333b936a04dd580"),
    name: "Shao",
    surname: "Jing",
    phone: "+6512457487",
    email: "shaojing@gmail.com",
    password: "$2a$08$Oz9NWVwr7xTWysvgtXNg9.oO7vXmc5DJsLy9pk5oHqvss0KwJRiWq",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    "card_number": "1469 8798 7987 9746",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("154"),
    "created_at": ISODate("2021-06-12T06:45:22.242Z"),
    "started_at": ISODate("2021-06-12T06:45:22.242Z"),
    permission: NumberInt("2"),
    photo: "60c457e17333b936a04dd580.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    ask: 0
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c46300e4d19e2864e6111f"),
    name: "Koko",
    surname: "koko",
    phone: "+7545789879",
    email: "koko@mail.ru",
    password: "$2a$08$PX3p6SIbmDN4rTOs1/c89eShIfMs4s0t7KM1U/ltknyu5bs60cpd.",
    membership: NumberInt("3"),
    "left_membership": NumberInt("3"),
    ask: NumberInt("0"),
    "card_number": "4649 8797 9799 6464",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("124"),
    "created_at": ISODate("2021-06-12T07:32:35.51Z"),
    "started_at": ISODate("2021-06-12T07:32:35.51Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c6f5b258ec3f34d083255f"),
    name: "Wiliam",
    surname: "John",
    phone: "+1549879878",
    email: "wiliam@outlook.com",
    password: "$2a$08$SR.x8uLfmX0Dpb3OlaeUS.rUaae5j5JvRXVbuCVP9cXxcRByC.UOW",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: NumberInt("2"),
    "card_number": "4567 9797 9456 9879",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("124"),
    "created_at": ISODate("2021-06-14T06:23:09.212Z"),
    "started_at": ISODate("2021-06-14T06:23:09.212Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Bank",
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c85f31e33efe300c29f78c"),
    name: "Maksim",
    surname: "Olev",
    phone: "+7548798798",
    email: "olev@gmail.com",
    password: "$2a$08$CutgI1xvFRcdhh3Fd0vy9.2wq8dyIlIs.7NpbBcWOudqPnsf.Ana.",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: NumberInt("2"),
    "card_number": "4256 7890 5678 4532",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("145"),
    "created_at": ISODate("2021-06-15T08:06:16.354Z"),
    "started_at": ISODate("2021-06-15T08:06:16.354Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c97528b3c37f1724214173"),
    name: "Galax",
    surname: "John",
    phone: "+4457987979",
    email: "galax@outlook.com",
    password: "$2a$08$WW7rqU3ScpmgFI1xH7adNOn/x7KsdYaCUz.eOslpo8YggiTTIhDB.",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: NumberInt("2"),
    "card_number": "4111 1111 1111 1111",
    "expire_month": NumberInt("7"),
    cvc: NumberInt("103"),
    "created_at": ISODate("2021-06-16T03:51:29.21Z"),
    "started_at": ISODate("2021-06-16T03:51:29.21Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2024")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c99640de96cd444c43dd9d"),
    name: "Hans",
    surname: "hans",
    phone: "+4567987979",
    email: "hans@gmail.com",
    password: "$2a$08$yDPuLlHHlKPqmr14Ed0S2OS8u4fdPM3J972krMPGhaXSCMQif/eVi",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: null,
    "card_number": "4111 1111 1111 1111",
    "expire_month": NumberInt("11"),
    cvc: NumberInt("115"),
    "created_at": ISODate("2021-06-16T06:34:40.969Z"),
    "started_at": ISODate("2021-06-16T06:34:40.969Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021")
} ]);
