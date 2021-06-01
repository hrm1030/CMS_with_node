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

 Date: 01/06/2021 02:27:28
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
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b700033a4f000027002e12"),
    name: "Report",
    __v: 0,
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b705a304f1d5202cfaa881"),
    name: "Music",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b705d4f4b21d39786cc9bf"),
    name: "Novel",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b7070018da12192cab8774"),
    name: "Movie",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b708856714e93290647af4"),
    name: "Book",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70a76b2794a3cd06af42e"),
    name: "Picture",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70b3857fd8a05e0b830c8"),
    name: "Sport",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70c43f2d0483c58581b53"),
    name: "Art",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70c99f2d0483c58581b55"),
    name: "Content",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70cc556897839f874a1d6"),
    name: "Golf",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b70eccada3ef35742f5bc7"),
    name: "Football",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799ee714c7b32d4da3165"),
    name: "Basketball",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799f6714c7b32d4da3166"),
    name: "Game",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60b799fc714c7b32d4da3167"),
    name: "Dance",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c040d665536b1c58d2dc26"),
    name: "Valleyball",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0410265536b1c58d2dc27"),
    name: "Tennis",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0411765536b1c58d2dc28"),
    name: "Swimming",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0412c65536b1c58d2dc29"),
    name: "Snow boarding",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0413865536b1c58d2dc2a"),
    name: "Hunting",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0417565536b1c58d2dc2b"),
    name: "Scket",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c0418165536b1c58d2dc2c"),
    name: "Running",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c3c46531f2421e5c8d5a42"),
    name: "COVID19",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7c6bab6973b68ef3ada"),
    name: "Science",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7d0bab6973b68ef3adb"),
    name: "Technology",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7ddbab6973b68ef3adc"),
    name: "Medical",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c7eabab6973b68ef3add"),
    name: "IT",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c830bab6973b68ef3ade"),
    name: "Software",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c98c87e2dc2794257bb3"),
    name: "Economy",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c9a287e2dc2794257bb4"),
    name: "Internet",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8c9d987e2dc2794257bb5"),
    name: "Freelancer",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf0bf7f68b07fc83c5ca"),
    name: "City",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf1af7f68b07fc83c5cb"),
    name: "University",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf28f7f68b07fc83c5cc"),
    name: "Hospital",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8cf2ff7f68b07fc83c5cd"),
    name: "Doctor",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d6e53072b30c504f6d78"),
    name: "Hotel",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d7933072b30c504f6d79"),
    name: "Education",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d79c3072b30c504f6d7a"),
    name: "Industry",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60c8d7ae3072b30c504f6d7b"),
    name: "Global Warming",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cae5a2ca0a973d68f9feb4"),
    name: "Job",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf92b942e8ec079c95907e"),
    name: "Upwork",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf930cf5ea3531f4468a8f"),
    name: "Worker",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf9364faf9861680e28f96"),
    name: "Works",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf9422c09b370f508d9000"),
    language: "EN",
    name: "Family",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf95a390ffdb0df891210f"),
    language: "GR",
    name: "Animal",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("60cf9770c353972ecc823e85"),
    language: "EN",
    name: "Lancer",
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
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("faqs").insert([ {
    _id: ObjectId("60c61a4540023a380cc56541"),
    title: "Article",
    category: "Article",
    email: "aleksey@gmail.com",
    content: "Hello everyone. Nice to meet you.\nI am from Russian Federation.\nMy name is Dmitriy Lotov\nThanks.\nBest regard.",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("faqs").insert([ {
    _id: ObjectId("60c9fa03c740912cdcce3fda"),
    title: "Hello everybody",
    category: "Article",
    email: "hans@gmail.com",
    content: "Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Cosby sweater eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.\r\nDenim you probably haven't heard of. Lorem ipsum dolor met consectetur adipisicing sit amet, consectetur adipisicing elit, of them jean shorts sed magna aliqua. Lorem ipsum dolor met.",
    __v: NumberInt("0"),
    language: "EN"
} ]);
db.getCollection("faqs").insert([ {
    _id: ObjectId("60cfbc158d5102276c3ab668"),
    category: "Animal",
    email: "hrm.2021@outlook.com",
    title: "Hello everybody",
    content: "Hello everyone, Nice to meet you.\nI am from Russian Federation.\nMy name is Dmitriy Lotov.\nThanks.\nBest regard...\n",
    __v: NumberInt("0"),
    language: "GR"
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
    "created_at": ISODate("2021-06-10T11:17:35Z"),
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
    "created_at": ISODate("2021-06-10T11:20:03Z"),
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
    "created_at": ISODate("2021-06-15T17:08:21Z"),
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
    "created_at": ISODate("2021-06-15T17:49:02Z"),
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
    "created_at": ISODate("2021-06-15T17:52:17Z"),
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
    "created_at": ISODate("2021-06-16T08:34:08Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_2021516134020.jpg",
    language: "GR",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae4cf40576d324055e898"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "API integration",
    content: "<p>I would like to integrate 2 different apis into 1 database and have that turn into an single api firebase or pub/sub<br />\nThen to test the data pulls and displays in android and ios properly by connecting to database or API whatever is best. Must be something better than or same as themeforest admin api themes . `We are recreating the 3 highly documented apis into 1 single api system to be used for websites/ios/android app and ready to use for apps with tokens, directory, urls of different api php and full system of combining 3 api systems to make it work under 1. api 1 should be the dominant while 2 and 3 are backup incase 1 is missing a team. This is for sports. 2 langauges will be made with this please . With 30 day support and fully functional.<br />\nthanks</p>\n\n<p>We will add admin panel to make sure we can see all data</p>\n\n<p>make sure all data visible all tables in admin</p>\n\n<p>This data needs to be ready for use in ios/android direct connect to db</p>\n\n<p>The point is to take data from 2 apis and have it in our own database then use that data in apps with data coming from 2 apis into databasea/admin panel (logic) and ready to be used properly in ios/android</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T05:59:43Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_2021516225913204.jpg",
    language: "EN",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae595ca0a973d68f9feb3"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "Ενσωμάτωση API",
    content: "<p>&Theta;&alpha; ή&theta;&epsilon;&lambda;&alpha; &nu;&alpha; &epsilon;&nu;&sigma;&omega;&mu;&alpha;&tau;ώ&sigma;&omega; 2 &delta;&iota;&alpha;&phi;&omicron;&rho;&epsilon;&tau;&iota;&kappa;ά Apis &sigma;&epsilon; 1 &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &nu;&alpha; &tau;&omicron; &mu;&epsilon;&tau;&alpha;&tau;&rho;έ&psi;&omega; &sigma;&epsilon; έ&nu;&alpha; api firebase ή pub / sub<br />\n&Sigma;&tau;&eta; &sigma;&upsilon;&nu;έ&chi;&epsilon;&iota;&alpha;, &gamma;&iota;&alpha; &nu;&alpha; &delta;&omicron;&kappa;&iota;&mu;ά&sigma;&epsilon;&tau;&epsilon; &tau;&alpha; &tau;&rho;&alpha;&beta;ή&gamma;&mu;&alpha;&tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &tau;&iota;&sigmaf; &omicron;&theta;ό&nu;&epsilon;&sigmaf; &sigma;&tau;&omicron; Android &kappa;&alpha;&iota; &tau;&omicron; iOS &sigma;&omega;&sigma;&tau;ά &sigma;&upsilon;&nu;&delta;έ&omicron;&nu;&tau;&alpha;&sigmaf; &tau;&eta; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; ή &tau;&omicron; API ό, &tau;&iota; &epsilon;ί&nu;&alpha;&iota; &kappa;&alpha;&lambda;ύ&tau;&epsilon;&rho;&omicron;. &Pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &kappa;ά&tau;&iota; &kappa;&alpha;&lambda;ύ&tau;&epsilon;&rho;&omicron; &alpha;&pi;ό ή &pi;&alpha;&rho;ό&mu;&omicron;&iota;&omicron; &mu;&epsilon; &tau;&alpha; &pi;&iota;&omicron; &delta;&eta;&mu;&omicron;&phi;&iota;&lambda;ή &theta;έ&mu;&alpha;&tau;&alpha; &delta;&iota;&alpha;&chi;&epsilon;&iota;&rho;&iota;&sigma;&tau;ή api. &laquo;&Alpha;&nu;&alpha;&delta;&eta;&mu;&iota;&omicron;&upsilon;&rho;&gamma;&omicron;ύ&mu;&epsilon; &tau;&alpha; 3 ά&kappa;&rho;&omega;&sigmaf; &tau;&epsilon;&kappa;&mu;&eta;&rho;&iota;&omega;&mu;έ&nu;&alpha; Apis &sigma;&epsilon; 1 &mu;&epsilon;&mu;&omicron;&nu;&omega;&mu;έ&nu;&omicron; &sigma;ύ&sigma;&tau;&eta;&mu;&alpha; api &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &sigma;&epsilon; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&upsilon;&sigmaf; / iOS / Android &kappa;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &mu;&epsilon; &epsilon;&phi;&alpha;&rho;&mu;&omicron;&gamma;έ&sigmaf; &mu;&epsilon; &delta;&iota;&alpha;&kappa;&rho;&iota;&tau;&iota;&kappa;ά, &kappa;&alpha;&tau;ά&lambda;&omicron;&gamma;&omicron;, &delta;&iota;&epsilon;&upsilon;&theta;ύ&nu;&sigma;&epsilon;&iota;&sigmaf; URL &delta;&iota;&alpha;&phi;&omicron;&rho;&epsilon;&tau;&iota;&kappa;ώ&nu; api php &kappa;&alpha;&iota; &pi;&lambda;ή&rho;&epsilon;&sigmaf; &sigma;ύ&sigma;&tau;&eta;&mu;&alpha; &sigma;&upsilon;&nu;&delta;&upsilon;&alpha;&sigma;&mu;&omicron;ύ 3 &sigma;&upsilon;&sigma;&tau;&eta;&mu;ά&tau;&omega;&nu; api &gamma;&iota;&alpha; &delta;&eta;&mu;&iota;&omicron;&upsilon;&rho;&gamma;ί&alpha; &lambda;&epsilon;&iota;&tau;&omicron;&upsilon;&rho;&gamma;&epsilon;ί &kappa;ά&tau;&omega; &alpha;&pi;ό &tau;&omicron; 1. api 1 &pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &tau;&omicron; &kappa;&upsilon;&rho;ί&alpha;&rho;&chi;&omicron;, &epsilon;&nu;ώ &tau;&alpha; 2 &kappa;&alpha;&iota; 3 &epsilon;ί&nu;&alpha;&iota; &epsilon;&phi;&epsilon;&delta;&rho;&iota;&kappa;ά &sigma;&epsilon; &pi;&epsilon;&rho;ί&pi;&tau;&omega;&sigma;&eta; &pi;&omicron;&upsilon; 1 &lambda;&epsilon;ί&pi;&epsilon;&iota; &mu;&iota;&alpha; &omicron;&mu;ά&delta;&alpha;. &Alpha;&upsilon;&tau;ό &epsilon;ί&nu;&alpha;&iota; &gamma;&iota;&alpha; &sigma;&pi;&omicron;&rho;. 2 &gamma;&lambda;ώ&sigma;&sigma;&epsilon;&sigmaf; &theta;&alpha; &gamma;ί&nu;&omicron;&upsilon;&nu; &mu;&epsilon; &alpha;&upsilon;&tau;ό &pi;&alpha;&rho;&alpha;&kappa;&alpha;&lambda;ώ. &Mu;&epsilon; &upsilon;&pi;&omicron;&sigma;&tau;ή&rho;&iota;&xi;&eta; 30 &eta;&mu;&epsilon;&rho;ώ&nu; &kappa;&alpha;&iota; &pi;&lambda;ή&rho;&omega;&sigmaf; &lambda;&epsilon;&iota;&tau;&omicron;&upsilon;&rho;&gamma;&iota;&kappa;ό.<br />\n&epsilon;&upsilon;&chi;&alpha;&rho;&iota;&sigma;&tau;ώ</p>\n\n<p>&Theta;&alpha; &pi;&rho;&omicron;&sigma;&theta;έ&sigma;&omicron;&upsilon;&mu;&epsilon; &tau;&omicron;&nu; &pi;ί&nu;&alpha;&kappa;&alpha; &delta;&iota;&alpha;&chi;&epsilon;ί&rho;&iota;&sigma;&eta;&sigmaf; &gamma;&iota;&alpha; &nu;&alpha; &beta;&epsilon;&beta;&alpha;&iota;&omega;&theta;&omicron;ύ&mu;&epsilon; ό&tau;&iota; &mu;&pi;&omicron;&rho;&omicron;ύ&mu;&epsilon; &nu;&alpha; &delta;&omicron;ύ&mu;&epsilon; ό&lambda;&alpha; &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha;</p>\n\n<p>&beta;&epsilon;&beta;&alpha;&iota;&omega;&theta;&epsilon;ί&tau;&epsilon; ό&tau;&iota; ό&lambda;&alpha; &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &omicron;&rho;&alpha;&tau;ά &sigma;&epsilon; ό&lambda;&omicron;&upsilon;&sigmaf; &tau;&omicron;&upsilon;&sigmaf; &pi;ί&nu;&alpha;&kappa;&epsilon;&sigmaf; &sigma;&tau;&omicron; &delta;&iota;&alpha;&chi;&epsilon;&iota;&rho;&iota;&sigma;&tau;ή</p>\n\n<p>&Alpha;&upsilon;&tau;ά &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &sigma;&tau;&omicron; ios / android &alpha;&pi;&epsilon;&upsilon;&theta;&epsilon;ί&alpha;&sigmaf; &sigma;ύ&nu;&delta;&epsilon;&sigma;&eta; &sigma;&tau;&omicron; db</p>\n\n<p>&Tau;&omicron; &theta;έ&mu;&alpha; &epsilon;ί&nu;&alpha;&iota; &nu;&alpha; &pi;ά&rho;&omicron;&upsilon;&mu;&epsilon; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &alpha;&pi;ό 2 Apis &kappa;&alpha;&iota; &nu;&alpha; &tau;&alpha; έ&chi;&omicron;&upsilon;&mu;&epsilon; &sigma;&tau;&eta; &delta;&iota;&kappa;ή &mu;&alpha;&sigmaf; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &sigma;&tau;&eta; &sigma;&upsilon;&nu;έ&chi;&epsilon;&iota;&alpha; &nu;&alpha; &chi;&rho;&eta;&sigma;&iota;&mu;&omicron;&pi;&omicron;&iota;ή&sigma;&omicron;&upsilon;&mu;&epsilon; &alpha;&upsilon;&tau;ά &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &sigma;&epsilon; &epsilon;&phi;&alpha;&rho;&mu;&omicron;&gamma;έ&sigmaf; &mu;&epsilon; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &pi;&omicron;&upsilon; &pi;&rho;&omicron;έ&rho;&chi;&omicron;&nu;&tau;&alpha;&iota; &alpha;&pi;ό 2 Apis &sigma;&tau;&eta; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu;a / admin panel (&lambda;&omicron;&gamma;&iota;&kappa;ή) &kappa;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &nu;&alpha; &chi;&rho;&eta;&sigma;&iota;&mu;&omicron;&pi;&omicron;&iota;&eta;&theta;&omicron;ύ&nu; &sigma;&omega;&sigma;&tau;ά &sigma;&tau;&omicron; iOS / Android</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T06:03:01Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_20215162325365.jpg",
    language: "GR",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae5aeca0a973d68f9feb5"),
    "category_id": "60cae5a2ca0a973d68f9feb4",
    category: "Job",
    title: "Ενσωμάτωση API",
    content: "<p>&Theta;&alpha; ή&theta;&epsilon;&lambda;&alpha; &nu;&alpha; &epsilon;&nu;&sigma;&omega;&mu;&alpha;&tau;ώ&sigma;&omega; 2 &delta;&iota;&alpha;&phi;&omicron;&rho;&epsilon;&tau;&iota;&kappa;ά Apis &sigma;&epsilon; 1 &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &nu;&alpha; &tau;&omicron; &mu;&epsilon;&tau;&alpha;&tau;&rho;έ&psi;&omega; &sigma;&epsilon; έ&nu;&alpha; api firebase ή pub / sub<br />\n&Sigma;&tau;&eta; &sigma;&upsilon;&nu;έ&chi;&epsilon;&iota;&alpha;, &gamma;&iota;&alpha; &nu;&alpha; &delta;&omicron;&kappa;&iota;&mu;ά&sigma;&epsilon;&tau;&epsilon; &tau;&alpha; &tau;&rho;&alpha;&beta;ή&gamma;&mu;&alpha;&tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &tau;&iota;&sigmaf; &omicron;&theta;ό&nu;&epsilon;&sigmaf; &sigma;&tau;&omicron; Android &kappa;&alpha;&iota; &tau;&omicron; iOS &sigma;&omega;&sigma;&tau;ά &sigma;&upsilon;&nu;&delta;έ&omicron;&nu;&tau;&alpha;&sigmaf; &tau;&eta; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; ή &tau;&omicron; API ό, &tau;&iota; &epsilon;ί&nu;&alpha;&iota; &kappa;&alpha;&lambda;ύ&tau;&epsilon;&rho;&omicron;. &Pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &kappa;ά&tau;&iota; &kappa;&alpha;&lambda;ύ&tau;&epsilon;&rho;&omicron; &alpha;&pi;ό ή &pi;&alpha;&rho;ό&mu;&omicron;&iota;&omicron; &mu;&epsilon; &tau;&alpha; &pi;&iota;&omicron; &delta;&eta;&mu;&omicron;&phi;&iota;&lambda;ή &theta;έ&mu;&alpha;&tau;&alpha; &delta;&iota;&alpha;&chi;&epsilon;&iota;&rho;&iota;&sigma;&tau;ή api. &laquo;&Alpha;&nu;&alpha;&delta;&eta;&mu;&iota;&omicron;&upsilon;&rho;&gamma;&omicron;ύ&mu;&epsilon; &tau;&alpha; 3 ά&kappa;&rho;&omega;&sigmaf; &tau;&epsilon;&kappa;&mu;&eta;&rho;&iota;&omega;&mu;έ&nu;&alpha; Apis &sigma;&epsilon; 1 &mu;&epsilon;&mu;&omicron;&nu;&omega;&mu;έ&nu;&omicron; &sigma;ύ&sigma;&tau;&eta;&mu;&alpha; api &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &sigma;&epsilon; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&upsilon;&sigmaf; / iOS / Android &kappa;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &mu;&epsilon; &epsilon;&phi;&alpha;&rho;&mu;&omicron;&gamma;έ&sigmaf; &mu;&epsilon; &delta;&iota;&alpha;&kappa;&rho;&iota;&tau;&iota;&kappa;ά, &kappa;&alpha;&tau;ά&lambda;&omicron;&gamma;&omicron;, &delta;&iota;&epsilon;&upsilon;&theta;ύ&nu;&sigma;&epsilon;&iota;&sigmaf; URL &delta;&iota;&alpha;&phi;&omicron;&rho;&epsilon;&tau;&iota;&kappa;ώ&nu; api php &kappa;&alpha;&iota; &pi;&lambda;ή&rho;&epsilon;&sigmaf; &sigma;ύ&sigma;&tau;&eta;&mu;&alpha; &sigma;&upsilon;&nu;&delta;&upsilon;&alpha;&sigma;&mu;&omicron;ύ 3 &sigma;&upsilon;&sigma;&tau;&eta;&mu;ά&tau;&omega;&nu; api &gamma;&iota;&alpha; &delta;&eta;&mu;&iota;&omicron;&upsilon;&rho;&gamma;ί&alpha; &lambda;&epsilon;&iota;&tau;&omicron;&upsilon;&rho;&gamma;&epsilon;ί &kappa;ά&tau;&omega; &alpha;&pi;ό &tau;&omicron; 1. api 1 &pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &tau;&omicron; &kappa;&upsilon;&rho;ί&alpha;&rho;&chi;&omicron;, &epsilon;&nu;ώ &tau;&alpha; 2 &kappa;&alpha;&iota; 3 &epsilon;ί&nu;&alpha;&iota; &epsilon;&phi;&epsilon;&delta;&rho;&iota;&kappa;ά &sigma;&epsilon; &pi;&epsilon;&rho;ί&pi;&tau;&omega;&sigma;&eta; &pi;&omicron;&upsilon; 1 &lambda;&epsilon;ί&pi;&epsilon;&iota; &mu;&iota;&alpha; &omicron;&mu;ά&delta;&alpha;. &Alpha;&upsilon;&tau;ό &epsilon;ί&nu;&alpha;&iota; &gamma;&iota;&alpha; &sigma;&pi;&omicron;&rho;. 2 &gamma;&lambda;ώ&sigma;&sigma;&epsilon;&sigmaf; &theta;&alpha; &gamma;ί&nu;&omicron;&upsilon;&nu; &mu;&epsilon; &alpha;&upsilon;&tau;ό &pi;&alpha;&rho;&alpha;&kappa;&alpha;&lambda;ώ. &Mu;&epsilon; &upsilon;&pi;&omicron;&sigma;&tau;ή&rho;&iota;&xi;&eta; 30 &eta;&mu;&epsilon;&rho;ώ&nu; &kappa;&alpha;&iota; &pi;&lambda;ή&rho;&omega;&sigmaf; &lambda;&epsilon;&iota;&tau;&omicron;&upsilon;&rho;&gamma;&iota;&kappa;ό.<br />\n&epsilon;&upsilon;&chi;&alpha;&rho;&iota;&sigma;&tau;ώ</p>\n\n<p>&Theta;&alpha; &pi;&rho;&omicron;&sigma;&theta;έ&sigma;&omicron;&upsilon;&mu;&epsilon; &tau;&omicron;&nu; &pi;ί&nu;&alpha;&kappa;&alpha; &delta;&iota;&alpha;&chi;&epsilon;ί&rho;&iota;&sigma;&eta;&sigmaf; &gamma;&iota;&alpha; &nu;&alpha; &beta;&epsilon;&beta;&alpha;&iota;&omega;&theta;&omicron;ύ&mu;&epsilon; ό&tau;&iota; &mu;&pi;&omicron;&rho;&omicron;ύ&mu;&epsilon; &nu;&alpha; &delta;&omicron;ύ&mu;&epsilon; ό&lambda;&alpha; &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha;</p>\n\n<p>&beta;&epsilon;&beta;&alpha;&iota;&omega;&theta;&epsilon;ί&tau;&epsilon; ό&tau;&iota; ό&lambda;&alpha; &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &epsilon;ί&nu;&alpha;&iota; &omicron;&rho;&alpha;&tau;ά &sigma;&epsilon; ό&lambda;&omicron;&upsilon;&sigmaf; &tau;&omicron;&upsilon;&sigmaf; &pi;ί&nu;&alpha;&kappa;&epsilon;&sigmaf; &sigma;&tau;&omicron; &delta;&iota;&alpha;&chi;&epsilon;&iota;&rho;&iota;&sigma;&tau;ή</p>\n\n<p>&Alpha;&upsilon;&tau;ά &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;ί&nu;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &gamma;&iota;&alpha; &chi;&rho;ή&sigma;&eta; &sigma;&tau;&omicron; ios / android &alpha;&pi;&epsilon;&upsilon;&theta;&epsilon;ί&alpha;&sigmaf; &sigma;ύ&nu;&delta;&epsilon;&sigma;&eta; &sigma;&tau;&omicron; db</p>\n\n<p>&Tau;&omicron; &theta;έ&mu;&alpha; &epsilon;ί&nu;&alpha;&iota; &nu;&alpha; &pi;ά&rho;&omicron;&upsilon;&mu;&epsilon; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &alpha;&pi;ό 2 Apis &kappa;&alpha;&iota; &nu;&alpha; &tau;&alpha; έ&chi;&omicron;&upsilon;&mu;&epsilon; &sigma;&tau;&eta; &delta;&iota;&kappa;ή &mu;&alpha;&sigmaf; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &kappa;&alpha;&iota; &sigma;&tau;&eta; &sigma;&upsilon;&nu;έ&chi;&epsilon;&iota;&alpha; &nu;&alpha; &chi;&rho;&eta;&sigma;&iota;&mu;&omicron;&pi;&omicron;&iota;ή&sigma;&omicron;&upsilon;&mu;&epsilon; &alpha;&upsilon;&tau;ά &tau;&alpha; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &sigma;&epsilon; &epsilon;&phi;&alpha;&rho;&mu;&omicron;&gamma;έ&sigmaf; &mu;&epsilon; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&alpha; &pi;&omicron;&upsilon; &pi;&rho;&omicron;έ&rho;&chi;&omicron;&nu;&tau;&alpha;&iota; &alpha;&pi;ό 2 Apis &sigma;&tau;&eta; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu;a / admin panel (&lambda;&omicron;&gamma;&iota;&kappa;ή) &kappa;&alpha;&iota; έ&tau;&omicron;&iota;&mu;&alpha; &nu;&alpha; &chi;&rho;&eta;&sigma;&iota;&mu;&omicron;&pi;&omicron;&iota;&eta;&theta;&omicron;ύ&nu; &sigma;&omega;&sigma;&tau;ά &sigma;&tau;&omicron; iOS / Android</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T06:03:26Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_20215162325365.jpg",
    language: "GR",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae685ca0a973d68f9feb6"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "I need a webbased bot that will upload a video file to YOUTUBE, RUMBLE, ODYSEE AND BITCHUTE automatically",
    content: "<p>The user will go to site and login. He/she gets a 1 week free trial, then can pay $10 per month to use the features. Once logged in, user must enter the username and password for his/her youtube, rumble, odysee and bitchute channels. That info is stored in our data base so user can enter that info one time and its saved. When the user wants to upload a video to YT, RUMB, ODYSEE AND BITCHUTE user logs into our site, clicks on the upload tab/button and sees TITLE FIELD, DESCRIPTION FIELD, UPOAD VIDEO BUTTON, AND UPLOAD THUMBNAIL BUTTON. After user enters that information he can chose to CHECK OFF 1 or all 4 of the sites. So for example the user checks off all 4. and presses start. The site/bot will one by one upload that video and details to each one of the sites listed above. (user can view the uploading process) (if the site has human captcha stop points, then THE USER can enter that info manually and press continue)</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T06:07:01Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_202151623654762.jpg",
    language: "EN",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae6a2ca0a973d68f9feb7"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "Χρειάζομαι ένα διαδικτυακό bot που θα ανεβάσει αυτόματα ένα αρχείο βίντεο στο YOUTUBE, RUMBLE, ODYSEE και BITCHUTE",
    content: "<p>&Omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &theta;&alpha; &mu;&epsilon;&tau;&alpha;&beta;&epsilon;ί &sigma;&tau;&omicron;&nu; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron; &kappa;&alpha;&iota; &theta;&alpha; &sigma;&upsilon;&nu;&delta;&epsilon;&theta;&epsilon;ί. &Pi;&alpha;ί&rho;&nu;&epsilon;&iota; &mu;&iota;&alpha; &delta;&omega;&rho;&epsilon;ά&nu; &delta;&omicron;&kappa;&iota;&mu;ή 1 &epsilon;&beta;&delta;&omicron;&mu;ά&delta;&alpha;&sigmaf; &kappa;&alpha;&iota; &mu;&epsilon;&tau;ά &mu;&pi;&omicron;&rho;&epsilon;ί &nu;&alpha; &pi;&lambda;&eta;&rho;ώ&sigma;&epsilon;&iota; 10 $ &alpha;&nu;ά &mu;ή&nu;&alpha; &gamma;&iota;&alpha; &nu;&alpha; &chi;&rho;&eta;&sigma;&iota;&mu;&omicron;&pi;&omicron;&iota;ή&sigma;&epsilon;&iota; &tau;&iota;&sigmaf; &delta;&upsilon;&nu;&alpha;&tau;ό&tau;&eta;&tau;&epsilon;&sigmaf;. &Mu;ό&lambda;&iota;&sigmaf; &sigma;&upsilon;&nu;&delta;&epsilon;&theta;&epsilon;ί, &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &pi;&rho;έ&pi;&epsilon;&iota; &nu;&alpha; &epsilon;&iota;&sigma;&alpha;&gamma;ά&gamma;&epsilon;&iota; &tau;&omicron; ό&nu;&omicron;&mu;&alpha; &chi;&rho;ή&sigma;&tau;&eta; &kappa;&alpha;&iota; &tau;&omicron;&nu; &kappa;&omega;&delta;&iota;&kappa;ό &pi;&rho;ό&sigma;&beta;&alpha;&sigma;&eta;&sigmaf; &gamma;&iota;&alpha; &tau;&alpha; &kappa;&alpha;&nu;ά&lambda;&iota;&alpha; youtube, rumble, odysee &kappa;&alpha;&iota; bitchute. &Alpha;&upsilon;&tau;έ&sigmaf; &omicron;&iota; &pi;&lambda;&eta;&rho;&omicron;&phi;&omicron;&rho;ί&epsilon;&sigmaf; &alpha;&pi;&omicron;&theta;&eta;&kappa;&epsilon;ύ&omicron;&nu;&tau;&alpha;&iota; &sigma;&tau;&eta; &beta;ά&sigma;&eta; &delta;&epsilon;&delta;&omicron;&mu;έ&nu;&omega;&nu; &mu;&alpha;&sigmaf;, ώ&sigma;&tau;&epsilon; &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &nu;&alpha; &mu;&pi;&omicron;&rho;&epsilon;ί &nu;&alpha; &epsilon;&iota;&sigma;&alpha;&gamma;ά&gamma;&epsilon;&iota; &alpha;&upsilon;&tau;έ&sigmaf; &tau;&iota;&sigmaf; &pi;&lambda;&eta;&rho;&omicron;&phi;&omicron;&rho;ί&epsilon;&sigmaf; &mu;ί&alpha; &phi;&omicron;&rho;ά &kappa;&alpha;&iota; &nu;&alpha; &alpha;&pi;&omicron;&theta;&eta;&kappa;&epsilon;&upsilon;&tau;&epsilon;ί. Ό&tau;&alpha;&nu; &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &theta;έ&lambda;&epsilon;&iota; &nu;&alpha; &alpha;&nu;&epsilon;&beta;ά&sigma;&epsilon;&iota; έ&nu;&alpha; &beta;ί&nu;&tau;&epsilon;&omicron; &sigma;&tau;&omicron; YT, RUMB, ODYSEE &kappa;&alpha;&iota; BITCHUTE, &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &sigma;&upsilon;&nu;&delta;έ&epsilon;&tau;&alpha;&iota; &sigma;&tau;&omicron;&nu; &iota;&sigma;&tau;ό&tau;&omicron;&pi;ό &mu;&alpha;&sigmaf;, &kappa;ά&nu;&epsilon;&iota; &kappa;&lambda;&iota;&kappa; &sigma;&tau;&eta;&nu; &kappa;&alpha;&rho;&tau;έ&lambda;&alpha; / &kappa;&omicron;&upsilon;&mu;&pi;ί &mu;&epsilon;&tau;&alpha;&phi;ό&rho;&tau;&omega;&sigma;&eta;&sigmaf; &kappa;&alpha;&iota; &beta;&lambda;έ&pi;&epsilon;&iota; &Tau;&Iota;&Tau;&Lambda;&Omicron;&Sigma; &Pi;&Epsilon;&Delta;&Iota;&Omicron;, &Pi;&Epsilon;&Delta;&Iota;&Omicron; &Pi;&Epsilon;&Rho;&Iota;&Gamma;&Rho;&Alpha;&Phi;&Eta;&Sigma;, &Alpha;&Nu;&Tau;&Iota;&Gamma;&Rho;&Alpha;&Phi;&Eta; &Kappa;&Omicron;&Upsilon;&Mu;&Pi;&Iota; &Beta;&Iota;&Nu;&Tau;&Epsilon;&Omicron; &Kappa;&Alpha;&Iota; &Alpha;&Pi;&Omicron;&Sigma;&Upsilon;&Nu;&Delta;&Epsilon;&Sigma;&Eta; &Kappa;&Omicron;&Upsilon;&Mu;&Pi;&Iota;&Omicron;&Upsilon;. &Alpha;&phi;&omicron;ύ &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &epsilon;&iota;&sigma;&alpha;&gamma;ά&gamma;&epsilon;&iota; &alpha;&upsilon;&tau;έ&sigmaf; &tau;&iota;&sigmaf; &pi;&lambda;&eta;&rho;&omicron;&phi;&omicron;&rho;ί&epsilon;&sigmaf;, &mu;&pi;&omicron;&rho;&epsilon;ί &nu;&alpha; &epsilon;&pi;&iota;&lambda;έ&xi;&epsilon;&iota; &nu;&alpha; &Epsilon;&Lambda;&Epsilon;&Gamma;&Chi;&Epsilon;&Iota; 1 ή &kappa;&alpha;&iota; &tau;&omicron;&upsilon;&sigmaf; 4 &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&upsilon;&sigmaf;. Έ&tau;&sigma;&iota;, &gamma;&iota;&alpha; &pi;&alpha;&rho;ά&delta;&epsilon;&iota;&gamma;&mu;&alpha;, &omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &epsilon;&lambda;έ&gamma;&chi;&epsilon;&iota; ό&lambda;&alpha; &tau;&alpha; 4. &kappa;&alpha;&iota; &pi;&alpha;&tau;ά &tau;&omicron; start &Omicron; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&sigmaf; / bot &theta;&alpha; &alpha;&nu;&epsilon;&beta;ά&sigma;&epsilon;&iota; έ&nu;&alpha; &pi;&rho;&omicron;&sigmaf; έ&nu;&alpha; &alpha;&upsilon;&tau;ό &tau;&omicron; &beta;ί&nu;&tau;&epsilon;&omicron; &kappa;&alpha;&iota; &lambda;&epsilon;&pi;&tau;&omicron;&mu;έ&rho;&epsilon;&iota;&epsilon;&sigmaf; &sigma;&epsilon; &kappa;&alpha;&theta;έ&nu;&alpha;&nu; &alpha;&pi;ό &tau;&omicron;&upsilon;&sigmaf; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&upsilon;&sigmaf; &pi;&omicron;&upsilon; &alpha;&nu;&alpha;&phi;έ&rho;&omicron;&nu;&tau;&alpha;&iota; &pi;&alpha;&rho;&alpha;&pi;ά&nu;&omega;. (&omicron; &chi;&rho;ή&sigma;&tau;&eta;&sigmaf; &mu;&pi;&omicron;&rho;&epsilon;ί &nu;&alpha; &delta;&epsilon;&iota; &tau;&eta; &delta;&iota;&alpha;&delta;&iota;&kappa;&alpha;&sigma;ί&alpha; &mu;&epsilon;&tau;&alpha;&phi;ό&rho;&tau;&omega;&sigma;&eta;&sigmaf;) (&epsilon;ά&nu; &omicron; &iota;&sigma;&tau;ό&tau;&omicron;&pi;&omicron;&sigmaf; έ&chi;&epsilon;&iota; &alpha;&nu;&theta;&rho;ώ&pi;&iota;&nu;&alpha; &sigma;&eta;&mu;&epsilon;ί&alpha; &sigma;&tau;ά&sigma;&eta;&sigmaf; captcha, &tau;ό&tau;&epsilon; &omicron; &Chi;&Rho;&Eta;&Sigma;&Tau;&Eta;&Sigma; &mu;&pi;&omicron;&rho;&epsilon;ί &nu;&alpha; &epsilon;&iota;&sigma;&alpha;&gamma;ά&gamma;&epsilon;&iota; &alpha;&upsilon;&tau;έ&sigmaf; &tau;&iota;&sigmaf; &pi;&lambda;&eta;&rho;&omicron;&phi;&omicron;&rho;ί&epsilon;&sigmaf; &mu;&epsilon; &mu;&eta; &alpha;&upsilon;&tau;ό&mu;&alpha;&tau;&omicron; &tau;&rho;ό&pi;&omicron; &kappa;&alpha;&iota; &pi;&alpha;&tau;ή&sigma;&tau;&epsilon; &sigma;&upsilon;&nu;έ&chi;&epsilon;&iota;&alpha;)</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T06:07:30Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_202151623654762.jpg",
    language: "GR",
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60cae72aca0a973d68f9feb8"),
    "category_id": "60c8c9d987e2dc2794257bb5",
    category: "Freelancer",
    title: "Shopping Cart Application Shippo integration",
    content: "<p>Request details I have a shopping cart application that I need to add shippo to for both the UI (React) and backend (Node and MongoDB). I need a developer who has done this before. The UI is very generic. Deliverables The shipping feature with Shippo should be able to do the following: UI to create labels and connect it to the customer Connect Shippo Tracking API to Order Status - right now the 3 types of statuses we have are Processing Shipped Delivered And add backend in ui to allow the customer to see the cost of shipping from shippo with the carrier they choose</p>\n",
    poster: "Dmitriy Lotov",
    "poster_id": "60b63a7ad2a7ea368cf9cf0a",
    "poster_email": "hrm.2021@outlook.com",
    "poster_phone": "+7501458786",
    "created_at": ISODate("2021-06-17T06:09:46Z"),
    shared: NumberInt("0"),
    image: "post_60b63a7ad2a7ea368cf9cf0a_202151623654762.jpg",
    language: "EN",
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
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60cba1b16cfeb70d701f67e7"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "sdfadfsafdas",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60cba2526cfeb70d701f67e8"),
    category: "Movie",
    email: "hrm.2021@outlook.com",
    content: "asdfasdfasdfa",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60cba28a6cfeb70d701f67e9"),
    category: "Movie",
    email: "hrm.2021@outlook.com",
    content: "asdfasdfasdfa",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60cba3242ea4fe16b49e87bb"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "asdfasdfasdfas",
    __v: NumberInt("0")
} ]);
db.getCollection("recommendcategories").insert([ {
    _id: ObjectId("60cba3a03f6b7d2cc0abe305"),
    category: "Article",
    email: "hrm.2021@outlook.com",
    content: "dasfasdfasfdasdfa",
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
db.getCollection("supports").insert([ {
    _id: ObjectId("60cb9e146ccecd3a3075b075"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "Hello.\r\nNice to meet you.",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cb9fe27ff9a82c141d8a31"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sdfasdfasfd",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba00a7ff9a82c141d8a32"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sdfasdfasfd",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba02d7ff9a82c141d8a33"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "asdfasfdasfd",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba05f7ff9a82c141d8a34"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "asdfafasf",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba0d06cfeb70d701f67e3"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sadfdasdfdadsdfas",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba12e6cfeb70d701f67e4"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sdfasdfasfasf",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba15e6cfeb70d701f67e5"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sdfasdfasfasf",
    __v: NumberInt("0")
} ]);
db.getCollection("supports").insert([ {
    _id: ObjectId("60cba17e6cfeb70d701f67e6"),
    name: "Aleksey",
    email: "hrm.2021@outlook.com",
    content: "sdfasdfasfasf",
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
    _id: ObjectId("60b5fb9b2577d80a0c4e5f38"),
    language: "EN",
    title: "Beginner",
    type: "training",
    description: "Beginner video",
    url: "../../videos/trainings/video_60b63a7ad2a7ea368cf9cf0a_20215121923193.mp4",
    __v: NumberInt("0")
} ]);
db.getCollection("trainings").insert([ {
    _id: ObjectId("60b5fbab2577d80a0c4e5f39"),
    language: "GR",
    title: "Beginner",
    type: "training",
    description: "Beginner video",
    url: "../../videos/trainings/video_60b63a7ad2a7ea368cf9cf0a_20215121939252.mp4",
    __v: NumberInt("0")
} ]);
db.getCollection("trainings").insert([ {
    _id: ObjectId("60b5fbc62577d80a0c4e5f3a"),
    language: "GR",
    title: "Professional",
    type: "training",
    description: "Professional video",
    url: "../../videos/trainings/video_60b63a7ad2a7ea368cf9cf0a_2021512206666.mp4",
    __v: NumberInt("0")
} ]);
db.getCollection("trainings").insert([ {
    _id: ObjectId("60b5fbcc2577d80a0c4e5f3b"),
    language: "EN",
    title: "Professional",
    type: "training",
    description: "Professional video",
    url: "../../videos/trainings/video_60b63a7ad2a7ea368cf9cf0a_20215122012329.mp4",
    __v: NumberInt("0")
} ]);
db.getCollection("trainings").insert([ {
    _id: ObjectId("60b5fbdf2577d80a0c4e5f3c"),
    language: "EN",
    title: "info",
    type: "info",
    description: "Information video",
    url: "../../videos/info.mp4",
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
    "created_at": ISODate("2021-06-16T14:47:40Z"),
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
    "shared_cnt": 0,
    ask: NumberInt("2"),
    language: "EN"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60b7c2a8f2667e2ea4ca3a2e"),
    name: "Maksim",
    surname: "Klazhnov",
    phone: "+75846893453",
    email: "maksim@gmail.com",
    password: "$2a$08$ewTyRIC7wqBZ7zwYo7QmEOGdJdWm/I7dSid0u6voOZL2easIHACnC",
    membership: NumberInt("2"),
    "created_at": ISODate("2021-06-04T19:50:02Z"),
    permission: NumberInt("2"),
    state: NumberInt("1"),
    __v: NumberInt("0"),
    photo: "60b7c2a8f2667e2ea4ca3a2e.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    "left_membership": NumberInt("4"),
    industry: "Insurrance",
    "shared_cnt": 0,
    ask: 0,
    language: "EN"
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
    "created_at": ISODate("2021-06-10T17:43:49Z"),
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
    "started_at": ISODate("2021-06-10T17:43:49Z"),
    "shared_cnt": 0,
    ask: 0,
    language: "EN"
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
    "created_at": ISODate("2021-06-15T08:15:52Z"),
    permission: NumberInt("2"),
    photo: "60bdf2f692b1aa3bc89e5154.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "started_at": ISODate("2021-06-15T08:15:52Z"),
    "card_number": "4111 1111 1111 1111",
    cvc: NumberInt("145"),
    "expire_month": NumberInt("6"),
    "expire_year": NumberInt("2021"),
    "shared_cnt": NumberInt("1"),
    ask: null,
    language: "EN"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c04c4165536b1c58d2dc2d"),
    name: "code",
    surname: "darkhorse",
    phone: "+7912345678",
    email: "codedarkhorse@gmail.com",
    password: "$2a$08$Xjl5qEgd0q2h14dpDZN9X.XZnyKXrpScJZ7/STV8VczPgeeMvN/H.",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    "card_number": "1232 2222 2222 1321",
    "expire_month": NumberInt("3"),
    cvc: NumberInt("3234"),
    "created_at": ISODate("2021-06-16T03:56:20Z"),
    "started_at": ISODate("2021-06-06T15:07:19Z"),
    permission: NumberInt("2"),
    photo: "60c04c4165536b1c58d2dc2d.png",
    introduction: "I'm aleksey...",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    "shared_cnt": 0,
    ask: NumberInt("2"),
    language: "EN"
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
    "created_at": ISODate("2021-06-09T05:14:37Z"),
    "started_at": null,
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Insurrance",
    __v: NumberInt("0"),
    "expire_year": null,
    "shared_cnt": 0,
    ask: 0,
    language: "EN"
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
    "created_at": ISODate("2021-06-11T06:41:46Z"),
    "started_at": ISODate("2021-06-11T06:41:46Z"),
    permission: NumberInt("2"),
    photo: "60c099f99484a11bb40d0a3d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    "shared_cnt": 0,
    ask: 0,
    language: "EN"
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
    "created_at": ISODate("2021-06-12T06:45:22Z"),
    "started_at": ISODate("2021-06-12T06:45:22Z"),
    permission: NumberInt("2"),
    photo: "60c457e17333b936a04dd580.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    ask: 0,
    language: "EN"
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
    "created_at": ISODate("2021-06-12T07:32:35Z"),
    "started_at": ISODate("2021-06-12T07:32:35Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    language: "EN"
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
    "created_at": ISODate("2021-06-14T06:23:09Z"),
    "started_at": ISODate("2021-06-14T06:23:09Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    industry: "Bank",
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    language: "EN"
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
    "created_at": ISODate("2021-06-15T08:06:16Z"),
    "started_at": ISODate("2021-06-15T08:06:16Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    language: "EN"
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
    "created_at": ISODate("2021-06-16T03:51:29Z"),
    "started_at": ISODate("2021-06-16T03:51:29Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2024"),
    language: "EN"
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
    ask: NumberInt("1"),
    "card_number": "4111 1111 1111 1111",
    "expire_month": NumberInt("11"),
    cvc: NumberInt("115"),
    "created_at": ISODate("2021-06-16T06:34:40Z"),
    "started_at": ISODate("2021-06-16T06:34:40Z"),
    permission: NumberInt("2"),
    photo: "60c99640de96cd444c43dd9d.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2021"),
    language: "EN"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60c9c61bdb21ee3c0c700608"),
    name: "que",
    surname: "que",
    phone: "+4579789897",
    email: "que@gmail.com",
    password: "$2a$08$y6gNxd3/pUoYaWWTmof84egqlmoAByjAkO/kPBlMdKqwA00jS/dIG",
    membership: NumberInt("3"),
    "left_membership": NumberInt("3"),
    ask: NumberInt("1"),
    "card_number": "4111 1111 1111 1111",
    "expire_month": NumberInt("12"),
    cvc: NumberInt("111"),
    "created_at": ISODate("2021-06-16T09:37:17Z"),
    "started_at": ISODate("2021-06-16T09:37:17Z"),
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    "expire_year": NumberInt("2020"),
    language: "EN"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60cf8ef9b3f4681254292d4c"),
    name: "Mohammed",
    surname: "Sharlin",
    phone: "+4679879878",
    email: "shalin@gmail.com",
    password: "$2a$08$1R4q0/OfgZ4wD98qcGdRtum7lsi3rto91l86CTra9agdqTOq8z5.e",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: NumberInt("2"),
    "card_number": "",
    "expire_month": NumberInt("0"),
    cvc: NumberInt("0"),
    "created_at": ISODate("2021-06-20T18:54:49Z"),
    "started_at": "2021-06-16 09:37:17.429",
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0"),
    language: "GR"
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60cf98189a7e74354c357124"),
    language: "GR",
    name: "Sharlin",
    surname: "sha",
    phone: "+4778797987",
    email: "sharlin@gmail.com",
    password: "$2a$08$rpUy4kSIMVW.qfUgZa1/bu1NVCwJ23XphBd4BNZUqMMGqMbXkKMXO",
    membership: NumberInt("4"),
    "left_membership": NumberInt("4"),
    ask: NumberInt("2"),
    "card_number": "",
    "expire_month": NumberInt("0"),
    cvc: NumberInt("0"),
    "created_at": ISODate("2021-06-20T19:33:44Z"),
    "started_at": "2021-06-16 09:37:17.429",
    permission: NumberInt("2"),
    photo: "avatar.png",
    introduction: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.",
    state: NumberInt("1"),
    "shared_cnt": NumberInt("0"),
    __v: NumberInt("0")
} ]);
