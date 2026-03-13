this.stop();
initialSet(0);
if(TAIKEN)
{
   testOPomitFlg = true;
}
testENappear = false;
_root.onEnterFrame = function()
{
   if(!keyFlg3)
   {
      return undefined;
   }
   targetCheck();
   cfMain = _root._currentframe - 20;
   var _loc7_;
   var _loc11_;
   var _loc9_;
   var _loc2_;
   var _loc3_;
   var _loc4_;
   var _loc5_;
   var _loc6_;
   var _loc8_;
   var _loc10_;
   var _loc12_;
   var _loc13_;
   if(cfMain >= 10 && cfMain <= 14)
   {
      if(ngStartFlg == 0)
      {
         _loc7_ = _root.startGamenMC;
         _loc11_ = _loc7_._currentframe;
         _loc9_ = _root.startGamenMC.sentakuMC;
         _loc2_ = _loc9_._currentframe;
         if((_loc11_ == 1 || _loc11_ == 2) && sentakuNo == 0)
         {
            if(KF(3) && keyWait(3))
            {
               sentakuNo = -1;
               if(_loc2_ == 25)
               {
                  _loc9_.gotoAndStop(5);
               }
               Selection.setFocus(null);
               textWindowClose();
            }
            else if(KF(1) && keyWait(3))
            {
               sentakuNo = 1;
               if(_loc2_ == 5)
               {
                  _loc9_.gotoAndStop(25);
               }
               Selection.setFocus(null);
               textWindowClose();
            }
         }
         if(sentakuNo == -1)
         {
            _loc9_.nextFrame();
         }
         else if(sentakuNo == 1)
         {
            _loc9_.prevFrame();
         }
         _loc2_ = _loc9_._currentframe;
         if(_loc2_ == 5 || _loc2_ == 10 || _loc2_ == 15 || _loc2_ == 20 || _loc2_ == 25 || _loc2_ == 30)
         {
            sentakuNo = 0;
            if(KF(5) && keyWait(3))
            {
               if(_loc2_ == 20)
               {
                  _loc7_.gotoAndStop(3);
                  Selection.setFocus(_loc7_.txt);
               }
               else if(_loc2_ == 10)
               {
                  if(!loadProcessing())
                  {
                  }
                  _root.gotoAndStop(55);
               }
               else if(_loc2_ == 15)
               {
                  _loc7_.gotoAndStop(4);
               }
               else if(_loc2_ == 5 || _loc2_ == 25)
               {
                  enemyIntelSet();
                  if(loadProcessing())
                  {
                     ngStartFlg = 2;
                     textDataSet();
                     feedInOutMC.play();
                  }
                  else
                  {
                     textWindowOpen(10,4);
                  }
               }
            }
            if(_loc11_ == 4)
            {
               _loc3_ = _loc7_.optionMC;
               _loc4_ = _loc3_._currentframe;
               if(KF(1) && keyWait(3))
               {
                  if(_loc4_ == 1)
                  {
                     _loc3_.gotoAndStop(4);
                  }
                  else
                  {
                     _loc3_.prevFrame();
                  }
               }
               else if(KF(3) && keyWait(3))
               {
                  if(_loc4_ == 4)
                  {
                     _loc3_.gotoAndStop(1);
                  }
                  else
                  {
                     _loc3_.nextFrame();
                  }
               }
               else if(KF(0) && keyWait(3))
               {
                  if(_loc4_ == 1)
                  {
                     _loc3_.keyTypeMC.gotoAndStop(2);
                  }
                  else if(_loc4_ == 2)
                  {
                     _loc3_.qualityTypeMC.gotoAndStop(2);
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc3_.soundTypeMC.gotoAndStop(2);
                  }
                  else if(_loc4_ == 4)
                  {
                     _loc3_.BGMTypeMC.gotoAndStop(2);
                  }
               }
               else if(KF(2) && keyWait(3))
               {
                  if(_loc4_ == 1)
                  {
                     _loc3_.keyTypeMC.gotoAndStop(3);
                  }
                  else if(_loc4_ == 2)
                  {
                     _loc3_.qualityTypeMC.gotoAndStop(3);
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc3_.soundTypeMC.gotoAndStop(3);
                  }
                  else if(_loc4_ == 4)
                  {
                     _loc3_.BGMTypeMC.gotoAndStop(3);
                  }
               }
               else if(KF(6) && keyWait(3))
               {
                  _loc7_.gotoAndStop(1);
               }
            }
         }
      }
      else if(cfFio == 10)
      {
         textDataSet();
         enemyIntelSet();
         mapResetPro();
         bigEventCheck(1);
         if(ngStartFlg == 1)
         {
            if(testOPomitFlg)
            {
               _root.gotoAndStop(35);
            }
            else
            {
               _root.gotoAndStop(60);
            }
         }
         else if(ngStartFlg == 2)
         {
            _root.gotoAndStop(35);
         }
      }
   }
   else if(cfMain >= 15 && cfMain <= 19)
   {
      if(!animeFlg)
      {
         if(worpFlg)
         {
            worpProcessing();
         }
         else if(maraPflg)
         {
            mararaProcessing();
         }
         else if(panelFlg)
         {
            panelProcessing(0);
         }
         else if(miniEV.flg)
         {
            miniEvent(miniEV.no,miniEV.enemyNo);
         }
         else
         {
            if(KF(5) && tgPri._currentframe >= 40)
            {
               BFpriFinish = false;
            }
            if(!BFpriFinish && !BFstartFlg)
            {
               princeMove();
            }
         }
         if(moveFlg && !BFstartFlg)
         {
            mapMove();
         }
         if(KF(15) && _root.keyWait(0))
         {
            datavisible();
         }
      }
   }
   else if(cfMain >= 20 && cfMain <= 24)
   {
      if(!BFstartFlg)
      {
         if(cfFio == 11)
         {
            BFpriRunaway = false;
            miniEV.enemyNo = 0;
            tgC4._x = 140;
            tgC4._y = 0;
            _root.BFpMC.gotoAndStop(1);
            unloadMovie("_root.stageMC.stageBMC");
            if(SBflg == 1)
            {
               if(BFeneFinish)
               {
                  enemyIntelSet(eNo);
               }
               else if(!BFeneRunaway)
               {
                  if(BFpriFinish)
                  {
                     BFpriFinish = false;
                     ectP = 35;
                     if(enemy[eNo].TKflg)
                     {
                        enemy[eNo].TKect = enemy[eNo].ectP;
                     }
                     else
                     {
                        enemyIntelSet(eNo);
                     }
                  }
                  else if(enemy[eNo].TKflg)
                  {
                     enemy[eNo].TKect = enemy[eNo].ectP;
                  }
                  else
                  {
                     enemyIntelSet(eNo);
                  }
               }
               if(SBfukuBf != 101)
               {
                  fukuLv = SBfukuBf;
                  setBeltNo = SBsetBeltNoBf;
                  itemUsing(setBeltNo,fukuLv);
               }
               else
               {
                  textWindowClose();
               }
               SBflg = 0;
               if(qualType)
               {
                  _root._quality = "HIGH";
               }
               _root.gotoAndStop(55);
            }
            else if(SBflg == 2)
            {
               if(BFeneFinish)
               {
                  enemyIntelSet(eNo);
                  banerClickFlg = true;
                  textWindowClose();
                  if(eNo == 10)
                  {
                     movieNo = 2;
                  }
                  else if(eNo == 50)
                  {
                     BTEflg[5] = true;
                     movieNo = 3;
                  }
                  else if(eNo == 60)
                  {
                     BTEflg[6] = true;
                     movieNo = 4;
                  }
                  else if(eNo == 90)
                  {
                     BTEflg[7] = true;
                     movieNo = 5;
                  }
                  SBCflg[eNo] = true;
                  bigEventCheck(1);
                  tgFio.gotoAndPlay(10);
                  _root.gotoAndStop(60);
               }
               else if(!BFeneRunaway)
               {
                  if(BFpriFinish)
                  {
                     gold = Math.round(gold / 2);
                     ectP = 35;
                     mapX = 49;
                     mapY = 52;
                     mapNo = 0;
                     textWindowOpen(40,29);
                     SBflg = 0;
                     if(enemy[eNo].TKflg)
                     {
                        enemy[eNo].TKect = enemy[eNo].ectP;
                     }
                     _root.gotoAndStop(35);
                  }
               }
               enemyHealing();
            }
            else if(SBflg == 0)
            {
               if(BFeneFinish)
               {
                  enemyIntelSet(eNo);
                  textWindowOpen(42,0,0,0,0,0,goldGetPro());
                  banerClickFlg = true;
                  _loc5_ = mapX + pValx[pHo];
                  _loc6_ = mapY + pValy[pHo];
                  if(eNo == 18)
                  {
                     if(mapNo == 1 && _loc5_ == 19 && _loc6_ == 12)
                     {
                        TEflg[37] = false;
                     }
                  }
                  else if(eNo == 24)
                  {
                     if(_loc5_ == 12 && _loc6_ == 88)
                     {
                        TEflg[80] = false;
                     }
                     if(_loc5_ == 25 && _loc6_ == 91)
                     {
                        TEflg[81] = false;
                     }
                     if(_loc5_ == 37 && _loc6_ == 94)
                     {
                        TEflg[82] = false;
                     }
                  }
                  else if(eNo == 27)
                  {
                     if(_loc5_ == 37 && _loc6_ == 81)
                     {
                        TEflg[74] = false;
                     }
                     if(_loc5_ == 13 && _loc6_ == 8)
                     {
                        TEflg[88] = false;
                     }
                  }
                  else if(eNo == 20)
                  {
                     BTEflg[1] = true;
                     if(mapNo == 38)
                     {
                        TEflg[340] = false;
                     }
                  }
                  else if(eNo == 30)
                  {
                     BTEflg[2] = true;
                     if(mapNo == 38)
                     {
                        TEflg[341] = false;
                     }
                  }
                  else if(eNo == 40)
                  {
                     BTEflg[3] = true;
                     if(mapNo == 38)
                     {
                        TEflg[342] = false;
                     }
                  }
                  else if(eNo == 50)
                  {
                     BTEflg[5] = true;
                  }
                  else if(eNo == 60)
                  {
                     BTEflg[6] = true;
                     if(mapNo == 38)
                     {
                        TEflg[344] = false;
                     }
                  }
                  else if(eNo == 70)
                  {
                     TEflg[306] = false;
                     if(mapNo == 38)
                     {
                        TEflg[343] = false;
                     }
                  }
                  else if(eNo == 95)
                  {
                     TEflg[337] = false;
                  }
                  SBCflg[eNo] = true;
                  bigEventCheck(1);
                  if(fukuLv == 134)
                  {
                     pantsTakeOff();
                  }
               }
               else if(BFeneRunaway)
               {
                  textWindowOpen(42,0,0,0,0,0,goldGetPro());
                  banerClickFlg = true;
                  if(fukuLv == 134)
                  {
                     pantsTakeOff();
                  }
                  if(enemy[eNo].TKflg)
                  {
                     enemy[eNo].TKect = enemy[eNo].ectP;
                  }
               }
               else if(BFpriFinish)
               {
                  if(eNo != 10)
                  {
                     gold = Math.round(gold / 2);
                     ectP = 35;
                     if(enemy[eNo].TKflg)
                     {
                        enemy[eNo].TKect = enemy[eNo].ectP;
                     }
                     if(mapNo == 38)
                     {
                        hellInit();
                     }
                  }
                  else
                  {
                     ectP = 0;
                  }
                  mapX = 49;
                  mapY = 52;
                  mapNo = 0;
                  textWindowOpen(40,29);
                  if(fukuLv == 134)
                  {
                     pantsTakeOff();
                  }
               }
               else
               {
                  tRunawayCo++;
                  textWindowOpen(40,11);
                  if(enemy[eNo].TKflg)
                  {
                     enemy[eNo].TKect = enemy[eNo].ectP;
                  }
               }
               if(fukuLv != 147)
               {
                  BFtensi = false;
               }
               if(fukuLv != 152)
               {
                  BFkiseki = false;
               }
               enemyHealing();
               _root.gotoAndStop(35);
            }
         }
      }
      else
      {
         BFsysProcessing();
      }
      if(KF(15) && _root.keyWait(0))
      {
         datavisible();
      }
   }
   else if(cfMain >= 25 && cfMain <= 29)
   {
      if(cfFio == 1)
      {
         storeProcessing();
      }
      if(miniEV.flg)
      {
         miniEvent(miniEV.no,miniEV.enemyNo);
      }
      else if(cfFio == 11)
      {
         textWindowClose();
         _root.gotoAndStop(35);
      }
   }
   else if(cfMain >= 30 && cfMain <= 34)
   {
      if(KF(3) && keyWait(0) && cfFio == 1)
      {
         tgFio.play();
      }
      if(banerClickFlg)
      {
         if(KF(5) && keyWait(0))
         {
            kujiPro();
            banerClickFlg = false;
         }
      }
      if(cfFio == 11)
      {
         textWindowClose();
         _root.gotoAndStop(35);
      }
   }
   else if(cfMain >= 35 && cfMain <= 39)
   {
      _loc8_ = _root.sBattleMC;
      _loc10_ = _loc8_._currentframe;
      if(KF(6) && keyWait(0))
      {
         modeRflg = true;
         textWindowClose();
         _root.gotoAndStop(30);
      }
      else if(KF(0) && keyWait(3))
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
      else if(KF(5) && keyWait(3))
      {
         if(SBCflg[_loc8_.charNo] && !_root.BFstartFlg)
         {
            SBflg = 1;
         }
      }
      _loc8_.gotoAndStop(SBcursole);
      if(SBflg == 1)
      {
         miniEV.enemyNo = _loc8_.charNo;
         miniEvent(3,_loc8_.charNo);
      }
   }
   else if(cfMain >= 40 && cfMain <= 44)
   {
      _loc10_ = tgM._currentframe;
      _loc12_ = tgM._totalframes;
      if(cfFio != 1)
      {
         if(MsysBf == 0)
         {
            miniEvent(5);
         }
         else if(MsysBf == 1)
         {
            if(movieNo == 1)
            {
               _loc13_ = 10;
            }
            else if(movieNo == 4)
            {
               _loc13_ = 90;
            }
            miniEvent(3,_loc13_);
         }
         else if(MsysBf == 2)
         {
            miniEvent(9);
         }
      }
      if(_loc10_ == _loc12_ && _loc10_ != undefined && _loc10_ > 5)
      {
         MLbf = false;
         tgFio.play();
         if(movieNo == 1 || movieNo == 4)
         {
            if(movieNo == 1)
            {
               enemy[10].ectP = 70;
            }
            BFpriRunaway = true;
            SBflg = 2;
            MsysBf = 1;
         }
         else if(movieNo == 2 || movieNo == 3 || movieNo == 5 || movieNo == 6)
         {
            ectP = 0;
            SBflg = 0;
            MsysBf = 2;
         }
      }
   }
   else if(cfMain >= 45)
   {
      if(KF(6) && keyWait(0))
      {
         textWindowClose();
         _root.gotoAndStop(35);
      }
   }
   frameCo++;
};
