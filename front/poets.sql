/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : poets

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-01-18 16:47:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for faq_history
-- ----------------------------
DROP TABLE IF EXISTS `faq_history`;
CREATE TABLE `faq_history` (
  `id` varchar(32) NOT NULL,
  `session_name` varchar(255) DEFAULT NULL COMMENT '会话名',
  `session_id` varchar(32) DEFAULT NULL COMMENT '会话ID',
  `question` varchar(8000) DEFAULT NULL COMMENT '问题',
  `answer` text COMMENT '回答',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of faq_history
-- ----------------------------
INSERT INTO `faq_history` VALUES ('49e02982cbe4e5b468a432ba79c6861a', '49e02982cbe4e5b468a432ba79c6861a', '题目查询', '一氣東南王斗牛', '[{\'selectType\': \'0\', \'authorInfo\': \'朱存，金陵人。詩一首。\', \'poetryList\': [{\'title\': \'金陵覽古 秦淮\', \'content\': \'一氣東南王斗牛，祖龍潜爲子孫憂。金陵地脈何曾斷，不覺真人已姓劉。\', \'author\': \'【作者】朱存\'}, {\'title\': \'金陵覽古 秦淮\', \'content\': \'一氣東南王斗牛，祖龍潜爲子孫憂。金陵地脈何曾斷，不覺真人已姓劉。\', \'author\': \'【作者】朱存\'}]}]', '1', '2024-01-18 07:34:41');
INSERT INTO `faq_history` VALUES ('8fd5b584279694782c13844ed864376f', '8fd5b584279694782c13844ed864376f', '题目查询', '一氣東南王斗牛', '[{\'selectType\': \'0\', \'authorInfo\': \'朱存，金陵人。詩一首。\', \'poetryList\': [{\'title\': \'金陵覽古 秦淮\', \'content\': \'一氣東南王斗牛，祖龍潜爲子孫憂。金陵地脈何曾斷，不覺真人已姓劉。\', \'author\': \'【作者】朱存\'}, {\'title\': \'金陵覽古 秦淮\', \'content\': \'一氣東南王斗牛，祖龍潜爲子孫憂。金陵地脈何曾斷，不覺真人已姓劉。\', \'author\': \'【作者】朱存\'}]}]', '1', '2024-01-18 07:34:35');
INSERT INTO `faq_history` VALUES ('fb15bdf804d4bf5b009f7fffa06680cc', 'fb15bdf804d4bf5b009f7fffa06680cc', '诗句查询', '李', '[{\'selectType\': \'0\', \'authorInfo\': \'李濤（八九八～九六一），字信臣，京兆萬年（今陝西西安）人，隨父避禍居湖南。後唐明宗天成初進士。仕後唐、後晉、後漢、後周，歷刑部、戶部尚書，封莒國公。入宋，拜兵部尚書。太祖建隆二年卒，年六十四。《宋史》卷二六二有傳。今錄詩八首。\', \'poetryList\': [{\'title\': \'春社日寄李學士\', \'content\': \'社翁今日沒心情，爲乞治聾酒一瓶。惱亂玉堂將欲徧，依稀巡到第三廳。\', \'author\': \'【作者】李濤\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'譚用之，字藏用。五代末人，善詩。入宋，仕途不達（《宋史》卷四三九《鄭起傳》）。有詩一卷，已佚。今錄詩四十首。\', \'poetryList\': [{\'title\': \'幽居寄李秘書\', \'content\': \'幾年帝里阻烟波，敢向明時叩角歌。看盡好花春卧穩，醉殘紅日夜吟多。印開夕照垂楊柳，畫破寒潭老芰荷。昨夜前溪有龍鬭，石橋風雨少人過。\', \'author\': \'【作者】譚用之\'}, {\'title\': \'貽釣魚李處士\', \'content\': \'罷吟鸚鵡草芊芊，又泛鴛鴦水上天。一棹冷涵楊柳雨，片帆香挂芰荷烟。綠摇江澹萍離岸，紅點雲疏橘滿川。何處邈將歸畫府，數莖紅蓼一漁船。\', \'author\': \'【作者】譚用之\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'范質字文素，大名宗城人。後唐長興四年進士，晉天福中爲翰林學士，漢初加中書舍人、戶部侍郎。周廣順初拜中書侍郎同中書門下平章事。宋太祖受禪，加兼侍中。乾德初封魯國公。二年正月罷爲太子太傅。九月卒，詩一首。（《全唐詩》無范質詩。按質雖爲宋初名臣，然曾歷仕後晉、漢、周各朝。其從五代主者久，而事宋之日淺，故仍錄補於唐詩之列）\', \'poetryList\': [{\'title\': \'賀李昉\', \'content\': \'翰苑重求李謫仙，詞鋒穎利勝龍泉。朝趨建禮霞烘日，夜直承明月印天。聖主重知緣國士，相公多喜爲同年。青春才子金門貴，蜀錦袍新奪日鮮。\', \'author\': \'【作者】范質\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'無竇儀詩，傳據《五朝名臣言行錄》卷一）\', \'poetryList\': [{\'title\': \'賀李昉\', \'content\': \'廄馬牽來噦噦嘶，馬蹄隨步躡雲梯。新街錦帳達三字，舊制星垣放五題。視草健毫從席選，受降恩詔待公批。仙才已在神仙地，逢見劉晨爲指迷。\', \'author\': \'【作者】竇儀\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'徐鉉（九一七～九九二），字鼎臣，廣陵（今江蘇揚州）人。早歲與韓熙載齊名，江東謂之“韓徐”，又與弟鍇并稱“二徐”。仕南唐，累官至吏部尚書。入宋，爲太子率更令。太宗太平興國初，直學士院。八年（九八三），出爲右散騎常侍，遷左常侍。淳化二年（九九一），以廬州女僧道安誣陷事，貶靜難軍行軍司馬。三年，卒於邠州，年七十六。著有文集三十卷，又有《稽神錄》（一說出於門客蒯亮之手）、《質疑論》等。《宋史》卷四四一有傳。\\u3000徐鉉詩今存七卷，見於三十卷本《徐公文集》（一名《騎省集》）卷一、卷二、卷三、卷四、卷五、卷二一、卷二二。今以《四部叢刊》影印清黄丕烈校宋本（《徐公文集》三十卷）爲底本，校以影印文淵閣《四庫全書》本（《騎省集》三十卷，簡稱四庫本）、《四部備要》排印宋明州本（《騎省集》三十卷，簡稱備要本）、徐乃昌影宋重刊本（《徐公文集》三十卷，簡稱徐本），參校《全唐詩》（中華書局排印本）、《玉壺清話》（中華書局排印本）所收詩。并從《東軒筆錄》（中華書局排印本）等錄得集外詩，編附卷末。\', \'poetryList\': [{\'title\': \'寄饒州王郎中效李白體\', \'content\': \'珍重王光嗣，交情尚在不。蕪城連宅住，楚塞並車游。別後官三改，年來歲六周。銀鈎無一字，何以緩離愁。\', \'author\': \'【作者】徐鉉\'}, {\'title\': \'游方山宿李道士房\', \'content\': \'從來未面李先生，借我西窗卧月明。二十三家同願識，素騾何日暫還城。\', \'author\': \'【作者】徐鉉\'}, {\'title\': \'送察院李侍御使廬陵因寄孟員外\', \'content\': \'繡衣乘驛急如星，山水何妨寄野情。肯向九仙臺下歇，閒聽孟叟醉吟聲。\', \'author\': \'【作者】徐鉉\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'鄧洵美，連州人，或曰郴郡人。晉天福中登第，後還鄉，上牋周行逢，署館驛巡官，已而行逢疑之，貶爲易俗場官，使盜殺之。詩一首。\', \'poetryList\': [{\'title\': \'和李昉\', \'content\': \'詞場幾度讓長鞭，又向清朝賀九遷。品秩雖然殊此日，歲寒終不改當年。馳名早已超三院，侍直仍忻步八磚。今日相逢番自愧，閑吟對酒倍潸然。\', \'author\': \'【作者】鄧洵美\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'王元，字文元，桂林（今屬廣西）人。隠居不仕，與廖融爲詩友。後終於長沙（《詩話總龜》前集卷一一引《雅言繫述》）。今錄詩五首。\', \'poetryList\': [{\'title\': \'悼李韶\', \'content\': \'韶也命何奇，生前與世違。貧棲古梵剎，終著舊麻衣。雅句僧抄遍，孤墳客吊稀。故園今孰在，應見夢中歸。\', \'author\': \'【作者】王元\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'孟貫，字一之，建陽（今屬福建）人，一說建安（今福建建甌）人（《萬姓統譜》卷一○八）。後周顯德中，釋褐授官（《江南野史》卷八），爲性疏野，不以名宦爲意，喜篇章，諫議大夫楊徽之稱之（《詩話總龜》前集卷一三引《詩史》）。今錄詩三十一首。\', \'poetryList\': [{\'title\': \'寄李處士\', \'content\': \'僧話磻溪叟，平生重赤松。夜堂悲蟋蟀，秋水老芙蓉。吟坐倦垂釣，閒行多倚筇。聞名來已久，未得一相逢。\', \'author\': \'【作者】孟貫\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'夏侯嶠（九三三～一○○四），字峻極，濟州鉅野（今屬山東）人。太宗太平興國初進士。歷興州、邠州、興元府通判。雍熙二年（九八五）改左補闕、直史館。出知莫州、洪州，入直昭文館。真宗即位，知審刑院，擢樞密副使。咸平二年（九九九）爲翰林侍讀學士，兼秘書監，出使江南巡撫。使還，判吏部選事。景德元年卒，年七十二（《宋史新編》卷九○）。有集十五卷，已佚。《宋史》卷二九二、《東都事略》卷三七有傳。\', \'poetryList\': [{\'title\': \'送李少和還山\', \'content\': \'暫來雙闕下，雅向九霞間。遂策雲中杖，言歸海上山。入林煮白石，服氣駐朱顔。自愧風塵客，瓊枝窅莫攀。\', \'author\': \'【作者】夏侯嶠\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'呂端（九三五～一○○○），字易直，幽州安次（今屬河北）人。太祖開寶八年（九七五）知成都。太宗淳化四年（九九三）爲樞密直學士，拜參知政事。至道元年（九九五）爲戶部侍郎、同平章事（《續資治通鑑長編》卷三七），進門下侍郎兼兵部尚書。真宗即位，加右僕射，監修國史。咸平二年（九九九），以太子太保致仕。三年，卒，年六十六。謚正惠。《宋史》卷二八一有傳。今錄詩二首。\', \'poetryList\': [{\'title\': \'贈李公\', \'content\': \'憶昔僦居明德坊，官資俱是校書郎。青衫共直昭文館，白首同登政事堂。佐國廟謨君已展，避賢榮路我猶妨。主恩至重何時報，老眼相看淚兩行。\', \'author\': \'【作者】呂端\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'胡宿（九九五～一○六七），字武平，常州晉陵（今江蘇常州）人。仁宗天聖二年（一○二四）進士。歷官揚子尉、通判宣州、知湖州、兩浙轉運使、修起居注、知制誥、翰林學士、樞密副使。英宗治平三年（一○六六）以尚書吏部侍郎、觀文殿學士知杭州。四年，除太子少師致仕，命未至已病逝，年七十三（《歐陽文忠公文集》卷三四《胡公墓誌銘》）。謚文恭。墓誌銘稱有文集四十卷，《直齋書錄解題》著錄《胡文恭集》七十卷，久佚。今所見者，有《唐詩鼓吹》、《吳郡志》、《天台續集》、《兩宋名賢小集》、《宋詩紀事》、《積書巖宋詩刪》等各收有胡宿詩。清四庫館臣從《永樂大典》輯出胡宿詩文一千五百餘首，編爲《文恭集》五十卷，又搜輯散見於他書者爲《補遺》一卷。收入《四庫全書》和《武英殿聚珍版叢書》時，刪去其中青詞樂語十卷，並將《補遺》編入，定爲四十卷。北京大學圖書館藏有清抄《文恭集》五十卷，《補遺》一卷，仍爲四庫館臣初輯本面貌。《宋史》卷三一八有傳。\\u3000胡宿詩，以《武英殿聚珍版叢書·文恭集》爲底本，校以清抄五十卷本（簡稱清抄本）、影印文淵閣《四庫全書》本（簡稱四庫本），並參校《吳郡志》、《天台續集》、清陸貽典等刻《唐詩鼓吹注解》等書。另輯得之集外詩，附于卷末。\', \'poetryList\': [{\'title\': \'送寶應李尉\', \'content\': \'曾飛麗藻清堯問，猶屈長才尉楚城。官是神仙標秀領，縣因靈寶紀嘉名。西崑已挾凌雲譽，外戶全消擊柝聲。早晚聲名來謁帝，會看雙璧賜虞卿。\', \'author\': \'【作者】胡宿\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'宋庠（九九六～一○六六），字公序，原名郊，入仕後改名庠。開封雍丘（今河南杞縣）人，後徙安州之安陸（今屬湖北）。仁宗天聖二年（一○二四）進士，初仕襄州通判，召直史館，歷三司戶部判官、同修起居注、左正言、翰林學士、參知政事、樞密使，官至同中書門下平章事，深爲仁宗親信。慶曆三年（一○四三）因其子與匪人交結，出知河南府，徙知許州、河陽。不久召回任樞密使，與副使程戡不協，再出知鄭州、相州。英宗即位，改知亳州，以司空致仕。治平三年卒，年七十一。謚元獻。宋庠與其弟祁均以文學知名，有集四十四卷，已散佚。清四庫館臣從《永樂大典》輯得宋庠詩文，編爲《元憲集》四十卷。事見王珪《華陽集》卷四八《宋元憲公神道碑》，《宋史》卷二八四有傳。\\u3000宋庠詩，以武英殿聚珍版叢書《元憲集》爲底本，校以影印文淵閣《四庫全書》本（簡稱四庫本）及諸書散見的宋庠詩，編定十四卷。另輯得集外詩七首，附于卷末。\', \'poetryList\': [{\'title\': \'和答李學士見寄長韵\', \'content\': \'璇源多清派，蘭谷無絕芳。之子相門裔，高才映周行。妙年弄文史，雅志含圭璋。中歲困官簿，銖兩爭低昂。一通金閨籍，荏苒潘鬢霜。剖符屢麾阮，執戟更疲揚。聞君近多暇，歸偃三經堂。左右褫紳組，縱橫羅巾箱。安驅仁義塗，弭節名聲場。戰酣道始勝，心泰無癯尪。壯思挾飛藻，詔我臨霞章。我時坐鈴閣，寂寞如禪房。開緘一快讀，雋味腴且長。高義溢句流，清風隨篇翔。感人不無意，在水河湯湯。吾匪辯音者，空冀懷仁藏。矧屬歲躔暮，百卉皆芸黄。何以謝君子，松柏同蒼蒼。\', \'author\': \'【作者】宋庠\'}, {\'title\': \'贈駙馬都尉李和文公挽詞二首  其一\', \'content\': \'曲里猶龍族，西京尚主侯。勳華傳舊鉞，名理寄虛舟。得疾真無妄，觀生遂若休。偏嗟荀令沼，回作逝川流。\', \'author\': \'【作者】宋庠\'}, {\'title\': \'贈駙馬都尉李和文公挽詞二首  其二\', \'content\': \'北第琴樽歇，東原旌旆飛。清風邈無所，此路是長違。野闊車吞響，天愁日抱輝。空餘門下客，魚鳥歎何依。\', \'author\': \'【作者】宋庠\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'某聞望之補郡，常雅意于本朝；長孺爲郎，每注情于禁闥。皆欲恢明景化，徽序懿綱。宣碩惠于政經，奉清光于晝接。前聞盡在，茂躅可徵。恭惟學士淑問熙朝，英猷秀世。頒條列土，重季布之股肱；陪議外庭，湊吾丘之智略。果膺綠詔，入覲紫宸。蓋丕績以上聞，表清衷之彌屬。飭東方之騎，飛鞚載嚴；趣舍人之裝，輶軒既御。而某夙叨恩紀，敢嘿頌聲。才愧巴人，莫預彌高之唱；惠同嘉樹，願賡勿剪之謠。謹齋沐成七言四韵送行詩三章，繕寫捧詣客次，祗候陳獻。理非逮意，言且無文，甫成怫悅之辭，少係中和之作。\', \'poetryList\': [{\'title\': \'謝提點刑獄李郎中贈扇\', \'content\': \'規裁珍素裂輕雲，柄剪春篁燥叢露。製以爲扇持贈君，拂君懷袖袪君暑。蜀天六月苦炎歊，赤龍秋秋駐雲霧。火走膚脈汗若流，暗逗浮凉下天宇。畫作飛蠅緣誤點，徐隔游塵不成污。何以爲報我知之，奉揚仁風慰黎庶。\', \'author\': \'【作者】宋祁\'}, {\'title\': \'同年李宗太平法掾\', \'content\': \'俊名參吏啟，掾事補編堂。盡取黄金酒，重紆碧鶴裳。佐庖鮭菜厚，束帙秘厨香。認得公庭步，鬑鬚白皙郎。\', \'author\': \'【作者】宋祁\'}, {\'title\': \'唐李衛公廟\', \'content\': \'斯人天挺傑，賊膽畏膏肓。疾戰江陵破，長驅頡利亡。成功在不伐，垂烈付無疆。血食雄京輔，于今異姓王。\', \'author\': \'【作者】宋祁\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'余靖（一○○○～一○六四），字安道，韶州曲江（今廣東韶關）人。仁宗天聖二年（一○二四）進士。初爲贛縣尉，累擢集賢校理。景祐三年（一○三六）以上疏論范仲淹謫官事，貶監筠州酒稅。遷知英州。慶曆間爲右正言。三使契丹，以作蕃語詩出知吉州。皇祐四年（一○五二），知潭州，改桂州。後加集賢院學士。嘉祐六年（一○六一），知廣州。官至工部尚書。英宗治平元年卒，年六十五。謚襄。有《武溪集》二十卷。事見《歐陽文忠公集》卷二三《余襄公神道碑銘》，《宋史》卷三二○有傳。\\u3000余靖詩二卷，以明成化九年蘇韡等刻《武溪集》爲底本（藏北京圖書館），參校明嘉靖四十五年劉穩刻本（簡稱劉本，藏北京圖書館）、影印文淵閣《四庫全書》本（簡稱四庫本）。輯得的集外詩附於卷末。\', \'poetryList\': [{\'title\': \'同李祕校譚員外宿月華上方\', \'content\': \'上方逢夏夕，月色遍千山。但覺星河近，偶同江海閑。事拋興廢外，談極有無間。却笑明朝俗，紅塵隨馬還。\', \'author\': \'【作者】余靖\'}, {\'title\': \'同李祕校譚員外月華長老謁慈濟禪師會宿寶林道場\', \'content\': \'祖堂留勝迹，再宿此登臨。雲月自明暗，山川無古今。谷聲猿嘯遠，泉脈虎跑深。共到忘言處，休論佛與心。\', \'author\': \'【作者】余靖\'}, {\'title\': \'送李廷評知福清縣\', \'content\': \'世閥茂儒紳，甌閩寵命新。縣圖遥盡海，鄉樹密藏春。供帳鶑將老，登車雉已馴。行聞趨召節，舊美政如神。\', \'author\': \'【作者】余靖\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'章峴，字伯瞻，浦城（今屬福建）人。岷弟。仁宗天聖八年（一○三○）進士（明嘉靖《建寧府志》卷一五）。官太常博士（《文恭集》卷一四《章峴可太常博士制》）。嘉祐五年（一○六○），以職方員外郎知江陰（明嘉靖《江陰縣志》卷一二）。英宗治平中，官提點廣南西路刑獄、轉運使，遷太常少卿（清嘉慶《廣西通志》卷二一七《金石三》）。終金紫光祿大夫（《建寧府志》卷一五）。今錄詩七首。\', \'poetryList\': [{\'title\': \'和李昇之夜遊漓江上\', \'content\': \'自笑無錢對菊花，天寒欲冷慢令賒。桄榔葉暗臨江圃，茉莉香來釀酒家。月霧空濛螢照水，霜風蕭瑟鷺眠沙。歸尋獨秀山前路，城角參橫斗柄斜。\', \'author\': \'【作者】章峴\'}]}, {\'selectType\': \'0\', \'authorInfo\': \'本卷作于皇祐五年（一○五三），是年秋作者喪母，解監永濟倉官，扶櫬歸宣城守制。《宛陵文集》自《和吳沖卿元會》始，原編卷一七；自《依韻和原甫省中松石畫壁》始，原編卷一八；自《韓子華遺冰》始，原編卷三九；自《寧陵阻風雨寄都下親舊》始，原編卷四○。\', \'poetryList\': [{\'title\': \'右丞李相公自洛移鎮河陽\', \'content\': \'侯服齊三輔，天臺聳百僚。新章刻銅虎，舊德冠金貂。已作歌襦化，方期執玉朝。雙鞬辭洛宅，千騎向河橋。鼓角春城暮，鶑花故苑遥。瓜亭猶接軫，棠茇自敷條。夾道都人擁，迎風駟牡驕。莫隨文學乘，空望旆旌飄。\', \'author\': \'【作者】梅堯臣\'}, {\'title\': \'後園桃李花\', \'content\': \'後園桃李花，灼灼復皎皎。南枝開已繁，北枝縈尚少。蘤萼相輝映，根本自鈎繞。無爲驚風吹，紛紛逐飛鳥。\', \'author\': \'【作者】梅堯臣\'}, {\'title\': \'脩真觀李道士年老貧餓無所依忽縊死因爲詩以悼之\', \'content\': \'唐室王子後，黄冠事隠淪。餐霞不滿腹，披雲不蔽身。八十不能死，縊以頭上巾。始慕老莊術，終厭道德貧。營營求長生，反困甑中塵。\', \'author\': \'【作者】梅堯臣\'}]}]', '1', '2024-01-18 07:34:54');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-01-13 11:32:48', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-01-13 11:32:48', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-01-13 11:32:48', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-01-13 11:32:48', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-01-13 11:32:48', '', null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', 'Top', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:32:02');
INSERT INTO `sys_dept` VALUES ('103', '100', '0,100', '管理员', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:35:16');
INSERT INTO `sys_dept` VALUES ('105', '100', '0,100', '普通用户', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:35:11');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-01-13 11:32:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-01-13 11:32:48', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-01-13 11:32:48', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-01-13 11:32:48', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-01-13 11:32:48', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-01-13 11:32:48', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-01-13 11:32:48', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-01-13 11:32:48', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-01-13 11:32:48', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-01-13 11:32:48', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-01-13 11:32:48', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-01-13 11:32:48', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-01-13 11:32:48', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 11:53:09');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 11:55:13');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 12:00:19');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 12:00:24');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 12:30:08');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 13:13:01');
INSERT INTO `sys_logininfor` VALUES ('106', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-01-13 13:57:04');
INSERT INTO `sys_logininfor` VALUES ('107', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 13:57:16');
INSERT INTO `sys_logininfor` VALUES ('108', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 13:57:30');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 13:57:37');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 14:11:41');
INSERT INTO `sys_logininfor` VALUES ('111', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-01-13 14:28:26');
INSERT INTO `sys_logininfor` VALUES ('112', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 14:28:33');
INSERT INTO `sys_logininfor` VALUES ('113', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 14:28:39');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 14:28:43');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 16:21:06');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-01-13 18:33:13');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 18:33:17');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 19:22:01');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 21:31:45');
INSERT INTO `sys_logininfor` VALUES ('120', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-01-13 21:31:50');
INSERT INTO `sys_logininfor` VALUES ('121', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 21:31:53');
INSERT INTO `sys_logininfor` VALUES ('122', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 21:32:01');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 21:32:10');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 21:32:23');
INSERT INTO `sys_logininfor` VALUES ('125', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 21:32:28');
INSERT INTO `sys_logininfor` VALUES ('126', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:07:25');
INSERT INTO `sys_logininfor` VALUES ('127', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:07:33');
INSERT INTO `sys_logininfor` VALUES ('128', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:09:57');
INSERT INTO `sys_logininfor` VALUES ('129', 'manage', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-13 22:10:06');
INSERT INTO `sys_logininfor` VALUES ('130', 'manage', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-01-13 22:10:06');
INSERT INTO `sys_logininfor` VALUES ('131', 'manage', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-01-13 22:11:10');
INSERT INTO `sys_logininfor` VALUES ('132', 'manage', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:11:19');
INSERT INTO `sys_logininfor` VALUES ('133', 'manage', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:11:43');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:11:48');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:12:40');
INSERT INTO `sys_logininfor` VALUES ('136', 'common', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-01-13 22:13:01');
INSERT INTO `sys_logininfor` VALUES ('137', 'common', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:13:09');
INSERT INTO `sys_logininfor` VALUES ('138', 'common', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:13:59');
INSERT INTO `sys_logininfor` VALUES ('139', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-01-13 22:18:23');
INSERT INTO `sys_logininfor` VALUES ('140', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:18:40');
INSERT INTO `sys_logininfor` VALUES ('141', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:34:39');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:36:01');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-13 22:50:46');
INSERT INTO `sys_logininfor` VALUES ('144', 'common', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-13 22:50:50');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-17 21:35:38');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-17 21:38:07');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-17 21:42:26');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-17 22:21:15');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-18 09:16:37');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-18 09:55:29');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 10:03:52');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-18 11:11:17');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 11:11:24');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-18 11:13:31');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 11:13:38');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 13:10:43');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 14:44:20');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-18 15:05:50');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-18 15:07:30');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 15:29:29');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-01-18 15:35:52');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-01-13 11:32:48', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '1', '0', '', 'monitor', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:57:21', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '1', '0', '', 'tool', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:55:33', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-01-13 11:32:48', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-01-13 11:32:48', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-01-13 11:32:48', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:57:43', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '1', '0', 'system:post:list', 'post', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:51:02', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:51:13', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:50:35', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:50:46', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '1', '0', '', 'log', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:50:51', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '1', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:57:16', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '1', '0', 'monitor:druid:list', 'druid', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:56:23', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '1', '0', 'monitor:server:list', 'server', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:56:11', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '1', '0', 'monitor:cache:list', 'redis', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:56:27', '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '1', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 12:57:08', '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-01-13 11:32:48', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-01-13 11:32:48', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '历史记录管理', '0', '2', 'history', 'history/index', null, '1', '0', 'C', '0', '0', '', 'list', 'admin', '2024-01-13 14:44:16', 'admin', '2024-01-13 20:25:58', '');
INSERT INTO `sys_menu` VALUES ('2001', '关键词检索', '0', '3', 'search', 'search/index', null, '1', '0', 'C', '0', '0', '', 'search', 'admin', '2024-01-13 20:06:41', 'admin', '2024-01-13 20:27:03', '');
INSERT INTO `sys_menu` VALUES ('2002', '诗词对话', '0', '0', 'talk/index', 'talk/index', null, '1', '0', 'C', '0', '0', '', 'build', 'admin', '2024-01-17 22:25:20', 'admin', '2024-01-17 22:28:24', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-01-13 11:32:49', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-01-13 11:32:49', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', '0', null, '2024-01-13 12:30:23');
INSERT INTO `sys_oper_log` VALUES ('101', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', '0', null, '2024-01-13 12:30:29');
INSERT INTO `sys_oper_log` VALUES ('102', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:30:33');
INSERT INTO `sys_oper_log` VALUES ('103', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', '0', null, '2024-01-13 12:30:35');
INSERT INTO `sys_oper_log` VALUES ('104', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:30:37');
INSERT INTO `sys_oper_log` VALUES ('105', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:31:05');
INSERT INTO `sys_oper_log` VALUES ('106', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:31:07');
INSERT INTO `sys_oper_log` VALUES ('107', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:31:09');
INSERT INTO `sys_oper_log` VALUES ('108', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:31:11');
INSERT INTO `sys_oper_log` VALUES ('109', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Top\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:32:02');
INSERT INTO `sys_oper_log` VALUES ('110', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"总\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"Top\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:32:13');
INSERT INTO `sys_oper_log` VALUES ('111', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"管理\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"总\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:32:19');
INSERT INTO `sys_oper_log` VALUES ('112', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"普通\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"parentName\":\"总\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:32:25');
INSERT INTO `sys_oper_log` VALUES ('113', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 11:32:48\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:33:27');
INSERT INTO `sys_oper_log` VALUES ('114', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":103,\"deptName\":\"管理\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"总\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:34:51');
INSERT INTO `sys_oper_log` VALUES ('115', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"parentName\":\"总\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:34:58');
INSERT INTO `sys_oper_log` VALUES ('116', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:35:01');
INSERT INTO `sys_oper_log` VALUES ('117', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"Top\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:35:11');
INSERT INTO `sys_oper_log` VALUES ('118', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":103,\"deptName\":\"管理员\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"Top\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:35:16');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:50:35');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:50:46');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:50:51');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:51:02');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:51:13');
INSERT INTO `sys_oper_log` VALUES ('124', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011],\"params\":{},\"roleId\":100,\"roleKey\":\"manage\",\"roleName\":\"管理员\",\"roleSort\":1,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:52:18');
INSERT INTO `sys_oper_log` VALUES ('125', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 11:32:48\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:52:33');
INSERT INTO `sys_oper_log` VALUES ('126', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 12:52:18\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011],\"params\":{},\"roleId\":100,\"roleKey\":\"manage\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:52:37');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:55:14');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:55:17');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:55:33');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/job/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":110,\"menuName\":\"定时任务\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2,\"path\":\"job\",\"perms\":\"monitor:job:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:56:00');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/server/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":112,\"menuName\":\"服务监控\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2,\"path\":\"server\",\"perms\":\"monitor:server:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:56:11');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/druid/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":111,\"menuName\":\"数据监控\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2,\"path\":\"druid\",\"perms\":\"monitor:druid:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:56:23');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/cache/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":113,\"menuName\":\"缓存监控\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2,\"path\":\"cache\",\"perms\":\"monitor:cache:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:56:27');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/cache/list\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"redis-list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":114,\"menuName\":\"缓存列表\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2,\"path\":\"cacheList\",\"perms\":\"monitor:cache:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:57:08');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"monitor/online/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"online\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":109,\"menuName\":\"在线用户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"online\",\"perms\":\"monitor:online:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:57:16');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:57:21');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-01-13 11:32:48\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"部门管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:57:43');
INSERT INTO `sys_oper_log` VALUES ('138', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 12:52:18\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,109,1046,1047,1048,101,1007,1008,1009,1010,1011],\"params\":{},\"roleId\":100,\"roleKey\":\"manage\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 12:58:11');
INSERT INTO `sys_oper_log` VALUES ('139', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 14:11:36');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"history/index\",\"createBy\":\"admin\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"历史记录管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"history\",\"perms\":\"history:history:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 14:44:16');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"/search/index\",\"createBy\":\"admin\",\"icon\":\"search\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"关键词检索\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"search\",\"perms\":\"search:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 20:06:41');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"/search/index\",\"createTime\":\"2024-01-13 20:06:41\",\"icon\":\"search\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"关键词检索\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"search\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 20:25:53');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"history/index\",\"createTime\":\"2024-01-13 14:44:16\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"历史记录管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"history\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 20:25:58');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"search/index\",\"createTime\":\"2024-01-13 20:06:41\",\"icon\":\"search\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"关键词检索\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"search\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 20:27:03');
INSERT INTO `sys_oper_log` VALUES ('145', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 11:32:48\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001],\"params\":{},\"remark\":\"普通角色\",\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 21:31:25');
INSERT INTO `sys_oper_log` VALUES ('146', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 14:28:22\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"\",\"loginDate\":\"2024-01-13 14:28:33\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"test\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 21:31:41');
INSERT INTO `sys_oper_log` VALUES ('147', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-01-13 12:52:18\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,109,1046,1047,1048,101,1007,1008,1009,1010,1011,2000,2001],\"params\":{},\"roleId\":100,\"roleKey\":\"manage\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 21:32:20');
INSERT INTO `sys_oper_log` VALUES ('148', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'test', null, '/system/user/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"当前用户不能删除\",\"code\":500}', '0', null, '2024-01-13 22:08:04');
INSERT INTO `sys_oper_log` VALUES ('149', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:11:10\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"\",\"loginDate\":\"2024-01-13 22:11:20\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"管理员\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"manage\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 22:12:29');
INSERT INTO `sys_oper_log` VALUES ('150', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:11:10\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"\",\"loginDate\":\"2024-01-13 22:11:20\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"管理员\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"manage\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 22:12:36');
INSERT INTO `sys_oper_log` VALUES ('151', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:13:01\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"123@163.com\",\"loginDate\":\"2024-01-13 22:13:10\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"普通用户\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":104,\"userName\":\"common\"}', '{\"msg\":\"修改用户\'common\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2024-01-13 22:36:58');
INSERT INTO `sys_oper_log` VALUES ('152', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:13:01\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"123@163.com\",\"loginDate\":\"2024-01-13 22:13:10\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"普通用户\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":104,\"userName\":\"common\"}', '{\"msg\":\"修改用户\'common\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2024-01-13 22:37:01');
INSERT INTO `sys_oper_log` VALUES ('153', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:13:01\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"123@163.com\",\"loginDate\":\"2024-01-13 22:13:10\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"普通用户1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":104,\"userName\":\"common\"}', '{\"msg\":\"修改用户\'common\'失败，邮箱账号已存在\",\"code\":500}', '0', null, '2024-01-13 22:37:26');
INSERT INTO `sys_oper_log` VALUES ('154', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:13:01\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"common@163.com\",\"loginDate\":\"2024-01-13 22:13:10\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"普通用户1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":104,\"userName\":\"common\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 22:37:58');
INSERT INTO `sys_oper_log` VALUES ('155', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-13 22:13:01\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":105,\"deptName\":\"普通用户\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":105,\"email\":\"common@163.com\",\"loginDate\":\"2024-01-13 22:13:10\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"普通用户\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[200],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":200,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":104,\"userName\":\"common\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-13 22:38:03');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-17 22:21:52');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:03');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:07');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:10');
INSERT INTO `sys_oper_log` VALUES ('160', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:13');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:19');
INSERT INTO `sys_oper_log` VALUES ('162', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1060', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:23');
INSERT INTO `sys_oper_log` VALUES ('163', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:26');
INSERT INTO `sys_oper_log` VALUES ('164', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/115', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:30');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:34');
INSERT INTO `sys_oper_log` VALUES ('166', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-01-17 22:22:41');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:48');
INSERT INTO `sys_oper_log` VALUES ('168', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:51');
INSERT INTO `sys_oper_log` VALUES ('169', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:54');
INSERT INTO `sys_oper_log` VALUES ('170', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:22:58');
INSERT INTO `sys_oper_log` VALUES ('171', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:23:01');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:23:04');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:23:07');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"诗词对话\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"talk/index\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:25:20');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-17 22:25:20\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"诗词对话\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"talk/index\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:27:47');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"talk/index\",\"createTime\":\"2024-01-17 22:25:20\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"诗词对话\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"talk/index\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-01-17 22:28:24');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2024-01-13 11:32:48', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2024-01-13 11:32:48', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-01-13 11:32:48', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('100', '管理员', 'manage', '2', '1', '1', '1', '0', '0', 'admin', '2024-01-13 12:52:18', 'admin', '2024-01-13 21:32:20', null);
INSERT INTO `sys_role` VALUES ('200', '普通角色', 'common', '3', '2', '1', '1', '0', '0', 'admin', '2024-01-13 11:32:48', 'admin', '2024-01-13 21:31:25', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '100');
INSERT INTO `sys_role_menu` VALUES ('100', '101');
INSERT INTO `sys_role_menu` VALUES ('100', '109');
INSERT INTO `sys_role_menu` VALUES ('100', '1000');
INSERT INTO `sys_role_menu` VALUES ('100', '1001');
INSERT INTO `sys_role_menu` VALUES ('100', '1002');
INSERT INTO `sys_role_menu` VALUES ('100', '1003');
INSERT INTO `sys_role_menu` VALUES ('100', '1004');
INSERT INTO `sys_role_menu` VALUES ('100', '1005');
INSERT INTO `sys_role_menu` VALUES ('100', '1006');
INSERT INTO `sys_role_menu` VALUES ('100', '1007');
INSERT INTO `sys_role_menu` VALUES ('100', '1008');
INSERT INTO `sys_role_menu` VALUES ('100', '1009');
INSERT INTO `sys_role_menu` VALUES ('100', '1010');
INSERT INTO `sys_role_menu` VALUES ('100', '1011');
INSERT INTO `sys_role_menu` VALUES ('100', '1046');
INSERT INTO `sys_role_menu` VALUES ('100', '1047');
INSERT INTO `sys_role_menu` VALUES ('100', '1048');
INSERT INTO `sys_role_menu` VALUES ('100', '2000');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('200', '2000');
INSERT INTO `sys_role_menu` VALUES ('200', '2001');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', 'admin', '00', 'admin@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-01-18 15:29:29', 'admin', '2024-01-13 11:32:48', '', '2024-01-18 15:29:29', '管理员');
INSERT INTO `sys_user` VALUES ('103', '105', 'manage', '管理员', '00', 'manage@163.com', '', '0', '', '$2a$10$eB3FuglyQAvEmM1ICq2ugeBlfTYfHJ5PJgIM.lbmiLD3meLkY/9dC', '0', '0', '127.0.0.1', '2024-01-13 22:11:20', '', '2024-01-13 22:11:10', 'admin', '2024-01-13 22:12:36', null);
INSERT INTO `sys_user` VALUES ('104', '105', 'common', '普通用户', '00', 'common@163.com', '', '0', '', '$2a$10$4LSx.e7Au59nFyQoDU/cOu0X19xNMseRpQgwYOeyGcWYrKM2iuv6C', '0', '0', '127.0.0.1', '2024-01-13 22:50:50', '', '2024-01-13 22:13:01', 'admin', '2024-01-13 22:50:50', null);
INSERT INTO `sys_user` VALUES ('105', '105', 'test', 'test', '00', 'test@163.com', '', '0', '', '$2a$10$9CEXHBvV7K5rvCh5fdcHHO7UPUAjz45Bxdqq2oHoCvfdGFeMEMGOu', '0', '0', '127.0.0.1', '2024-01-13 22:18:40', '', '2024-01-13 22:18:23', '', '2024-01-13 22:18:40', null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('102', '100');
INSERT INTO `sys_user_role` VALUES ('103', '100');
INSERT INTO `sys_user_role` VALUES ('104', '200');
INSERT INTO `sys_user_role` VALUES ('105', '200');
