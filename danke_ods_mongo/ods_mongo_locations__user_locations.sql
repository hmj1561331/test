CREATE TABLE danke_ods_mongo.ods_mongo_locations__user_locations(
  id string   comment"记录id",
  extras  string  comment"platform ：设备类型（app_ios,app_android）,address ：地址,accuracy ：精度,isMock ：是否模拟数据,netType ：网络,operatorType：运营商",
  position_coordinates  string  comment" 位置坐标",
  position_type  string  comment"创建时间",
  scene_id  string  comment"",
  user_id  string  comment"用户ID",
  created_time  string  comment"创建时间",
  expires_time  string  comment"过期时间"
  )
COMMENT '坐标'
partitioned by(p_day date  comment '分区日期')
stored as orc;