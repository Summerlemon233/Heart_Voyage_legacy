import 'package:get/get.dart';
import '../main.dart';
import '../pages/tabs.dart';

//tabs
import '../pages/tabs/sailCanvas.dart';
import '../pages/tabs/sailIsland.dart';
import '../pages/tabs/sailTrack.dart';
import '../pages/tabs/seekHeart.dart';
//seekHearts
import '../pages/heart/anxiety_test.dart';
import '../pages/heart/check_in.dart';
import '../pages/heart/anxiety/anxiety_influence.dart';
import '../pages/heart/anxiety/refined_judge.dart';
import '../pages/heart/anxiety/overall_judge.dart';
import '../pages/heart/anxiety/refined/AASR_scale.dart';
import '../pages/heart/anxiety/refined/ASMC_scale.dart';
import '../pages/heart/anxiety/refined/ITS_scale.dart';
import '../pages/heart/anxiety/refined/MAQ_scale.dart';
import '../pages/heart/anxiety/refined/TAS_scale.dart';
import '../pages/heart/anxiety/refined/graduate_anxiety_scale.dart';

//sailIslands
import '../pages/island/mood_cache.dart';
import '../pages/island/practice.dart';
import '../pages/island/treehole.dart';

//sailCanvas
import '../pages/canvas/my_rank.dart';
import '../pages/canvas/my_star.dart';

//sailTarcks
import '../pages/track/my_map.dart';
import '../pages/track/my_pet.dart';

//system
import '../system/friends.dart';
import '../system/login.dart';
import '../system/message.dart';
import '../system/register.dart';
import '../system/settings.dart';

class AppPage
{
  static final Routes =
  [
    GetPage(name:'/',page: () => Tabs()),
    GetPage(name:'/sailCanvas',page: () => sailCanvas()),
    GetPage(name:'/sailTrack',page: () => sailTrack()),
    GetPage(name:'/sailIsland',page: () => sailIsland()),
    GetPage(name:'/seekHeart',page: () => seekHeart()),
    GetPage(name:'/anxiety_test',page: () => anxiety_test()),
    GetPage(name:'/check_in',page: () => check_in()),
    GetPage(name:'/anxiety_influence',page: () => anxiety_influence()),
    GetPage(name:'/refined_judge',page: () => refined_judge()),
    GetPage(name:'/overall_judge',page: () => overall_judge()),
    GetPage(name:'/AASR_scale',page: () => AASR_scale()),
    GetPage(name:'/ASMC_scale',page: () => ASMC_scale()),
    GetPage(name:'/ITS_scale',page: () => ITS_scale()),
    GetPage(name:'/MAQ_scale',page: () => MAQ_scale()),
    GetPage(name:'/TAS_scale',page: () => TAS_scale()),
    GetPage(name:'/graduate_anxiety_scale',page: () => graduate_anxiety_scale()),
    GetPage(name:'/mood_cache',page: () => mood_cache()),
    GetPage(name:'/practice',page: () => practice()),
    GetPage(name:'/treehole',page: () => treehole()),
    GetPage(name:'/my_rank',page: () => my_rank()),
    GetPage(name:'/my_star',page: () => my_star()),
    GetPage(name:'/my_map',page: () => my_map()),
    GetPage(name:'/my_pet',page: () => my_pet()),
    GetPage(name:'/friends',page: () => friends()),
    GetPage(name:'/login',page: () =>login()),
    GetPage(name:'/message',page: () => message()),
    GetPage(name:'/settings',page: () => settings()),
    GetPage(name:'/register',page: () => register()),



  ];
}
