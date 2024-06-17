import 'package:flutter/material.dart';

class ZombiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 101, 85),
        title: Text(
          '僵尸图鉴', // 应用栏标题
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "PVZ",
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'), // 背景图片
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,
          // 可调整子项的宽高比以适应内容大小
          children: <Widget>[
            zombieInfoCard(
              context,
              '普通僵尸',
              'images/普通僵尸.png',
              270,
              '无',
              '100点/s',
              '约4-7s/格子',
              '这种僵尸酷爱脑子,贫梦而不知足。脑子、脑子、脑子,夜以继日地追求着。恶臭难闻的脑子?腐烂的脑子?我想这都没关系,僵尸不介意。',
            ),
            zombieInfoCard(
              context,
              '摇旗僵尸',
              'images/摇旗僵尸.png',
              270,
              '无',
              '100点/s',
              '约3.7s/格子',
              '无需置疑:摇旗僵尸喜爱脑子,但在私下里他也逃恋旗帜。或许是因为旗帜上也画有脑子吧,这很难说。',
            ),
            zombieInfoCard(
              context,
              '路障僵尸',
              'images/路障僵尸.png',
              770,
              '路障(1类),绿色路障(加速)',
              '100点/s',
              '约4-7s/格',
              '和其他僵尸一样,路障头僵尸官且地向前。但某些事物却使他停下脚步,捡起一个交通路障,并固实在自己的脑袋上。是的,他很喜欢参加聚会。',
            ),

            zombieInfoCard(
              context,
              '撑行僵尸',
              'images/撑行僵尸.png',
              500,
              '无',
              '100点/s',
              '跳跃前约2.5s/格,跳跃后约4-7s/格',
              '跃过他所碰到的第一株植物一些僵尸渴望走得更远、得到更多,这也促使他们由普通成为非凡。那就是撑杆僵尸。',
            ),
            zombieInfoCard(
              context,
              '铁桶僵尸',
              'images/铁桶僵尸.png',
              1370,
              '铁桶(1类)',
              '100点/s',
              '约4-7s/格',
              '铁桶头僵尸经常戴着水桶,在冷漠的世界里显得独一无二。但事实上,他只是忘记了那铁桶还在他头上而已。',
            ),
            zombieInfoCard(
              context,
              '读报冰车僵尸',
              'images/读报冰车僵尸.png',
              1850,
              '报纸(2类)',
              '碾压',
              '约4-7s/格,失去报纸后1.8s/格',
              '曾经遭遇过的僵尸,使用令人印象深刻的炙热怒火进行攻击。那个曾在原版黑夜草坪被你用几个小喷菇击败的劲敌,将重新出现在你面前,划出复仇的烈焰。势必夺得大脑。',
            ),
            zombieInfoCard(
              context,
              '铁栅门僵尸',
              'images/铁桶僵尸.png',
              1370,
              '铁栅门(2类)',
              '100点/s',
              '约4-7s/格',
              '弱点:大喷菇和磁力菇铁栅门僵尸上次拜访过的房主防守并不专业,在吃掉那房主的脑子后拿走了他家的铁栅门。',
            ),
            zombieInfoCard(
              context,
              '雪冰车僵尸',
              'images/雪冰车僵尸.png',
              3000,
              '铁栅门(2类)',
              '碾压',
              '约3-8s/格',
              '碾压植物,留下条冰道,退休的冰车僵尸用毕生所学传教伽刚特尔,并为他定制了一辆巨型冰车。',
            ),
            zombieInfoCard(
              context,
              '雪橇僵尸',
              'images/雪橇僵尸.png',
              1380,
              '雪橇(1类)',
              '100点/s',
              '行约1.2s/格,弃车后约4-7s/格',
              '只在雪地里出现，雪橇僵尸小队尽力到达他们所要去的地方。他们互相依赖、分享脑子并共同训练成为一个合作无间的僵尸小队。',
            ),
            zombieInfoCard(
              context,
              '舞王僵尸',
              'images/舞王僵尸.png',
              3500,
              '橄榄帽(1类),废稿头盔(免控)',
              '200点/s',
              '出场滑步约1.2s/格,召唤后约5.5s/格',
              '召唤年度版迪斯科僵尸和伴舞僵尸舞王僵尸的最新唱片“哇脑乳阿卜阿卜”在僵尸界的人气正急速飙升。',
            ),
            zombieInfoCard(
              context,
              '伴舞僵尸',
              'images/伴舞僵尸.png',
              640,
              '路障(1类)',
              '100点/s',
              '约5.5s/格',
              '伴舞僵尸曾在位于僵尸纽约城的“咀利牙”表演艺术学院深造过六年的舞技,还被特邀参加过“舞林大会”。',
            ),
            zombieInfoCard(
              context,
              '鸭子救生圈僵尸',
              'images/鸭子救生圈僵尸.png',
              270,
              '路障(1类)',
              '无',
              '约4-7s/格',
              '只在水池关卡出现只有特定的僵尸才能成为救生圈僵尸,这可不是每个水货僵尸都能胜任的。有些救生圈有点漏气,但他们没能注意到,所以他们离开了,并摒弃了对脑子的渴求。',
            ),
            zombieInfoCard(
              context,
              '潜水僵尸',
              'images/潜水僵尸.png',
              3270,
              '橄榄帽(1类)',
              '100点/s',
              '约4s/格',
              '潜泳以避免遭到攻击僵尸不呼吸,他们不需要空气,那么为什么潜水僵尸还需要一套噱头的潜水装置来潜水呢?答案:同行的压力。',
            ),
            zombieInfoCard(
              context,
              '暗黑橄榄球僵尸',
              'images/暗黑橄榄球僵尸.png',
              3270,
              '橄榄球帽(1类),废稿头盔帽(免控)',
              '200点/s',
              '约2.5s/格',
              '在球场上,暗黑橄榄球僵尸身为队长,总是能表现出比其他橄榄球僵尸还要高涨的热情,虽然他对防守和进攻了如指掌,但是他还是不懂橄榄球。',
            ),
            zombieInfoCard(
              context,
              '气球舞王僵尸',
              'images/气球舞王僵尸.png',
              520,
              '气球(I类)',
              '100点/s',
              '约5.5s/格',
              '飞行,亡语:召唤一个橄榄舞王僵尸速度:飞行约2.5s/格,击落后约4-7s/格气球僵尸真幸运。气球有很多功效,而其他僵尸都不曾捡到过。',
            ),
            zombieInfoCard(
              context,
              '黑橄榄矿工僵尸',
              'images/黑橄榄矿工僵尸.png',
              270,
              '无',
              '200点/s',
              '挖地时约1.2s/格,出土后约7s/格',
              '穿过地下隧道并出现在草坪的左例矿工僵尸每周花费三天时间来申请他的挖掘许可证。',
            ),
            zombieInfoCard(
              context,
              '扶梯僵尸',
              'images/扶梯僵尸.png',
              1370,
              '铁梯子(1类),路障(1类)，铁桶(1类)',
              '100点/s',
              '拿梯时约2s/格,失去梯子约4-7s/格',
              '弱点:大喷菇和磁力菇这架梯子花了他\$8.99。',
            ),
            zombieInfoCard(
              context,
              '投石车僵尸',
              'images/投石车僵尸.png',
              3850,
              '橄榄帽(1类)',
              '75点/s',
              '约2.5s/格',
              '投石车僵尸可以利用弹射器来发射任何东西,但篮球似乎是绝佳选择。',
            ),
            zombieInfoCard(
              context,
              '武装伽刚特尔僵尸',
              'images/武装伽刚特尔僵尸.png',
              4100,
              '铁桶帽(1类),铁栅门(2类),或橄榄球帽(1类),或废稿头盔(免控)',
              '正常即死',
              '约4-7s/格',
              '当伽刚特尔走动的时候,大地在震颤。当他悲叹的时候,所有的僵尸都沉寂了。他是僵尸们梦想成为的偶像。不过呢,他到现在还没交到女朋友',
            ),
            zombieInfoCard(
              context,
              '豌豆僵尸',
              'images/豌豆僵尸.png',
              270,
              '无',
              '100点/s+豌豆伤害',
              '约4-7s/格',
              '这种僵尸酷爱脑子,贫梦而不知足。脑子、脑子、脑子, -- 夜以继日地追求着。',
            ),
            // 更多植物信息卡片可以在这里添加
          ],
        ),
      ),
    );
  }

  Widget zombieInfoCard(
      BuildContext context,
      String name,
      String imagePath,
      int toughness,
      String wear,//佩戴
      String nibblingDamage,//啃食伤害
      String speed,//速度
      String features,//描述
      ) {
    return InkWell(
      onTap: () => showCustomDialog(
        context,
        name,
        imagePath,
        toughness,
        wear,
        nibblingDamage,
        speed,
        features,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.contain), // 显示植物图片
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name, // 显示植物名称
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void showCustomDialog(
      BuildContext context,
      String name,
      String imagePath,
      int toughness,
      String wear,//佩戴
      String nibblingDamage,//啃食伤害
      String speed,//速度
      String features,//描述
      ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // 显示植物图片
                  Image.asset(
                    imagePath,
                    width: double.infinity, // 图片宽度填满容器
                    height: 200, // 设定图片高度
                    fit: BoxFit.cover, // 保证图片内容都显示出来
                  ),
                  SizedBox(height: 20), // 图片和文本之间的间隔
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '韧性: $toughness',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '佩戴: $wear',
                    style: TextStyle(fontSize: 18,color: Colors.red[800]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '啃食伤害: $nibblingDamage',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '速度: $speed',
                    style: TextStyle(fontSize: 18),
                  ),

                  SizedBox(height: 5),
                  Text(
                    '特点: $features',
                    style: TextStyle(fontSize: 18),

                  ),

                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      '关闭',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
