this.stop();
initialSet(0);
AinitSet(0);
_root.sBattleMC.gotoAndStop(SBcursole);
var i = 0;
while(i <= 100)
{
   if(SBCflg[i])
   {
      var ins = "SBMC" + i;
      _root.sBattleMC[ins].gotoAndStop(2);
   }
   i++;
}
_root.onEnterFrame = function()
{
   if(!keyFlg3)
   {
      return undefined;
   }
   targetCheck();
   enemyTaget();
   tgTr = _root.timerMC;
   cfTr = tgTr._currentframe;
   tfTr = tgTr._totalframes;
   tgTrm = _root.miniTimerMC;
   cfTrm = tgTrm._currentframe;
   cfMain = _root._currentframe - 20;
   var _loc4_;
   var _loc6_;
   var _loc0_;
   var _loc2_;
   var _loc3_;
   var _loc5_;
   switch(cfMain)
   {
      case 10:
         _loc4_ = _root.sBattleMC;
         _loc6_ = _loc4_._currentframe;
         if(!(KF(6) && keyWait(0)))
         {
            if(KF(0) && keyWait(3))
            {
               if(SBcursole == 1)
               {
                  SBcursole = 25;
               }
               else
               {
                  SBcursole--;
               }
               textWindowClose();
            }
            else if(KF(2) && keyWait(3))
            {
               if(SBcursole == 25)
               {
                  SBcursole = 1;
               }
               else
               {
                  SBcursole++;
               }
               textWindowClose();
            }
            else if(KF(1) && keyWait(3))
            {
               if(SBcursole <= 5)
               {
                  SBcursole += 20;
               }
               else
               {
                  SBcursole -= 5;
               }
               textWindowClose();
            }
            else if(KF(3) && keyWait(3))
            {
               if(SBcursole >= 21)
               {
                  SBcursole -= 20;
               }
               else
               {
                  SBcursole += 5;
               }
               textWindowClose();
            }
            else if(KF(5) && keyWait(2))
            {
               if(SBCflg[_loc4_.charNo] && !_root.BFstartFlg)
               {
                  eNo = _loc0_ = _loc4_.charNo;
                  eneNo = _loc0_;
                  _loc2_ = 0;
                  while(_loc2_ <= 10)
                  {
                     _loc3_ = "partsFlg" + _loc2_;
                     copyFlg[_loc2_] = enemy[eneNo][_loc3_];
                     _loc2_ = _loc2_ + 1;
                  }
                  if(tgE == undefined)
                  {
                     eneLoadPro(eneNo);
                  }
                  _root.gotoAndStop(35);
               }
            }
         }
         _loc4_.gotoAndStop(SBcursole);
         break;
      case 15:
         if(AstartFlg)
         {
            tgFio.play();
            if(cfFio == 11)
            {
               tgTr.play();
               tgS._x = 0;
               tgS.gotoAndPlay(2);
               tgS.flashMC.gotoAndStop(2);
               tgS.gaugeMC2._visible = _loc0_ = false;
               tgS.gaugeMC._visible = _loc0_;
               _root.gotoAndStop(40);
            }
            break;
         }
         if(!bfL)
         {
            if(tgS.farFlg != undefined)
            {
               BTNset();
               tgS.gotoAndStop(15);
               bfL = true;
            }
         }
         if(KF(6) && keyWait(0))
         {
            BFstartFlg = false;
            unloadMovie("_root.stageMC.stageBMC");
            _root.gotoAndStop(30);
         }
         MCinitSet();
         if(_root.initSetMC.lv != "patternSet")
         {
            backChange();
            BGMchange();
         }
         break;
      case 20:
         if(cfTr == 1)
         {
            if(!AstartFlg)
            {
               AstartFlg = true;
               _loc5_ = nextCode(cCo);
               if(_loc5_)
               {
                  winClose();
               }
            }
            else
            {
               if(cfTrm == 1 && !bfAS)
               {
                  bfAS = true;
                  animeStartPro();
               }
               if(cfTrm == 1)
               {
                  animeticaPro();
               }
            }
         }
         if(KF(6) && keyWait(0))
         {
            tgS._x = 750;
            tgS.gotoAndStop(1);
            enemyIntelSet(eneNo);
            if(fukuLv != 101)
            {
               tgS.pantsFlg = true;
            }
            else
            {
               tgS.pantsFlg = false;
            }
            BFpriFinish = false;
            _root.gotoAndStop(35);
         }
         backChange();
         BGMchange();
         musicFO();
   }
   frameCo++;
};
