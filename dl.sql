SET NAMES UTF8;
DROP DATABASE IF EXISTS dl;
CREATE DATABASE dl CHARSET=UTF8;
USE dl;

-- 轮播图图片
CREATE TABLE dl_carousel(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   cimg VARCHAR(128)
);

INSERT INTO dl_carousel VALUES
(NULL,"http://localhost:3000/img/C1.jpg"),
(NULL,"http://localhost:3000/img/C2.jpg"),
(NULL,"http://localhost:3000/img/C3.jpg");

-- 环境设施
CREATE TABLE dl_surr(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   cimg VARCHAR(128)
);

INSERT INTO dl_surr VALUES
(NULL,"http://localhost:3000/img/5a.png"),
(NULL,"http://localhost:3000/img/5a2.jpg"),
(NULL,"http://localhost:3000/img/5a21.jpg"),
(NULL,"http://localhost:3000/img/5a22.jpg");

-- 教练
CREATE TABLE dl_coach(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   cimg VARCHAR(128),
   ctitle VARCHAR(32),
   cdesc VARCHAR(330),
   nmb VARCHAR(32)
);
INSERT INTO dl_coach VALUES
(NULL,"http://localhost:3000/img/xu2.jpg","赵教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：减脂，塑性，增肌","40"),
(NULL,"http://localhost:3000/img/xu1.jpg","王教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：减脂，塑性，增肌","24"),
(NULL,"http://localhost:3000/img/xu3.jpg","季教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：增肌,减脂,武术,散打,跆拳道基础训练及提高训练","23"),
(NULL,"http://localhost:3000/img/xu5.jpg","孙教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：武术,散打,跆拳道基础训练及提高训练","15"),
(NULL,"http://localhost:3000/img/xu4.jpg","李教练","毕业院校：首都体育学院；  运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：青少年体姿纠正,体能改善,产前后运动准备及肌体恢复,属性增肌减脂,腰颈背劳损改善","11");

-- 明星教练
CREATE TABLE dl_start(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   cimg VARCHAR(128),
   ctitle VARCHAR(32),
   cdesc VARCHAR(330),
   nmb VARCHAR(32)
);
INSERT INTO dl_start VALUES
(NULL,"http://localhost:3000/img/xu2.jpg","赵教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：减脂，塑性，增肌","40"),
(NULL,"http://localhost:3000/img/xu1.jpg","王教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：减脂，塑性，增肌","24");

CREATE TABLE dl_stt(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   cimg VARCHAR(128),
   ctitle VARCHAR(32),
   cdesc VARCHAR(330),
   nmb VARCHAR(32)
);
INSERT INTO dl_stt VALUES
(NULL,"http://localhost:3000/img/xu3.jpg","季教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：增肌,减脂,武术,散打,跆拳道基础训练及提高训练","23"),
(NULL,"http://localhost:3000/img/xu5.jpg","孙教练","毕业院校：首都体育学院；   运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：武术,散打,跆拳道基础训练及提高训练","15"),
(NULL,"http://localhost:3000/img/xu4.jpg","李教练","毕业院校：首都体育学院；  运动经历：13年运动经历，9年健身经验。    所获证书：亚洲体适能高级证书。 个人特长：青少年体姿纠正,体能改善,产前后运动准备及肌体恢复,属性增肌减脂,腰颈背劳损改善","11");


-- 相关文章
CREATE TABLE dl_article(
   aid INT PRIMARY KEY AUTO_INCREMENT,
   aimg VARCHAR(128),
   atitle VARCHAR(32),
   adesc VARCHAR(330),
   atime VARCHAR(32),
   views VARCHAR(12)
);
INSERT INTO dl_article VALUES
(NULL,"http://localhost:3000/img/hu1.jpg","怎样高效锻炼胸肌？","男士塑性","2017-06-19 21:44:21","445"),
(NULL,"http://localhost:3000/img/hu2.jpg","练好腹肌这些你做到了吗？","腹肌锻炼","2017-06-02 19:23:43","421"),
(NULL,"http://localhost:3000/img/hu3.jpg","健身之于每个人，是属于自己奖赏给自己的额外礼物？","健身感悟","2017-08-09 16:44:54","223");

CREATE TABLE dl_banner(
   aid INT PRIMARY KEY AUTO_INCREMENT,
   aimg VARCHAR(128)
);
INSERT INTO dl_banner VALUES
(NULL,"http://localhost:3000/img/img1.jpg"),
(NULL,"http://localhost:3000/img/img2.jpg"),
(NULL,"http://localhost:3000/img/img3.jpg");


CREATE TABLE dl_book(
   aid INT PRIMARY KEY AUTO_INCREMENT,
   atitle VARCHAR(128)
);
INSERT INTO dl_book VALUES
(NULL,"全部"),(NULL,"力量/塑性"),(NULL,"瑜伽/普拉提"),(NULL,"拳击/武术"),(NULL,"体操/舞");

-- 课程
CREATE TABLE dl_bookss(
   aid INT PRIMARY KEY AUTO_INCREMENT,
   aimg VARCHAR(128),
   atitle VARCHAR(128),
   atext VARCHAR(128)
);
INSERT INTO dl_bookss VALUES
(NULL,"http://localhost:3000/img/l1.jpg","男士塑性训练初级课程","课程教练：王教练；适应人群：BMI 15-20 增肌需求；课程内容：理论讲解、训练规划、指导器材使用"),
(NULL,"http://localhost:3000/img/l2.jpg","男士塑性训练初级课程","课程教练：王教练；适应人群：BMI 15-20 增肌需求；课程内容：理论讲解、训练规划、指导器材使用"),
(NULL,"http://localhost:3000/img/l3.jpg","男士塑性训练初级课程","课程教练：王教练；适应人群：BMI 15-20 增肌需求；课程内容：理论讲解、训练规划、指导器材使用"),
(NULL,"http://localhost:3000/img/l4.jpg","男士塑性训练初级课程","课程教练：王教练；适应人群：BMI 15-20 增肌需求；课程内容：理论讲解、训练规划、指导器材使用");
