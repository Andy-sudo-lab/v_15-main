function saveProcessing()
{
   var _loc1_ = SharedObject.getLocal("erotica1","/");
   _loc1_.data.data0 = mapX;
   _loc1_.data.data1 = mapY;
   _loc1_.data.data2 = mapNo;
   _loc1_.data.data3 = gold;
   _loc1_.data.data4 = cName;
   _loc1_.data.data5 = watt;
   _loc1_.data.data10 = itemTimes;
   _loc1_.data.data11 = ectP;
   _loc1_.data.data15 = tTime;
   _loc1_.data.data16 = tBattleCo;
   _loc1_.data.data17 = tRunawayCo;
   _loc1_.data.data20 = TEflg;
   _loc1_.data.data21 = TElv;
   _loc1_.data.data22 = BTEflg;
   _loc1_.data.data25 = itemBN;
   _loc1_.data.data26 = setBeltNo;
   _loc1_.data.data27 = fukuLv;
   _loc1_.data.data30 = mararaFlg;
   _loc1_.data.data110 = SBCflg[10];
   _loc1_.data.data111 = SBCflg[11];
   _loc1_.data.data112 = SBCflg[12];
   _loc1_.data.data118 = SBCflg[18];
   _loc1_.data.data120 = SBCflg[20];
   _loc1_.data.data121 = SBCflg[21];
   _loc1_.data.data124 = SBCflg[24];
   _loc1_.data.data127 = SBCflg[27];
   _loc1_.data.data130 = SBCflg[30];
   _loc1_.data.data131 = SBCflg[31];
   _loc1_.data.data133 = SBCflg[33];
   _loc1_.data.data135 = SBCflg[35];
   _loc1_.data.data138 = SBCflg[38];
   _loc1_.data.data140 = SBCflg[40];
   _loc1_.data.data143 = SBCflg[43];
   _loc1_.data.data145 = SBCflg[45];
   _loc1_.data.data147 = SBCflg[47];
   _loc1_.data.data150 = SBCflg[50];
   _loc1_.data.data151 = SBCflg[51];
   _loc1_.data.data154 = SBCflg[54];
   _loc1_.data.data157 = SBCflg[57];
   _loc1_.data.data160 = SBCflg[60];
   _loc1_.data.data170 = SBCflg[70];
   _loc1_.data.data190 = SBCflg[90];
   _loc1_.data.data195 = SBCflg[95];
   _loc1_.data.dataZ = loadingTest;
   _loc1_.flush();
   for(var _loc2_ in _loc1_.data)
   {
   }
   false;
}
function loadProcessing()
{
   var _loc1_ = SharedObject.getLocal("erotica1","/");
   loadingTest = _loc1_.data.dataZ;
   if(loadingTest != undefined)
   {
      mapX = _loc1_.data.data0;
      mapY = _loc1_.data.data1;
      mapNo = _loc1_.data.data2;
      gold = _loc1_.data.data3;
      cName = _loc1_.data.data4;
      watt = _loc1_.data.data5;
      itemTimes = _loc1_.data.data10;
      ectP = _loc1_.data.data11;
      tTime = _loc1_.data.data15;
      tBattleCo = _loc1_.data.data16;
      tRunawayCo = _loc1_.data.data17;
      TEflg = _loc1_.data.data20;
      TElv = _loc1_.data.data21;
      BTEflg = _loc1_.data.data22;
      itemBN = _loc1_.data.data25;
      setBeltNo = _loc1_.data.data26;
      fukuLv = _loc1_.data.data27;
      mararaFlg = _loc1_.data.data30;
      SBCflg = new Array();
      SBCflg[10] = _loc1_.data.data110;
      SBCflg[11] = _loc1_.data.data111;
      SBCflg[12] = _loc1_.data.data112;
      SBCflg[18] = _loc1_.data.data118;
      SBCflg[20] = _loc1_.data.data120;
      SBCflg[21] = _loc1_.data.data121;
      SBCflg[24] = _loc1_.data.data124;
      SBCflg[27] = _loc1_.data.data127;
      SBCflg[30] = _loc1_.data.data130;
      SBCflg[31] = _loc1_.data.data131;
      SBCflg[33] = _loc1_.data.data133;
      SBCflg[35] = _loc1_.data.data135;
      SBCflg[38] = _loc1_.data.data138;
      SBCflg[40] = _loc1_.data.data140;
      SBCflg[43] = _loc1_.data.data143;
      SBCflg[45] = _loc1_.data.data145;
      SBCflg[47] = _loc1_.data.data147;
      SBCflg[50] = _loc1_.data.data150;
      SBCflg[51] = _loc1_.data.data151;
      SBCflg[54] = _loc1_.data.data154;
      SBCflg[57] = _loc1_.data.data157;
      SBCflg[60] = _loc1_.data.data160;
      SBCflg[70] = _loc1_.data.data170;
      SBCflg[90] = _loc1_.data.data190;
      SBCflg[95] = _loc1_.data.data195;
      textDataSet();
      enemyIntelSet();
      mapResetPro();
      bigEventCheck(1);
      itemUsing(setBeltNo,fukuLv);
      capaInitialSet();
      false;
      return true;
   }
   false;
   return false;
}
tgS = _root.stageMC.stageBMC;
var myMC = new MovieClipLoader();
var myLis1 = new Object();
myLis1.onLoadStart = function(tgS)
{
};
myLis1.onLoadProgress = function(tgS, bytesLoaded, bytesTotal)
{
   var _loc3_ = Math.round(bytesLoaded / bytesTotal * 100);
   var _loc2_ = _root.feedInOutMC;
   _loc2_.loadingMC.bar.gotoAndStop(_loc3_);
};
myLis1.onLoadComplete = function(tgS)
{
   var _loc2_ = _root.feedInOutMC;
   _loc2_.loadingMC._visible = false;
};
myLis1.onLoadInit = function(tgS)
{
   EloadFlg = false;
   tgS.nextFrame();
};
myLis1.onLoadError = function(target_mc, errorCode)
{
   var _loc2_ = _root.feedInOutMC;
   _loc2_.gotoAndStop(1);
   var _loc3_ = "読み込みエラー　敵No.=" + eNo + "　　ERROR CODE =　\n" + errorCode;
   textWindowOpen(42,0,0,0,0,0,_loc3_);
   ERRORflg = true;
   BFstartFlg = false;
   miniEV.flg = false;
   _root.gotoAndStop(35);
};
myMC.addListener(myLis1);
