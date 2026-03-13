function eroSound()
{
   bgmOP = new Sound(_root.BGMMC);
   bgmOP.attachSound("bgmOPwav");
   bgmOP.setVolume(100);
   bgm1 = new Sound(_root.BGMMC);
   bgm1.attachSound("bgm1MP3");
   bgm1.setVolume(100);
   bgm2 = new Sound(_root.BGMMC);
   bgm2.attachSound("bgm2MP3");
   bgm2.setVolume(100);
   bgm3 = new Sound(_root.BGMMC);
   bgm3.attachSound("bgm3MP3");
   bgm3.setVolume(100);
   bgm4 = new Sound(_root.BGMMC);
   bgm4.attachSound("bgm4wav");
   bgm4.setVolume(100);
   bgm5 = new Sound(_root.BGMMC);
   bgm5.attachSound("bgm5wav");
   bgm5.setVolume(100);
   bgm6 = new Sound(_root.BGMMC);
   bgm6.attachSound("bgm6MP3");
   bgm6.setVolume(100);
   sAll1 = new Sound(_root.SVMC);
   sAll1.setVolume(100);
   vibVol1 = new Sound(_root.SVMC.S_vibMC1);
   vibVol1.setVolume(100);
   vibVol2 = new Sound(_root.SVMC.S_vibMC2);
   vibVol2.setVolume(100);
   vibVol3 = new Sound(_root.SVMC.S_vibMC3);
   vibVol3.setVolume(100);
}
function musicFO()
{
   if(!BFbuf3)
   {
      return undefined;
   }
   if(sVolco >= 0)
   {
      sVolco--;
   }
   var _loc2_ = Math.round(sVolco);
   vibVol3.setVolume(_loc2_);
   if(!BGMType)
   {
      return undefined;
   }
   if(mVolco >= 0)
   {
      mVolco -= 0.1;
   }
   var _loc1_ = Math.round(mVolco);
   bgm4.setVolume(_loc1_);
   bgm5.setVolume(_loc1_);
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
   stopAllSounds();
   if(!BGMType)
   {
      return undefined;
   }
   cfMain = _root._currentframe - 20;
   var _loc2_;
   switch(cfMain)
   {
      case 10:
         bgmOP.setVolume(100);
         bgmOP.start(0,1);
         break;
      case 15:
         if(mapNo == 0)
         {
            bgm1.setVolume(40);
            bgm1.start(0,9999);
         }
         else if(mapNo == 1 || mapNo == 2 || mapNo == 3 || mapNo == 5 || mapNo == 6 || mapNo == 36 || mapNo == 37)
         {
            bgm2.setVolume(40);
            bgm2.start(0,9999);
         }
         else if(mapNo == 4 || mapNo >= 31 && mapNo <= 34)
         {
            bgm3.setVolume(40);
            bgm3.start(0,9999);
         }
         else if(mapNo == 38)
         {
            bgm6.setVolume(40);
            bgm6.start(0,9999);
         }
         break;
      case 20:
         _loc2_ = miniEV.enemyNo;
         if(_loc2_ == 20 || _loc2_ == 30 || _loc2_ == 40 || _loc2_ == 50 || _loc2_ == 60 || _loc2_ == 90)
         {
            bgm5.setVolume(20);
            bgm5.start(0,9999);
         }
         else
         {
            bgm4.setVolume(20);
            bgm4.start(0,9999);
         }
      case 25:
      case 30:
      case 35:
      case 40:
      case 45:
      default:
         return;
   }
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
   if(_loc1_ <= 9)
   {
      var _loc6_ = "0" + _loc1_;
   }
   else
   {
      _loc6_ = _loc1_;
   }
   if(_loc2_ <= 9)
   {
      var _loc4_ = "0" + _loc2_;
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
   var _loc2_ = _root.startGamenMC.sentakuMC;
   var _loc3_ = _loc2_._currentframe;
   var _loc4_ = paneY * 4 + paneX;
   var _loc5_ = _root._currentframe;
   var _loc6_ = enemy[eNo].partsFlg0;
   var _loc7_ = enemy[eNo].partsFlg1;
   var _loc8_ = enemy[eNo].partsFlg2;
   var _loc9_ = enemy[eNo].partsFlg3;
   var _loc10_ = enemy[eNo].partsFlg4;
   var _loc11_ = enemy[eNo].partsFlg5;
   var _loc12_ = enemy[eNo].partsFlg6;
   var _loc13_ = enemy[eNo].partsFlg7;
   var _loc14_ = enemy[eNo].partsFlg8;
   var _loc15_ = enemy[eNo].partsFlg9;
   var _loc16_ = enemy[eNo].partsFlg10;
   var _loc17_ = _root.stageMC._visible;
   var _loc18_ = tgE._currentframe;
   var _loc19_ = enemy[eNo].ectP;
   var _loc20_ = "\nmapNo：" + mapNo + "\n方向:" + pHo + "\ncharX: " + mapX + "\ncharY: " + mapY + "\nanimeFlg:" + animeFlg + "\n_root:" + _loc5_ + "\nkeyWaitFlg:" + keyWaitFlg + "\n";
   DDD0 = _loc20_ + "\ngameLv: " + gameLv + "\nBFstartFlg:" + BFstartFlg + "\ntgS_visible: " + tgS._visible + "\n\nCF:" + _loc5_ + "\nminiEV.no:" + miniEV.no + "\nminiEV.flg:" + miniEV.flg + "\nworpFlg：" + worpFlg + "\nmaraPflg:" + maraPflg + "\npanelFlg:" + panelFlg + "\nfukuLv:" + fukuLv + "\nmoveFlg:" + moveFlg + "\nstoreFlg:" + storeFlg + "\n選択ﾌﾗｸﾞbufP:" + bufP + "\nTEflg[ 306 ]:" + TEflg[306] + "\n耳っ子存在：" + map[27][4][5];
}
keyType = 2;
qualType = false;
soundType = true;
BGMType = true;
EloadFlg = false;
fukuLv = 101;
cName = "";
tTime = 0;
tBattleCo = 0;
tRunawayCo = 0;
loadMovie(_global.baseUrl + "dataSV1.swf","SVMC");
