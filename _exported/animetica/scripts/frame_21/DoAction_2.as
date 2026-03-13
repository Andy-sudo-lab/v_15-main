function eroSound()
{
   bgm = new Array();
   bgm[0] = new Sound(_root.BGMMC);
   bgm[0].attachSound("bgm4wav");
   bgm[0].setVolume(100);
   bgm[1] = new Sound(_root.BGMMC);
   bgm[1].attachSound("bgm5wav");
   bgm[1].setVolume(100);
   bgm[2] = new Sound(_root.BGMMC);
   bgm[2].attachSound("bgm1MP3");
   bgm[2].setVolume(100);
   bgm[3] = new Sound(_root.BGMMC);
   bgm[3].attachSound("bgm2MP3");
   bgm[3].setVolume(100);
   bgm[4] = new Sound(_root.BGMMC);
   bgm[4].attachSound("bgm3MP3");
   bgm[4].setVolume(100);
   bgm[5] = new Sound(_root.BGMMC);
   bgm[5].attachSound("bgm6.mp3");
   bgm[5].setVolume(100);
   bgm[6] = new Sound(_root.BGMMC);
   bgm[6].attachSound("bgm7.mp3");
   bgm[6].setVolume(100);
   sAll1 = new Sound(_root.SVMC);
   sAll1.setVolume(100);
   vibVol1 = new Sound(_root.SVMC.S_vibMC1);
   vibVol1.setVolume(100);
   vibVol2 = new Sound(_root.SVMC.S_vibMC2);
   vibVol2.setVolume(100);
   vibVol3 = new Sound(_root.SVMC.S_vibMC3);
   vibVol3.setVolume(100);
}
function soundPro()
{
   if(_root.stageMC != undefined)
   {
      sAll2 = new Sound(_root.stageMC);
      if(soundType)
      {
         sAll2.setVolume(100);
      }
      else
      {
         sAll2.setVolume(0);
      }
   }
   if(soundType)
   {
      sAll1.setVolume(100);
   }
   else
   {
      sAll1.setVolume(0);
   }
}
function musicPro()
{
   _root.SVMC.S_vibMC1.gotoAndStop(1);
   _root.SVMC.S_vibMC2.gotoAndStop(1);
   _root.SVMC.S_vibMC3.gotoAndStop(1);
   vibVol1.stop();
   vibVol2.stop();
   vibVol3.stop();
}
function keyWait(n)
{
   switch(n)
   {
      case 0:
         if(_root.SVMC.pyoroMC._currentframe == 1)
         {
            _root.SVMC.pyoroMC.play();
            return true;
         }
         return false;
         break;
      case 1:
         if(_root.nasiMC._currentframe == 1)
         {
            _root.nasiMC.play();
            return true;
         }
         return false;
         break;
      case 2:
         if(_root.SVMC.puriMC._currentframe == 1)
         {
            _root.SVMC.puriMC.play();
            return true;
         }
         return false;
         break;
      case 3:
         if(_root.SVMC.piMC._currentframe == 1)
         {
            _root.SVMC.piMC.play();
            return true;
         }
         return false;
         break;
      case 4:
         if(_root.nasiMC2._currentframe == 1)
         {
            _root.nasiMC2.play();
            return true;
         }
         return false;
         break;
      default:
         return;
   }
}
function timeChange()
{
   var _loc3_ = Math.floor(tTime / 3600);
   var _loc1_ = tTime % 3600;
   var _loc2_ = _loc1_ % 60;
   _loc1_ = Math.floor(_loc1_ / 60);
   var _loc6_;
   if(_loc1_ <= 9)
   {
      _loc6_ = "0" + _loc1_;
   }
   else
   {
      _loc6_ = _loc1_;
   }
   var _loc4_;
   if(_loc2_ <= 9)
   {
      _loc4_ = "0" + _loc2_;
   }
   else
   {
      _loc4_ = _loc2_;
   }
   var _loc5_ = _loc3_ + ":" + _loc6_ + ":" + _loc4_;
   return _loc5_;
}
function Debug()
{
   var _loc10_ = _root.startGamenMC.sentakuMC;
   var _loc17_ = _loc10_._currentframe;
   var _loc16_ = paneY * 4 + paneX;
   var _loc18_ = _root._currentframe;
   var _loc15_ = enemy[eNo].partsFlg0;
   var _loc14_ = enemy[eNo].partsFlg1;
   var _loc13_ = enemy[eNo].partsFlg2;
   var _loc12_ = enemy[eNo].partsFlg3;
   var _loc11_ = enemy[eNo].partsFlg4;
   var _loc9_ = enemy[eNo].partsFlg5;
   var _loc8_ = enemy[eNo].partsFlg6;
   var _loc6_ = enemy[eNo].partsFlg7;
   var _loc5_ = enemy[eNo].partsFlg8;
   var _loc4_ = enemy[eNo].partsFlg9;
   var _loc2_ = enemy[eNo].partsFlg10;
   var _loc19_ = _root.stageMC._visible;
   var _loc3_ = tgE._currentframe;
   var _loc20_ = enemy[eNo].ectP;
   var _loc7_ = "\nAstartFlg：" + AstartFlg + "\nanimeFlg:" + animeFlg;
   DDD0 = _loc7_ + "\n\n" + enemy[eneNo].name + "\n敵Ｆ：" + BFeneFinish + "\n自Ｆ：" + BFpriFinish + "\n\nfinishP:" + finishP + "\nLVno: " + tgE.labelF + "\niCo: " + BFco + " / " + volumeValP[vol[4]] + "\neCo: " + tgE.co + "\ncf: " + _loc3_ + "\nIn合図：" + normalIn + "\n\nP0fg :" + _loc15_ + "\nP1fg :" + _loc14_ + "\nP2fg :" + _loc13_ + "\nP3fg :" + _loc12_ + "\nP4fg :" + _loc11_ + "\nP5fg :" + _loc9_ + "\nP6fg :" + _loc8_ + "\nP7fg :" + _loc6_ + "\nP8fg :" + _loc5_ + "\nP9fg :" + _loc4_ + "\nP10fg:" + _loc2_;
}
ANIMETICA = true;
keyType = 2;
qualType = false;
soundType = true;
BGMType = true;
EloadFlg = false;
fukuLv = 101;
cName = "";
