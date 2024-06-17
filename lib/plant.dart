import 'package:flutter/material.dart';
import 'hybrid_parents.dart';

class PlantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 101, 85),
        title: Text(
          '植物图鉴',
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
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,
          children: <Widget>[
            plantInfoCard(
              context,
              '豌豆向日葵',
              'images/豌豆向日葵.png',
              3000,
              '一格',
              '20/秒',
              ':每25秒生产25点阳光',
              '杂交植物们来自于和双子向日葵所诞生的同个实验室。“但这不代表我们就是兄弟了，”双子向日葵说，“他们的诞生简直就是一场恐怖的悲剧!”',
              125,
              '快',
              'images/豌豆射手.png', // 父母1的图片路径
              'images/向日葵.png', // 父母2的图片路径
              'images/豌豆向日葵.png', // 子植物的图片路径
              '豌豆射手', // 父母1的名字
              '向日葵', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '阳光豆',
              'images/阳光豆.png',
              300,
              '无',
              '无',
              '每12.5秒生产15点阳光:90秒后长大，每12.5秒生产25点阳光',
              '阳光豆是坚定的清洁能源支持者。“也许你会想说，太阳能本身不就是清洁能源吗?”阳光豆说，“但这不是重点!重点在于利用率，我们致力于覆盖每一寸可利用的草坪!',
              50,
              '中等',
              'images/咖啡豆.png',
              'images/向日葵.png',
              'images/阳光豆.png',
              '咖啡豆', // 父母1的名字
              '向日葵', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '阳光炸弹',
              'images/阳光炸弹.png',
              300,
              '1800',
              '自身为中心周围1.5格的圆',
              '将僵尸转化为阳光',
              '在是否要从僵尸身上获取阳光的问题上，阳光炸弹和向日葵有过激烈的争执，但是这并不妨碍她在每周四的下午准时参加阳光爱好者俱乐部。',
              200,
              '非常慢',
              'images/樱桃炸弹.png',
              'images/向日葵.png',
              'images/阳光炸弹.png',
              '樱桃炸弹', // 父母1的名字
              '向日葵', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '火炬坚果',
              'images/火炬坚果.png',
              4000,
              '1/帧',
              '自身所在格',
              '点燃豌豆',
              '坚果热爱烟火，对他而言，各类烟火百玩不厌。“一提到烟花，我便脑袋发热，连身体也变得燥热起来!”也许发热的不只是脑袋——看来他并没有意识到坚果壳属于易燃物。',
              100,
              '中等',
              'images/坚果.png',
              'images/火炬树桩.png',
              'images/火炬坚果.png',
              '坚果', // 父母1的名字
              '火炬树桩', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '阳光土豆雷',
              'images/阳光土豆雷.png',
              300,
              '1800',
              '自身所在格',
              '单独使用，需要15s的准备时间，爆出一个大阳光',
              '从僵尸身上获取阳光，不只是阳光炸弹的想法——阳光土豆亦有。“我们之间不存在抄袭关系——事实上，阳光俱乐部是我开创的，他是我的成员。”阳光土豆如是说道。',
              0,
              '中等',
              'images/阳光菇.png',
              'images/土豆地雷.png',
              'images/阳光土豆雷.png',
              '阳光菇', // 父母1的名字
              '土豆地雷', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '寒冰香蒲',
              'images/寒冰香蒲.png',
              300,
              '20x2/s',
              '全屏追踪',
              '单体减速1/2，维持15s',
              '这款猫猫装扮在植物界突然盛行起来，其中豌豆家族购买的最多，寒冰射手抢购到这身装扮时，帽子已经售空了。',
              250,
              '中等',
              'images/寒冰射手.png',
              'images/猫尾草.png',
              'images/寒冰香蒲.png',
              '寒冰射手', // 父母1的名字
              '猫尾草', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '大蒜花',
              'images/大蒜花.png',
              300,
              '仅吞小型冰车，其他僵尸40',
              '前方1.5格',
              ':使僵尸换行',
              '大蒜嘴花总是闻起来像是刚从意大利餐厅走出来。它的口号是“闻起来就是力量”，虽然这经常让旁边的植物保持距离。它喜欢在阳光下晒太阳，但它的邻居们总是抱怨说:“你能去别的地方晒吗?”无论如何，大蒜嘴花都乐观地认为，强烈的气味只是一种天然的社交距离工具。',
              100,
              '中等',
              'images/大蒜.png',
              'images/大嘴花.png',
              'images/大蒜花.png',
              '大蒜', // 父母1的名字
              '大嘴花', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '双发仙人掌',
              'images/双发仙人掌.png',
              300,
              '30x2点/2s',
              '前方整行',
              '子弹穿透',
              '仙人掌热爱拥抱，可她的外表连铠甲鼠都趋之若鹭。“不管人们加何议论，总之我爱她”双发射手说道，“这是我和她的爱情结晶。',
              225,
              '快',
              'images/双重射手.png',
              'images/仙人掌.png',
              'images/双发仙人掌.png',
              '双重射手', // 父母1的名字
              '仙人掌', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '小盆菇',
              'images/小盆菇.png',
              300,
              ':20/1.5s',
              ':前方3格',
              '允许你在裸地种植',
              '小盆菇因为不想做蘑菇家族里最底层的那个于是在头上放了一个花盆。“在这个花盆种上高的植物，我就能让植物对我毕恭毕敬了!"“(这不是狐假虎威吗…)”大喷菇想。',
              225,
              '快',
              'images/花盆.png',
              'images/小喷菇.png',
              'images/小盆菇.png',
              '花盆', // 父母1的名字
              '小喷菇', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '小盆菇',
              'images/小盆菇.png',
              300,
              '20/1.5s',
              '前方3格',
              '允许你在裸地种植',
              '小盆菇因为不想做蘑菇家族里最底层的那个于是在头上放了一个花盆。“在这个花盆种上高的植物，我就能让植物对我毕恭毕敬了!"“(这不是狐假虎威吗…)”大喷菇想。',
              0,
              '快',
              'images/花盆.png',
              'images/小喷菇.png',
              'images/小盆菇.png',
              '花盆', // 父母1的名字
              '小喷菇', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '阳光向日葵',
              'images/阳光向日葵.png',
              300,
              '无',
              '无',
              '每25s生产40点阳光，120s长大后每25s生产75点阳光',
              '绚丽的帽子给了向日葵更高的颜值，在植物走秀界和服装界一炮走红。当然，他也要回归本质，给植物提供阳光，让他们作战。阳光向日葵这么想着，完全没有听到他身后的植物说:“你挡我们视线了，走开啦!”',
              100,
              '快',
              'images/阳光菇.png',
              'images/向日葵.png',
              'images/阳光向日葵.png',
              '阳光菇', // 父母1的名字
              '向日葵', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '冰瓜大喷菇',
              'images/冰瓜大喷菇.png',
              300,
              '(20+80)/1.5s',
              '整行攻击',
              '穿透攻击',
              '这个冰瓜条纹的帽子让大喷菇一下变成了蘑菇家族里最特殊的一个，每个蘑菇都在惊讶他的伞盖就像冬天的凉意，给了他们与众不同的感觉。哦不，他要打喷嚏了，大家快躲开，躲开',
              350,
              '中等',
              'images/大喷菇.png',
              'images/冰西瓜.png',
              'images/冰瓜大喷菇.png',
              '大喷菇', // 父母1的名字
              '冰西瓜', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '墓碑埋雷者',
              'images/墓碑埋雷者.png',
              300,
              '1800',
              '自身所在格',
              '需要种在墓碑上',
              '“每次都是这样，为什么要让我来打扫杂草。”“不如你每次都带上我吧，那样就不会再打扫一遍那个地方了。”土豆地雷对据墓者说道。',
              100,
              '快',
              'images/土豆地雷.png',
              'images/咬咬碑.png',
              'images/墓碑埋雷者.png',
              '土豆地雷', // 父母1的名字
              '咬咬碑', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '阳光胆小菇',
              'images/阳光胆小菇.png',
              300,
              '20/1s.长大后20x4/1秒',
              '前方整行',
              '以自身为圆心周围约1.5格内有僵尸时会躲起来停止攻击。小时候生产15阳光，长大后生产50阳光。',
              '因为害怕黑暗而让自己的脑袋发光，殊不知僵尸也被吸引过来了。',
              125,
              '快',
              'images/胆小菇.png',
              'images/阳光菇.png',
              'images/阳光胆小菇.png',
              '胆小菇', // 父母1的名字
              '阳光菇', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '魅惑毁灭菇',
              'images/魅惑毁灭菇.png',
              300,
              '爆炸',
              '以自身为圆心周围约3.5格的圆',
              '爆炸后会在原地留下一个爆炸坑，坑内无法栽种任何植物，持续180S。',
              '人们对于魅感毁灭菇的出身议论纷纷，其实既不是邪恶的实验室，也不是糟糕的一夜情。只是笨手笨脚的毁灭菇不小心打翻了颜料，并在爆炸时把它们喷溅在僵尸身上罢了。',
              999,
              '非常慢',
              'images/魅惑菇.png',
              'images/毁灭菇.png',
              'images/魅惑毁灭菇.png',
              '魅惑菇', // 父母1的名字
              '毁灭菇', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '毁灭海草',
              'images/毁灭海草.png',
              300,
              '爆炸',
              '自身左右的小范围，然后大面积爆炸',
              '将1只僵尸拉下水，然后释放毁灭萜效果',
              '其实缠统水草本就是一个毁灭菇，只是他之前不小心跌进水里被水草缠住了。',
              225,
              '非常慢',
              'images/毁灭菇.png',
              'images/缠绕海草.png',
              'images/毁灭海草.png',
              '毁灭菇', // 父母1的名字
              '缠绕海草', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '樱桃辣椒',
              'images/樱桃辣椒.png',
              300,
              '1800',
              '自身所在一整行和相邻两行',
              '摧毁冰道，抵消冰减速',
              '樱桃辣椒:“我要爆了”，“不，应该是我要炸了!”。樱桃炸弹两兄弟在“爆炸”这个词上争论许久——不过火“爆”辣椒的出现平息了这场争论。',
              275,
              '非常慢',
              'images/火爆辣椒.png',
              'images/樱桃炸弹.png',
              'images/樱桃辣椒.png',
              '火爆辣椒', // 父母1的名字
              '樱桃炸弹', // 父母2的名字
            ),

            plantInfoCard(
              context,
              '高冰果',
              'images/高冰果.png',
              8000,
              '20x6/1.5秒',
              '前方一行',
              '发射6枚冰豆，反伤减速1/帧,反伤概率冻结敌人，抵御8次锤击/碾压',
              '从小时候起大家就因为矮小不喜欢我，所以我下定决心要变强，正是这样我才有了横推一路的强大力量。但孤独感依旧不减，导致外表逐渐变得和内心一样冰)冷。',
              500,
              '中等',
              'images/冰川菇.png',
              'images/高坚果.png',
              'images/高冰果.png',
              '冰川菇', // 父母1的名字
              '高坚果', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '海坚果',
              'images/海坚果.png',
              6000,
              '20/1s',
              '前方一行',
              '水生植物，拦截僵尸',
              '高坚果尝试穿上海蘑菇的装扮以此下海，可以看出，他高兴的嘴都翘起来了。不过别的高坚果家族却一脸疑感…',
              125,
              '中等',
              'images/高坚果.png',
              'images/水兵菇.png',
              'images/海坚果.png',
              '高坚果', // 父母1的名字
              '水兵菇', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '机枪卷心菜投手',
              'images/机枪卷心菜投手.png',
              300,
              '(40+20)x4/1.5s',
              '正前方整行',
              '投掷无视屋面角度',
              '“说实话我很羡慕卷心菜他们能在凹凸不平的地形上随心所欲的攻击”机枪豌豆如实说，于是他与卷心菜做了交换，但是他的攻击方式还是没能完全的改变。',
              500,
              '中等',
              'images/机枪射手.png',
              'images/卷心菜投手.png',
              'images/机枪卷心菜投手.png',
              '机枪射手', // 父母1的名字
              '卷心菜投手', // 父母2的名字
            ),
            plantInfoCard(
              context,
              '西瓜坚果',
              'images/西瓜坚果.png',
              4000,
              '80/1.5s，对周围的僵尸附带溅射伤害26',
              '正前方整行',
              '攻防一体',
              '每个人第一次见到他都会疑感他到底是西瓜还是坚果，但是他坚定认为自己是西瓜:“你看看我，我肯定是西瓜不是坚果，这有什么可以疑感的?”但是一到夏天他又会认为自己是坚果，非常奇怪。',
              150,
              '中等',
              'images/西瓜投手.png',
              'images/坚果.png',
              'images/西瓜坚果.png',
              '机枪射手', // 父母1的名字
              '卷心菜投手', // 父母2的名字
            ),
            // 更多植物信息卡片可以在这里添加
          ],
        ),
      ),
    );
  }

  Widget plantInfoCard(
      BuildContext context,
      String name,
      String imagePath,
      int toughness,
      String range,
      String power,
      String features,
      String death,
      int cost,
      String cooldownSpeed,
      String parent1ImagePath,
      String parent2ImagePath,
      String childImagePath,
      String parent1Name,
      String parent2Name,
      ) {
    return InkWell(
      onTap: () => showCustomDialog(
        context,
        name,
        imagePath,
        toughness,
        range,
        power,
        features,
        death,
        cost,
        cooldownSpeed,
        parent1ImagePath,
        parent2ImagePath,
        childImagePath,
        parent1Name,
        parent2Name,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
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
      String range,
      String power,
      String features,
      String death,
      int cost,
      String cooldownSpeed,
      String parent1ImagePath,
      String parent2ImagePath,
      String childImagePath,
      String parent1Name,
      String parent2Name,
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
                  Image.asset(
                    imagePath,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
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
                    '范围: $range',
                    style: TextStyle(fontSize: 18, color: Colors.red[800]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '威力: $power',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '特点: $features',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '亡语: $death',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '花费: $cost',
                    style: TextStyle(fontSize: 18,color: Colors.yellow[800]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '冷却速度: $cooldownSpeed',
                    style: TextStyle(fontSize: 18,color: Colors.blue[800]),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HybridParentsPage(
                            parent1ImagePath: parent1ImagePath,
                            parent2ImagePath: parent2ImagePath,
                            childImagePath: childImagePath,
                            parent1Name: parent1Name, // 传递父母1的名字
                            parent2Name: parent2Name, // 传递父母2的名字
                            childName: name, // 传递子植物的名字
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    child: Text('查看杂交双亲', style: TextStyle(color: Colors.white)),
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