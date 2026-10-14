// error code */
/*  String duckDuckGoose(dynamic players, int goose) {
    return ;
  } */
// solve code || correct code
String duckDuckGoose(dynamic players, int goose) {
  return players[(goose - 1) % players.length].name;
}
//انا مفهمتش الكود غير لما سرشت عن العبه و الفكره 
//(goose - 1) % players.length
// الحل دا انا كنت بستخدمه في هياكل البيانات
// في حته circular queue

