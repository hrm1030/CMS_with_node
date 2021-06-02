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

 Date: 02/06/2021 12:36:50
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
    _id: ObjectId("60b786de77e60a4334d30d28"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    content: "<p>Hello, everybody. Nice to meet you.</p>\n\n<p>My name is Dmitriy Lotov. I am from Russian.</p>\n\n<p>&nbsp;</p>\n",
    poster: "Dmitriy Lotov",
    "created_at": ISODate("2021-06-02T13:25:50.101Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60b78d56476fd64164c2ab92"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    content: "<p><img alt=\"\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIcSUNDX1BST0ZJTEUAAQEAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD////bAEMABwcHBwgHCAkJCAwMCwwMERAODhARGhIUEhQSGicYHRgYHRgnIyoiICIqIz4xKysxPkg8OTxIV05OV21obY+PwP/bAEMBBwcHBwgHCAkJCAwMCwwMERAODhARGhIUEhQSGicYHRgYHRgnIyoiICIqIz4xKysxPkg8OTxIV05OV21obY+PwP/AABEIARgBGAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBAUGBwj/xABAEAABBAEDAgMFBQcBBgcAAAABAAIDEQQSITEFQVFhcQYTIoGRByMyQqEUFVJicrHRwSQlNEOC4TNEU2NzkvD/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAnEQEBAAICAgICAgIDAQAAAAAAAQIRAzEhURJBBGETcSKBMkKRwf/aAAwDAQACEQMRAD8A8g9CisEKIFF2UqHQtKtwmCceCAfunPKEBFwgFyiACEJ90CC59EqTbpb8oBweUdDud0CNAJOarhBuis90A4uwnuvRNV7JgEwLskaSpKjskOz9k1eCe9k9oAK2SpGaTVe6B6DSakRBrhLnZMATeqkpNSZBpLyT0nCcBq3RAGkq7ogEA4HdGAUh2UgFp7MwCkB7IODaIG0yGNr9EkN8lJMMJEEF7oh6rEx7JWhHdF2QQhsnCFPfggCrZPSEIh4IPZ65Ti/BLhPt4oBAbJ680gmc4NBN0gQ6EysaN3C1nyTPJ+AkKvbjzup2uYrz8vfYFVn5sl7GlARtx+qjN+XpSUv7P4yfSyc+UUbH0TjqMoFEAqk4bd0mNaeXH6Ktlpot6iSQSwUrrMyJw5pYugDzUsWjVsSjZ/GNxj2vGxtGNllsa7lhp391bZK7h7arujcv2m4WLBKVpwBWyVeCpJjt3SsJFNSZHSFWmT1uiA4ARigKTD0RtGyAMAIqpMBwpKTAEqpFXinCcBuR8kkjtaSYYFik4KYcowAsgceiMDzQWiBQNjopxxwhDvNPqFoAv8pw0cpg4J9QQBUnDUtQ7DdEXiMFzh24RROwyPZGLPJWc6V0hJvYIHXK4ud+qJsdjYfqsrW2OOlc0TuT/dEIwdwHfRWvdkVZa0eQ/wAqUvjAAE31CW/S5ipiIA3oJ86Tuc0Hij5q+JHkANkY8eHBQvLC34muab77hL5L+PhTEl8RNJQOcLIMYG/dXnQtFOaK255CH4/I34jZP5QfC+lMRNJsNR/s1bhWfdeLa8wr8TZImEjTK3u07O+Se/VEw89M6OOSOnVbO/kFqNYx0dGqrnwRw5OI5vB53B5CKURR27Hsg7128wEtqkkigNePIY5OCLaVYBDhY4UUr4p4yzfV+Jjv9FRxcgiQsd2K1l8Obkx1fDUIBQ0pavfxQqmSOgnACevJON09g4CNqEDxUoCAKtgiCiksNNLNnGViStJsAiwOxBTDXrdD5qvDkNmbY2I5CsdkyC48lJRSOpJPybFu0+6QafBOB5LMHRWlRRgX2QA0nsKQR2j92kIiB5CJSCOu6L3fCYRCz2SyQQ1rfLdWGxnUPVBngteGgdtyoyXx+azWsDiN7U2ktNAhHHjurW9pDa2Hc+at4uJJkyU0VGOSscrHTjLbJFWOBj+Q4n6q/D0+SQVo2XRQYUMLQA0LQY1o4WF5fTqw4PbnWdGoCwCrLOkNArddAKUobYWd5Mm+PFjPpzf7qaOB+ib92AHYAfJdNoBTaB4JfyVf8WPpzJ6aAAWtooHdPk5AXVFnkhLArnJU/wAOPpxMnSnE3we6gOLM0ObfIuz4hd0YmnsoJMNjrocrTHOs8uCPOC1zHWbuwa81nva9s1n1C7fqHTRRc1m45XKzsDWua4AeHqunDLenFy8dx+lzCmD2adVkK7dErEwiGygcb8rac02tJ25MprR724TCrTV2Tb8qk9Jgpmi1VBKsRu33QEnu9T2f1BFkGLKLsNxqWi6L1HZWYm6ntoXuuS6hJKOo6o3EPY74T4UiA2iRjiW7Obzfl2Wrj5Aljvv3CrzkZ8nvY/gc6veN4APcj1VhmKzHBo7FMAkfykoZXAlJWB/szr2C0sD2f6nnuLcXEklI50t49V2XT+jMllYHN2vddsxw9neoMzWMJwZ2NjyAP+UR+GT08VhaJ283j+z72kd/5At/qcArTfs49ozzBGPWQL6DY5sjGvY4Oa4AgjggolO7vwbwJv2bdfrdsI/6wiH2bdeI3EI/6170UlZS/p4K77M+vOG0kDT/AFWoofsz9pg4iSbGLe1O/wCy9/SRo3hw+zfrPd8H/wBlx3XulTdLzRFkxkaRsedXovqJeM/aP0wDOhzDJ/4jdIbzRHgs+SX2047N608uDJZRbhV7ALpMPHbDC1oG/dUsaEa2kjhbUbdlyclr0OHH7INRtapmsUrYjssLXbJ0iDbUrQpBGAjDFCvaEtJSAUxAtINVBGRsh0g2pnBMG+ScVIh0FTNjB7ImN1EiuFbYygtcSs8dM+SBpBBGxXEdU6cBIaGxK9KLLPCyM/EbIwmltjetOblwlnTyxuMWP8KXQmMuZG5rTuOUsjF0PcO9r3P2b6L0bM6FgyS4ccji34nEUbC6MbbY8rlx19PCfdO7hCY/JfRj/ZH2ffzhAejiFRl9hegycMlZ6P8A8q/Ppg8A93XCZrCCvc5Ps66U78GXO31AcqEv2bRbmLqRB/mj/wAFMPKscuBae4WT1fp5ZM7IafhkOr0tepZfsH1bGaXxFk7R/Aad9Cuay8GV+LNA5hbK2yA4Ub7go2HnsMmiVhHJO4WzM/4FSj6Xk+81uZp0nv3U+QSBXCvwTOkO9+aSjldbmgeISVaG30JgxhlGlu++idG5kgBYQQ4HcELnIMgHajx3BCsmYuNdguW3Y9NPpWV+5nR40rycGVx905xv3DncNJ/h8PBduSuCaWTROhlaHMcKIPe1Y6P1WTByI+mZzyYnbYs7u/8A7bj4+BTx0btEkkloCSSSQCXmP2jMcR052+kawPVenLzX7RmuMHT3AmtThX03UZ/8avD/AJx5njjkrViGyzYRstOEcLgzetxdLbQpRWyibuj5WFdUS2EtlECb2SvdGjSXSSj1JF3mmBmk4UfKIApxSUGiNuVZYVXaFO0G1piSccKtINTHBWTwqjjd0tsb4Z5Tw5TNjBeb5C9m9imFvQYLddvceOF5VnRg/Etzp/2idM6LiwYE2JI4sFlzXDv5Lfj7n9PL/Jmv/XsvdJedQfah7My1rdNGfNt/2W5ie2vsvlua2PqkTXHgP+D+62cTqUlHHLFM0Pika9p7tIcP0UiAS5/r/S8fLxXzaQJoxYcO48CugVfKDTizh34dBtK9D08Iz8UtLhS4LPBbI4L272iwGxzFzB8DhY+a8f65F7t5sJceWzscw933jPUJKJ5+NvqElvtOnvEcj9hqKvRmlmRHhX4yuQ2jG4KeeCHOx3QyjY8Ecg9iPNUmFWo30eUE1OhdYnbOOldQP3zW/cTH/nNHY/zBdeuBy8SPPgDC4slYQ6N42LXDghavQ+uuneen5/3edENj+WZo/M3z8Qtcb4N1KSQIISTBLifb2Fz+jMeOGSgn5rtlj9fxm5PR82NwJ+7LhXi3dLKbxv8ASsb/AJT+3gsGzfmtOHhZjDTSfAqyyR1DbZefnO3r8d8RqtBUlHwWaMxrO6cdUiBqrWOrW/yjSDUxYLtVWZ8Lz3CttlaRyl0uZSzsGlLSVISEOsIPZBhUunyUJlaO6hfmNbZ8FUn6G57aDArLQO5XMP6y4WGtCUfUJZDwTfgtYXyjrDpc00VQfsVXglkO4FfNWHnVVndXim3bMygC0gml5J1eUu6hN/Ka+i9czhQ+S8azjeZkH+crq4nl/l//AFX1lE2Rw7lRgJ6WzhbOB1zqeC8PxsyWIj+FxC9R6H9rGdCWRdTgbkR8GRvwvH+hXi1HhOLR4D7O6R17pfWIBNhTh4/M07Ob6hXOoOa3p+Y4mgIX/wBl8fdI6rl9OyWSwTvjcDy00vobovtR+9/Z3qf7SQcjHiIfW2prh8LlOUshb6aWSBl9KgcfxMjbfpS8P9pGl7nGuCvZoHub03HI7wNB+i8x61iaopdtwSSsePxkv6eXvux6hJSSsIfX8yS6i09sidvyr8ZWRE7YbrTis7niuTtwubQq+xyQ6hix5DY5HXW7h4LId1jp7MSfJZkMe2KwaP5gNgvMh1mSSV8j3fE9xJ+arDHd8ptfRMHX+lAANhaK+att6v0t8jZDCzW38LqFj0K+d4+tkbalpw9e2FSLb4xP+T6FZ1bEdvqpTtz8Rw2lAXgMXXzda/1V6P2gcPz/AKpaG693bNC4WJG/VVpszp7i/Fflwh7mEFheLoheSYntDLLOyMGwaHKxOoOMXU8qOUWHOtru+6x5c7hi6vxuL+bKy3WptBJGGSSsHAkcPoUfvgwcBRQi2D1Uc4aLs9lw5XdephjqQL8uPVVAnwAVV+h+4iNoYzI54ZDGLP5nLPny8yN07Xl5LH6dDGjv33VY4W9J5OXHHtdZPGx1Otp81r4+Q01T7WBBDNO2UvcHaTV1V2rkMEjN6IrkKc8dK489zcdQxxc3ZM7ULtV8R/YlaQjDgVjO3TPMYc02m1j5GY0GrJPgFo9QieNVLGgxnPfTfHdxXRJNMc7YNnvX/F7r6lW2y5DOYz6jdZ2VNkYjpac92lwaGtbfPcrS6fkZknvuHe7omxXKv4Xv6ZY82G9edruPnOvlb8MnvWgrnSWOkDzEWE+WxXQYkfw7cKJ4rebqPPtsN1Zorzw+y88scs8mQ1r3ElrSOfJek5tCK6uiuVyvevzIS51ANsDsAtpyXHWmWXBjnbcvTzItLXFp2INH5IqCKdwfPM4cGRxHoShC65dyPHs1bJ7Kk1bIzSak06CAQV2fs71R8DsmEHbJx3RH1G4XH0rmDJ7vJicTsHgo+qVj6Yx2/wC78UH/ANFv9lyXV8aw8gchdqA0Y0Ok233ba9KWFmxag4eK5p3f7VHhPUccxyv9Ul0XWsSpnbJLpl8B02BPC+L3pIF8D/VTZ84OK6OOYMe/4Q470O64d2Q+FjGNcaCycnqM7pqDzTUtRn5dH17DgwugEh7XySTtNixwD2K8898Vp9U6jNkY0UTnbNddLAspnIu++I7qUZBH5lm6kWpMaarcp1fiUwzpB+ZYmopaz4oGv07noGZIc1u97hejdXjbkGLIZ+MCnedLxXpmX7iZjr4IK9C6V7QPmlyWvd925oYB29Vly4/LGz/xtwZ3j5cbPflqsaGvIB25TvjBN1uURFPaexCnoUvLye7jJWb7stN1uquVBHMdUjCXcWDX1WuRsonMHgiZ2fZZcWN7m2Q1ulgjazS0K/BQaWtbzyVMIASp2xBo4Rct/YmEk1IUezh6LWxXW4A91nMbRV/DFyDyKUn+UbYSK2ZjOcXgBctJEWSE6aK9CkYHOJpZ2TgRybgC1sjLDy49zGzEF7TdVYNLUxI/dt0MbTbs78+qndhFh3baniiDTtaXzutbLHhx3v4zaw2MOAuiVowx6GqGMX2V1l6N0Tdq7jqMbqOSIAywDZXJdeyxDiPlH4nt0N+a3+rRyTSxBrfhaTZ7BcH7U5DTJjY7D+AanfPhbY425yOXnz+HFnd+dOXCMbqIFSDhdjxUqXghBRDdMCpMDTge6KjyoynBX030eb3/AEXp8l8wtH02UeSOVwXs71DrsXTsd8QilxqoMdYIrwK7DFzmdQxffRscKcWuHNEcrDLGyhyfWMcPcTSS1c+Ow4kdkk5bo3l07wASewXOuJJJPda2ZJ91V/iNLKoLZmqT2qi0pgNQFdgqxjaeyZoXxuYGEkfE29vPxUasGFAY3BIIrTqUROKnjgkpzQ4AOFFAVGuIO3K67pA0hopYzcJoDRduJ+gXS4EIjAKeitdnCXGOM9gro42WXiOJYWrTZuF5nPh8c69z8Pl+fHN9lRS0BHSfhctdwapOdm2iAtQ5BdYa1OdpyMXbq9ivDXDxtUWMcatXYWgEK53D4/21zThYOxVSV9HlaBjBjbp22WFnB0T2nxWt6H2lcQbQiOxYVZkocArkZsClnPNXEsYc0AK0DTd1ANlISaK1xnlGd8MLPLSXOeajZbnHyC8Zzso5WXNMeHONeQ7L1b2kyIGdFzGl1OLS0eZJ4XjgXXw491435vJbZh9JQeFICoQUYK2cSa0YNlQAqQFAWL2UD0RdsoyQiB6Z7N9Xhg6dFA87BxNeq6X9+YuHG6LFY2OO70jxPdeOxSuZEwg8AqV+XM43qTslS7bqntG5wcGndJcBJI53JtJHxg8nypNUgb/CFCOyj16iXeKIE2E/9EUo+8+QQUApZ7Eg/pCiAQZqtPXkjCekAAUuoNCDYIoxrcSeBx6oC/jgtFnk8rXgfVC1kNcrLJCCEJbj892O2MtO5cPp3XWQuDmtPiAV5jkzOe7+leg9LlE2Fjvv8gv5Lj/KniV6P4Gdlyxaw4T0hB4RArz69iXwJrduVRyHvjfqrZX2lRvaKrlTj4pW7Uoc1rjuK9dlO7OYO4CcwsINtWecJvvb7LTHVolsXH9aLSGtDndtlOTPkMa57SO+6nxseBgB92PVaWlhC13NG50fCSPBaEDgQo8yHQdbeO6ihfuFE8U5k12je0R4PooGPJ5UrnVG7yC2x7jPO+K8U63NNmZuU0vNRyO0tvah5Lm+Nlu5Tq6tlVwZT+qystgjyHtHjf1Xfh08Hl387bftDaIFR2ntUySgow5QAp7R2NrFob8UAKRKNBcv/Zx6JwdlCf8Ahh60jaTpTIiaCSE2kgBaKRhDwkEBPkD7xh8WBRWB3VvMb93iv8WEX6FVNKCLV4IveNOxFJVSF2kbVZPAQZjZOlvJVtgDQAOAgjiLGnxPP+EQBBTJO0ojb3aWmgN3O8FHqI4G/ZFKRFGGF4BO5N90BHO4BuwFcetLsPZXKEmM+An4o3WPQrhy9kpYxmpx42C18Gf91Zkby12hxAkd5H/Cw58ZlhZ9uj8fP4ckv09LsqVu9bqsyRkjQ5pBBFghOdVEAm15WU09qZeNxcLoxsCEg0FZ0eA5zvePkdfajSinizGmveWOyUkqpa2AY7rULT6G3drmJXZDBvGT5gquZcuvwPr1VzH9rm/Hh20ckNUXi/VTOczSacKXExszpD8MB9SaWrF0rqD2/FkaB3A3WmOOoMt6aBzIy9zDuhLAHW3grLPTjASQ5xPck3avY7yQGk7hT9olXmOPdRZ+QIMSR5NbItYrlcf7S9Q+6EDTueVthLbGfLnMca4uK5c6aT+J9rO6if8Aa3+gWpgD70fNUs+G5JHcEOK78J4eLyXdtZdp+6Ygg7pk2Q7StClaAkBStCnCDWnX+zM/qUrN2hQybQRDztSx/hCcITgkpdq3SQFYC0YHilqocJ6J5QGkWftHTHaQS+B+qv5TystsrSFdx82TDfrZv5diqcpjlkfKWMj1G9DeAgI3SEmmiz5bq0yAxN95IQHHxPCrmYUADXmAoXPu9rQFxuTHHdnV6KM5jifhYAPPdVDXgibQvZATOyZiPxn5KAgne90Vi7pPqF8ICQTGKNoYadZJrlBJPLIPieTtwSo3BRVuovZu09metaaw53//ABuP9l37HArwoEtdYNEHYr0X2f66MkDHnNStGx/iAXJ+Rw/9sf8Abv8Axufx8cq7ljwNk7ntcN1WvghGW6guDqvQl68lpZ3AIUZfC3sBuq8kc/5LpQfs8xN6HEq5YuZ5T6bMUkbuDQVwZDA2mrnW4+T4ELShie0fFur340q5W9xYldrqgDuqcjNLtXFK1po7rPzZw3a/VVjju9M87J5V8rMbFE518Bef5kjsiR8h72tbOyjO/S0/C0rNkjph9FvjdWOHkyuW/Sr08fehRZgueYdiUEUpimBrurWZGSTO3dj6+RHiuzC+HDmwmaXfC/6+ChfC9ji2v+6sTN0P1Dud1YlaXjHA/EdlemTMIINEUmW5mxRBsYIBPFrNkxXsZrbuz+3qiwKyNoLiB4q9i9KzclofHH8JP4iaC6QeyWTEA5uVC91cbilP6E+3L5ND3Y8ApIWueQ1oJPgtTM6D1Rjg4Y+toHLSCngxpYI9Lo3MceSRSYVzExgonU79AkrDm7GkkeS2ym7KSwBaiHKm03Y7BBqjyXOsodJ7lTOoE0gItABSVKTSh5QAVui0p+E+o8AWUFS0AcoT5BHRHO5UbjXHKDNfbuoyKPPKkYK+IoXjuEtGhIFo4pXRSse0kEHkIChKnUssG7LK9Z6P1Zs8bGSH4q58V07K8V5H0mYlrRe7Su+w+oW0Nl2I7+K83l49ZXUetwcm8Zt0wARilmtyW9jaP9qaO6w+NdczjUaG16JjQWX+3AfmAtVZ+qwRMLnSClrjhRlyYyL+ZkMhjc4netguAzuounkLIzt3IUPUep5WfIWttsfHqgggDGi10yST9uLPkueXjoccQACaVo0qwaAVWaRlVrb9VMmVvSLlJO3Pz/DN6rRwJg4mJ41McKIQOxGSu1PfsD2V6NkOOPhaCR4+S7MJ4jjy1usfPgMUr4+eCPTsq8DtUjXHhoV3MkMr9RN0KvyWUxxALRyStvTL2tPf72SzwOFpNEToSwmrCy2dloxAuq/kqiVjAfkY4Mbac02N/NWpuoz47QXvJA2pVGSaXhvmq/UngxkFOyaEraxeuiQ7W1bLOoNf+LfyK8+xXBjPMLYx8thA1kpY6N1T8bAna64gDXLdklkR5Lfyv7d0lesU+XJRkBrn+A29VMG0weJFlAG/DDH4ndTvoErBSo4ISQPVGbPCQbSAj0kjdI7BGfJROQCA1GlIQGjZA3ZSbDdyZBIptlV2jUVZO7HE+CiaCGeZSMjua7BBqBJb9FKRpaqV2+0A5CHuFYeNQDh3Vc9kg0cCX3cvPddtjuD2gheeNK2sDqj4CBINTfLlc3Lx2+Y6+HlmPi9O0FjgkI7m7SFQ42Vi5Tfu5AT4cFWCxw4K47uXzHbPjfMqq9sxJ+Mqk/H1ElzifVaha4oDHY3VTLRWT2wcuaLEZZFu/KPFZoy32SXblWuuNFxmjsD6brDaG6bLuF2cWM+O3By5WZ6nS/JO48vP1UJmaO/KguPzKYub2aFrMZtlbfurTcl3YX2N90nTOIt5+Q8lWDiapSABvxHc9lpjE7F7z4HEqjECd1Yf/wAO8nxTQACgRsQnSSsHeloxPbQa7jsqb2+70GlOKNUduwKqbg7AXkT/ABdio88h0oHYCylI27I7diqstuq0W3QRtcQFMx57BQVwrDYnFodzSj0Ftkrq5b9UlE0gHgcbpKvPseCjJ96D4NKN4G9oY97IPCJ1rMIk9JqIKkrZAQuFDhQEbq2R2UWlrbLk4DANaNTlELkd5JiXSurspONhwP1QBPoN34QtbfxEeiVF7hfAU1IJWnOlhVNo2J8irGSSoYher+lI1gUGgdiAoHtoqaMgxD6JOGoeYQFYKQFR1RKkHCX+jTMeWuBa4tI7hacPV8+EACbUB2dusgUn3UXHG9xeOeU6tdKz2hmo6oWn0NIj18n/AJO/quYspAlR/Dh6X/Nya7auTlvymPJYRpr0+ay63+SkiOzwa4+fyQEb15LWYySSMrbbuirb/RMKRDYBMVSUrLrZH2KjYFI4iirxCGc1CQe5CaE/CEGQd2tRY9FpCPsNQASw1+YKuLARQuLHjwU0zAHWBsVfcAQ5r2mxvX1VBlOc5p4VhxABVeDeQ7Kb3AGWPSObFqbGlc0/6Ipm0aTRsG3il1QvSQNfH72L5t8EkMUjoX2OO48UlfgIGN0g13KOxsnaNmoSRaxAa3TklJN5oBEgDdVXXI7SPwjlSzO0ihyU0bdLR4oBw0NFAblLTdAKSq9U4FIBBtCghdsCi7KJxvdAUpzaWPz6oJTakhFFANFYe5nijoh1dkMo0TA+Kkebc1AQyN7pgVNVgjuFAEHBiinKYUm57qTLdPuUyOqBQBxOdbudwmPKaOi+jSIXqKf0VENxaVbpN7oqThHaKBSduQiHBUYcAXEnsrxCB4JcSUeNy4eaINtoPzQQH43JfYXBsVf/ABRBUVdiospaYdkzJSQSo43AOVidtOKqcOCm9mvupwopMbR4UbTY9FbjogoIzxbbSROFbJJmjGrS3fsgvySSWYIeaEc+QSSSCKtcrj2bsrDWb2eeySSAfulaSSAB3CgdwkkgKMg+KlPHwkklQfJGprXeCBtlvpukkmYqoiu6ifs5JJBEE9eCSSlRt06SSCHEPjGxUzm1K4V/+KSSqdC9mFDlSit0kkyRuJAVUhxHG18pJJheI0tryVSHaUpJIoXhyrURr5pJK8e4VRZLa3WeRTgkkjPsLTGqzHskkpnZrL2220kklZP/2Q==\" />This is my photo.</p>\n\n<p>&nbsp;</p>\n",
    poster: "Dmitriy Lotov",
    "created_at": ISODate("2021-06-02T13:53:26.94Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("60b7951cb244301b34aa03f6"),
    "category_id": "60b4f367705ba95c4813c999",
    category: "Article",
    content: "<p><img alt=\"angry\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/angry_smile.png\" style=\"height:23px; width:23px\" title=\"angry\" /><img alt=\"devil\" src=\"http://localhost:8000/assets/global/plugins/ckeditor/plugins/smiley/images/devil_smile.png\" style=\"height:23px; width:23px\" title=\"devil\" />sdfsdfsdfsadfas</p>\n\n<p>sdfsdafsdf</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td>sdfsa</td>\n\t\t\t<td>sdfdsfs</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td>sdfsa</td>\n\t\t\t<td>sdfdsa</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td>sdfa</td>\n\t\t\t<td>sdfdsasadfsdfas</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<ol>\n\t<li>dfkdlklsdfsaf</li>\n\t<li>sdfklkll;klfsa</li>\n\t<li>sdfsafsadfsdfsa</li>\n\t<li><img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"height:100px; width:100px\" /></li>\n</ol>\n",
    poster: "undefined undefined",
    "created_at": ISODate("2021-06-02T14:26:36.291Z"),
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
    membership: NumberInt("1"),
    "created_at": ISODate("2021-06-01T00:00:02.021Z"),
    permission: NumberInt("1"),
    __v: NumberInt("0"),
    state: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60b7c2a8f2667e2ea4ca3a2e"),
    name: "Maksim",
    surname: "Klazhnov",
    phone: "+75846893453",
    email: "maksim@gmail.com",
    password: "$2a$08$ewTyRIC7wqBZ7zwYo7QmEOGdJdWm/I7dSid0u6voOZL2easIHACnC",
    membership: NumberInt("3"),
    "created_at": ISODate("2021-06-02T17:40:56.915Z"),
    permission: NumberInt("2"),
    state: NumberInt("0"),
    __v: NumberInt("0")
} ]);
