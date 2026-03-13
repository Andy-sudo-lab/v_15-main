function battleEnePro()
{
   if(animeFlg)
   {
      enemyAttackPro();
      return undefined;
   }
   if(KF(5) && keyWait(0) && BFcommandWait)
   {
      turnProcessing();
   }
   if(BFpriFinish || BFeneFinish)
   {
      return undefined;
   }
   _root.messageMC.gotoAndStop(1);
   var _loc2_;
   var _loc3_;
   if(tgS.farFlg)
   {
      _loc2_ = 6;
   }
   else if(BFturn == 2)
   {
      _loc2_ = 0;
   }
   else if(BFturn >= 4)
   {
      if(tgS.pantsFlg)
      {
         _loc2_ = 2;
      }
      else
      {
         _loc2_ = Math.floor(Math.random() * 4) + 3;
         if(_loc2_ == 6)
         {
            if(eNo == 30 || eNo == 45 || eNo == 51)
            {
               _loc3_ = Math.floor(Math.random() * 2);
               if(_loc3_ == 0)
               {
                  enemy[eNo].partsFlg0 = enemy[eNo].partsFlg5 = enemy[eNo].partsFlg6 = enemy[eNo].partsFlg7 = false;
                  enemy[eNo].partsFlg8 = enemy[eNo].partsFlg9 = enemy[eNo].partsFlg10 = false;
                  _loc2_ = 7;
               }
               else
               {
                  _loc2_ = 1;
               }
            }
            else
            {
               _loc2_ = 1;
            }
         }
         if(_loc2_ >= 3 && _loc2_ <= 5)
         {
            enemy[eNo].partsFlg0 = false;
         }
         if(_loc2_ == 4)
         {
            if(tgS.paiZuriFlg)
            {
               enemy[eNo].partsFlg0 = enemy[eNo].partsFlg1 = false;
               enemy[eNo].partsFlg2 = enemy[eNo].partsFlg3 = enemy[eNo].partsFlg4 = false;
            }
         }
      }
   }
   else
   {
      _loc2_ = 1;
   }
   if(_loc2_ == 0)
   {
      BFattackSort = 112;
      tgS.gotoAndStop(15);
      tgE.gotoAndPlay("L2");
   }
   else if(_loc2_ == 1)
   {
      BFattackSort = 111;
      tgS.gotoAndStop(15);
      tgE.gotoAndPlay("L1");
   }
   else if(_loc2_ == 2)
   {
      BFattackSort = 113;
      tgS.gotoAndStop(20);
      tgE.gotoAndPlay("L1");
   }
   else if(_loc2_ == 3)
   {
      BFattackSort = 115;
      tgS.gotoAndStop(25);
      tgE.gotoAndPlay("L1");
   }
   else if(_loc2_ == 4)
   {
      BFattackSort = 116;
      tgS.gotoAndStop(25);
      tgE.gotoAndPlay("L2");
   }
   else if(_loc2_ == 5)
   {
      BFattackSort = 117;
      tgS.gotoAndStop(25);
      tgE.gotoAndPlay("L3");
   }
   else if(_loc2_ == 6)
   {
      BFattackSort = 118;
      tgS.gotoAndStop(30);
      tgE.gotoAndPlay("L3");
   }
   else if(_loc2_ == 7)
   {
      BFattackSort = 119;
      tgS.gotoAndStop(35);
      BFcy = Math.floor(Math.random() * 3);
      tgE.gotoAndPlay(1);
   }
   animeFlg = true;
}
function enemyAttackPro()
{
   BFcoE += 1;
   var _loc1_;
   var _loc3_;
   var _loc4_;
   var _loc2_;
   switch(cfS)
   {
      case 15:
         if(BFattackSort == 112)
         {
            if(BFcoE % 8 == 0 && BFcoE > 29)
            {
               damageCalculate(2,1,0);
            }
         }
         else if(BFattackSort == 111)
         {
            if(BFcoE % 5 == 0 && BFcoE < 10)
            {
               damageCalculate(3,1,0);
            }
         }
         break;
      case 20:
         if(BFcoE % 5 == 0 && BFcoE > 10)
         {
            _loc1_ = damageCalculate(1,2,0)[1];
            _loc3_ = tgE._currentframe;
            if(_loc1_ && _loc3_ <= 37)
            {
               BFattackSort = 114;
               tgE.gotoAndPlay("L2");
            }
         }
         break;
      case 25:
         _loc3_ = tgE._currentframe;
         _loc4_ = tgHd2._currentframe;
         if(BFattackSort == 115)
         {
            if(!BFpriFinish)
            {
               if(BFcoE % 20 == 0)
               {
                  damageCalculate(3,1,0);
               }
               if(tgE.labelF == 1)
               {
                  kisekiCheck();
                  BFpriFinish = damageCalculate(0,0,0)[0];
                  if(tgE.co <= 3 || BFpriFinish)
                  {
                     tgE.gotoAndPlay("L1loop");
                  }
                  else
                  {
                     tgE.gotoAndPlay("L4");
                     tgHd2.gotoAndPlay("L1");
                  }
               }
            }
            else
            {
               BFbuf3 = true;
               if(tgHd2.labelF == 1)
               {
                  tgE.play();
               }
               else if(tgE.labelF == 2)
               {
                  tgE.stop();
                  if(!tgHd2.flg)
                  {
                     tgHd2.gotoAndPlay("F1");
                  }
               }
               else if(tgE.labelF == 1)
               {
                  tgE.gotoAndPlay("L4");
                  BFattackSort = 130;
               }
            }
         }
         else if(BFattackSort == 116)
         {
            if(!BFpriFinish)
            {
               if(BFcoE % 25 == 0)
               {
                  damageCalculate(4,1,0);
               }
               if(tgE.labelF == 1)
               {
                  kisekiCheck();
                  BFpriFinish = damageCalculate(0,0,0)[0];
                  if(tgE.co <= 2 || BFpriFinish)
                  {
                     tgE.gotoAndPlay("L2loop");
                  }
                  else
                  {
                     tgE.gotoAndPlay("L5");
                     tgHd2.gotoAndPlay("L1");
                  }
               }
            }
            else
            {
               BFbuf3 = true;
               if(tgHd2.labelF == 1)
               {
                  tgE.play();
               }
               else if(tgE.labelF == 2)
               {
                  tgE.stop();
                  if(!tgHd2.flg)
                  {
                     if(tgS.paiZuriFlg)
                     {
                        tgHd2.gotoAndPlay("F3");
                     }
                     else
                     {
                        tgHd2.gotoAndPlay("F1");
                     }
                  }
               }
               else if(tgE.labelF == 1)
               {
                  tgE.gotoAndPlay("L5");
                  BFattackSort = 130;
               }
            }
         }
         else if(BFattackSort == 117)
         {
            if(!BFpriFinish)
            {
               if(BFcoE % 20 == 0)
               {
                  damageCalculate(4.5,1,0);
               }
               if(tgE.labelF == 1)
               {
                  kisekiCheck();
                  BFpriFinish = damageCalculate(0,0,0)[0];
                  if(tgE.co <= 3 || BFpriFinish)
                  {
                     tgE.gotoAndPlay("L3loop");
                  }
                  else
                  {
                     tgE.gotoAndPlay("L6");
                     tgHd2.gotoAndPlay("L1");
                  }
               }
            }
            else
            {
               BFbuf3 = true;
               if(tgHd2.labelF == 2)
               {
                  tgE.play();
               }
               else if(tgE.labelF == 2)
               {
                  tgE.stop();
                  if(!tgHd2.flg)
                  {
                     tgHd2.gotoAndPlay("F2");
                  }
               }
               else if(tgE.labelF == 1)
               {
                  tgE.gotoAndPlay("L6");
                  BFattackSort = 131;
               }
            }
         }
         break;
      case 30:
         _loc3_ = tgE._currentframe;
         _loc4_ = tgHd2._currentframe;
         if(_loc3_ == 2 && BFcoE < 20)
         {
            tgE.gotoAndPlay("L3");
            tgE.bodyUMC.gotoAndPlay("L3");
            tgE.bodyLMC.gotoAndPlay("L3");
            tgHd1.gotoAndPlay("L3");
         }
         else if(BFcoE > 20)
         {
            tgHd1.gotoAndPlay("L1");
            _loc2_ = tejohTaget(eNo);
            _loc2_.gotoAndStop(1);
            tgAR1.gotoAndStop(1);
            tgAL1.gotoAndStop(1);
            tgBL.armLMC.gotoAndStop(1);
            completionPro(false);
            tgS.farFlg = false;
            BFitemUse[43] = false;
         }
         if(SBflg != 1 && fukuLv != 152)
         {
            watt -= 1.25;
         }
         if(watt <= 0)
         {
            watt = 0;
         }
         break;
      case 35:
         insertProcessing(BFcy,false);
      default:
         return;
   }
}
function insertProcessing(p, fg)
{
   var _loc5_ = tgE._currentframe;
   kisekiCheck();
   var _loc2_ = damageCalculate(0,0,0)[0];
   var _loc4_ = enemyDamCal(0,fg);
   if(fg || fg == undefined)
   {
      fg = true;
   }
   BFbufCo++;
   if(BFbufCo > 50)
   {
      if(!BFbuf3)
      {
         if(_loc2_ && tgE.labelF <= 99)
         {
            BFeneFinish = false;
            BFpriFinish = true;
            BFbuf3 = true;
         }
         if(_loc4_)
         {
            BFeneFinish = true;
            BFpriFinish = false;
            BFbuf3 = true;
         }
      }
      if(BFpriFinish)
      {
         p = 11;
      }
      else if(BFeneFinish)
      {
         p = 12;
      }
   }
   var _loc6_;
   var _loc7_;
   switch(p)
   {
      case 0:
         if(tgE.labelF == 1)
         {
            tgE.play();
            tgE.princeMC.play();
         }
         else if(tgE.labelF == 11)
         {
            BFco++;
            if(BFco <= 7)
            {
               tgE.gotoAndPlay("L1");
               tgE.bodyUMC.gotoAndPlay("L1");
               tgE.bodyLMC.gotoAndPlay("L1");
               tgHd1.gotoAndPlay("L1");
               tgE.princeMC.gotoAndPlay("L1");
               if(eNo == 70)
               {
                  voiceOn(1,undefined,2);
               }
               else
               {
                  voiceOn(2);
               }
               damageCalculate(2,0,0);
               enemyDamCal(atkP / 14,fg);
            }
         }
         else if(tgE.labelF == 12)
         {
            tgE.stop();
            tgE.princeMC.stop();
            tgHd1.gotoAndPlay(1);
            completionPro(fg);
         }
         break;
      case 1:
         if(tgE.labelF == 1)
         {
            tgE.gotoAndPlay("L2");
            tgE.princeMC.gotoAndPlay("L2");
         }
         else if(tgE.labelF == 20)
         {
            tgE.bodyUMC.gotoAndPlay("L2");
            tgE.bodyLMC.gotoAndPlay("L2");
            tgHd1.gotoAndPlay("L2");
            if(eNo == 70)
            {
               voiceOn(1,undefined,0);
            }
            else
            {
               voiceOn(2);
            }
            damageCalculate(3,0,0);
            enemyDamCal(atkP / 10,fg);
         }
         else if(tgE.labelF == 121)
         {
            BFco++;
            if(BFco <= 4)
            {
               tgE.gotoAndPlay("L2");
               tgE.princeMC.gotoAndPlay("L2");
            }
         }
         else if(tgE.labelF == 141)
         {
            tgE.stop();
            tgE.princeMC.stop();
            tgHd1.gotoAndPlay(1);
            completionPro(fg);
         }
         break;
      case 2:
         if(tgE.labelF == 1)
         {
            tgE.gotoAndPlay("L3");
            tgE.princeMC.gotoAndPlay("L3");
         }
         else if(tgE.labelF == 30)
         {
            if(eNo == 70)
            {
               voiceOn(1,undefined,1);
            }
         }
         else if(tgE.labelF == 20)
         {
            tgE.bodyUMC.gotoAndPlay("L3");
            tgE.bodyLMC.gotoAndPlay("L2");
            tgHd1.gotoAndPlay("L3");
            if(eNo == 70)
            {
               voiceOn(1,undefined,0);
            }
            else
            {
               voiceOn(3);
            }
            damageCalculate(4,0,0);
            enemyDamCal(atkP / 5.5,fg);
         }
         else if(tgE.labelF == 131)
         {
            BFco++;
            if(BFco <= 2)
            {
               tgE.gotoAndPlay("L3");
               tgE.princeMC.gotoAndPlay("L3");
            }
         }
         else if(tgE.labelF == 141)
         {
            tgE.stop();
            tgE.princeMC.stop();
            tgHd1.gotoAndPlay(1);
            completionPro(fg);
         }
         break;
      case 3:
         if(tgE.labelF == 1)
         {
            tgE.play();
            tgE.princeMC.play();
         }
         else if(tgE.labelF == 100 && BFco == 0)
         {
            tgE.stop();
            tgE.princeMC.stop();
            BFco++;
         }
         else if(tgE.labelF == 100)
         {
            BFco++;
            if(BFco % 11 == 0)
            {
               tgE.bodyUMC.gotoAndPlay("L1");
               tgE.bodyLMC.gotoAndPlay("L2");
               tgHd1.gotoAndPlay("L3");
               if(eNo == 70)
               {
                  voiceOn(1,undefined,0);
               }
               else
               {
                  voiceOn(3);
               }
               damageCalculate(4,0,0)[0];
               kisekiCheck();
               if(damageCalculate(0,0,0)[0])
               {
                  BFpriFinish = true;
               }
               enemyDamCal(atkP / 6,fg);
            }
            if(BFco >= 40)
            {
               tgE.play();
               tgE.princeMC.gotoAndPlay("L1");
               tgE.bodyUMC.gotoAndPlay("L3");
               tgE.bodyLMC.gotoAndPlay("L1");
               tgHd1.gotoAndPlay("L3");
            }
         }
         else if(tgE.labelF == 141)
         {
            tgE.stop();
            tgE.princeMC.stop();
            tgHd1.gotoAndPlay(1);
            completionPro(fg);
         }
         break;
      case 11:
         _loc6_ = tgHd1._currentframe;
         if(tgHd1.labelF == 2)
         {
            completionPro(fg);
         }
         if(tgE.labelF == 100)
         {
            tgE.stop();
            tgE.princeMC.stop();
            if(tgHd1.labelF == 0)
            {
               tgHd1.gotoAndPlay("F1");
            }
            BFpriFinish = true;
            BFattackSort = 132;
         }
         break;
      case 12:
         _loc6_ = tgHd1._currentframe;
         _loc7_ = tgHd1._totalframes;
         if(tgE.labelF == 141)
         {
            tgE.gotoAndPlay("L1");
            tgE.princeMC.gotoAndPlay("L1");
         }
         else if(tgE.labelF == 100)
         {
            tgE.stop();
            tgE.princeMC.stop();
         }
         if(tgHd1.labelF <= 2)
         {
            tgHd1.gotoAndPlay("S1");
         }
         if(tgHd1.labelF == 4)
         {
            BFeneFinish = true;
            BFattackSort = 135;
            completionPro(fg);
         }
      default:
         return;
   }
}
function enemyReaction(fg, v, head, mm)
{
   if(!fg)
   {
      v = Math.floor(Math.random() * 3) + 1;
   }
   var _loc1_ = "L" + v;
   tgE.gotoAndPlay(_loc1_);
   if(mm == undefined)
   {
      if(head == undefined)
      {
         tgE.bodyUMC.gotoAndPlay(_loc1_);
         tgE.bodyLMC.gotoAndPlay(_loc1_);
         tgHd1.gotoAndPlay(_loc1_);
      }
      tgHd2.gotoAndPlay(_loc1_);
   }
   else if(mm == 0)
   {
      if(head == undefined)
      {
         tgBU.gotoAndPlay(_loc1_);
         tgBL.gotoAndPlay(_loc1_);
         tgHd1.gotoAndPlay(_loc1_);
         tgHd2.gotoAndPlay(_loc1_);
      }
   }
   else if(mm == 1)
   {
      tgE.bodyUMCu.gotoAndPlay(_loc1_);
      tgE.bodyLMCu.gotoAndPlay(_loc1_);
      tgE.bodyUMCu.headMC.gotoAndPlay(_loc1_);
   }
   var _loc4_;
   if(head == 0)
   {
      _loc4_ = 14;
   }
   voiceOn(v,_loc4_,mm);
   damageCalculate(1,0,0);
   enemyDamCal(atkP / 10);
}
function voiceOn(lv, no, mm)
{
   var _loc2_;
   var _loc3_;
   if(!voiceFlg)
   {
      if(no == undefined)
      {
         if(mm != undefined)
         {
            no = mimikoPro(mm);
         }
         else
         {
            _loc2_ = Math.round(enemy[eNo].ectP / enemy[eNo].ectPmax * 100);
            if(_loc2_ > 67)
            {
               no = Math.floor(Math.random() * 10) + 20;
            }
            else if(_loc2_ > 34)
            {
               no = Math.floor(Math.random() * 10) + 10;
            }
            else
            {
               no = Math.floor(Math.random() * 10);
            }
         }
      }
      voiceFlg = true;
      _loc3_ = "voiceMC" + no;
      tgS[_loc3_].play();
   }
}
function soundOn(s, no)
{
   var _loc4_;
   if(!soundFlg)
   {
      if(no == undefined)
      {
         if(s == 1)
         {
            no = Math.floor(Math.random() * 9) + 1;
         }
         else if(s == 2)
         {
            no = Math.floor(Math.random() * 7) + 11;
         }
         else if(s == 3)
         {
            no = Math.floor(Math.random() * 19) + 21;
         }
      }
      _loc4_ = "soundMC" + no;
      _root.SVMC[_loc4_].play();
   }
}
function mimikoPro(mm)
{
   r0 = Math.floor(Math.random() * 14);
   r1 = Math.floor(Math.random() * 15) + 15;
   r2 = Math.floor(Math.random() * 30);
   var _loc2_ = tgS._currentframe;
   if(_loc2_ == 35 && (mm == 1 || r2 >= 15 && r2 <= 29))
   {
      mimiUsaPro();
   }
   if(mm == 0)
   {
      return r0;
   }
   if(mm == 1)
   {
      return r1;
   }
   return r2;
}
function mimiUsaPro()
{
   var _loc2_ = Math.floor(Math.random() * 3) + 1;
   var _loc1_ = "L" + _loc2_;
   tgE.bodyUMCu.gotoAndPlay(_loc1_);
   tgE.bodyUMCu.headMC.gotoAndPlay(_loc1_);
}
function BFsysProcessing()
{
   enemyTaget();
   if(timerPro())
   {
      if(BFturn % 2 == 0)
      {
         if(BFeneRunaway)
         {
            BFstartFlg = false;
            _root.feedInOutMC.play();
         }
         else
         {
            battleEnePro();
         }
      }
      else if(panelFlg)
      {
         panelProcessing(2);
      }
      else
      {
         battlePriPro();
      }
   }
   musicFO();
}
function completionPro(fg, no)
{
   if(ANIMETICA == true)
   {
      aCompletionPro(fg,no);
      return undefined;
   }
   animeFlg = false;
   BFco = 0;
   BFcoE = 0;
   BFbufCo = 0;
   var _loc5_;
   var _loc2_;
   var _loc3_;
   if(fg)
   {
      if(no != undefined)
      {
         _loc5_ = "partsFlg" + no;
         enemy[eNo][_loc5_] = false;
      }
      if(watt <= 0)
      {
         BFweponLv = 1;
         BFsetBN = 28;
         BFbufSou = false;
         if(tgS.weponLv == 3)
         {
            tgS.weponLv = 1;
         }
         damageCalculate(0,0,0);
         tgC4._x = 140;
         tgC4._y = 0;
      }
      BFitemUse[6] = BFitemUse[7] = BFitemUse[8] = false;
      BFitemTxt = "";
      _loc2_ = 13;
      while(_loc2_ <= 34)
      {
         if(BFitemUse[_loc2_])
         {
            BFitemSus[_loc2_] = BFitemSus[_loc2_] + 1;
            if(item[_loc2_].sustinMax < BFitemSus[_loc2_])
            {
               BFitemUse[_loc2_] = false;
               BFitemSus[_loc2_] = 0;
               _loc3_ = "\nThe effect of " + item[_loc2_].iName + " was lost. ";
               BFitemTxt += _loc3_;
               if(_loc2_ == 31 || _loc2_ == 32)
               {
                  if(!BFitemUse[31] && !BFitemUse[32])
                  {
                     tgS.okouFlg = false;
                     tgS.stateSet("お香の処理");
                  }
               }
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      if(BFitemTxt != "")
      {
         BFitemTxt += "▼ ";
      }
      BFatkNo = 0;
      damageCalculate(0,0,0);
      turnProcessing();
   }
   else
   {
      if(!tgS.pantsFlg)
      {
         pantsTakeOff();
      }
      _loc2_ = 0;
      while(_loc2_ <= 15)
      {
         BFcomFlg[_loc2_] = false;
         _loc2_ = _loc2_ + 1;
      }
      BFbougyoFlg = false;
      turnProcessing();
   }
   _root.SVMC.S_vibMC3.gotoAndStop(1);
   _root.vibVol3.stop();
}
function turnProcessing()
{
   if(BFturn % 2 == 1)
   {
      if(!BFcommandWait)
      {
         BFcommandWait = true;
         attackSortPro();
      }
      else if(BFpriFinish || BFeneFinish)
      {
         BFstartFlg = false;
         _root.feedInOutMC.play();
      }
      else
      {
         BFcommandWait = false;
         if(enemyRunawayPro())
         {
            BFeneRunaway = true;
            _root.timerMC.gotoAndPlay(2);
            textWindowOpen(41,28);
         }
         else
         {
            _root.timerMC.gotoAndPlay(2);
            textWindowOpen(40,51);
         }
      }
   }
   else if(BFpriFinish || BFeneFinish)
   {
      if(!BFcommandWait)
      {
         BFcommandWait = true;
         attackSortPro();
      }
      else
      {
         BFstartFlg = false;
         _root.feedInOutMC.play();
      }
   }
   else
   {
      attackSortPro();
   }
   cursoleClear();
   if(!BFcommandWait)
   {
      BFturn++;
      if(BFturn % 2 == 0)
      {
      }
      if(BFturn % 2 == 1)
      {
      }
   }
}
function battlePriPro()
{
   if(animeFlg)
   {
      if(BFinsertFlg)
      {
         insertProcessing(BFcy);
      }
      return undefined;
   }
   var _loc5_ = _root.BFpMC;
   var _loc4_ = _loc5_._currentframe;
   var _loc2_ = _loc5_.panelMC;
   var _loc3_ = _loc2_._currentframe;
   var _loc6_;
   var _loc8_;
   var _loc7_;
   if(KF(5) && keyWait(0))
   {
      if(BFcommandWait)
      {
         turnProcessing();
      }
      else if(_loc4_ == 1)
      {
         BFbuf4 = true;
         _loc5_.play();
         textWindowOpen(40,12);
      }
      else if(_loc4_ == 6)
      {
         if(_loc3_ == 1)
         {
            if(BFcy == 0 && !BFcomFlg[BFcy])
            {
               cursoleClear();
               BFinsertFlg = false;
               BFweponLv = 1;
               capaCalculate(0,10);
               damageCalculate(0,0,0);
               tgS.gotoAndStop(10);
               _loc2_.gotoAndStop(2);
               commandSet(2);
               textWindowOpen(40,13);
            }
            else if(BFcy == 1 && !BFcomFlg[BFcy])
            {
               cursoleClear();
               BFinsertFlg = false;
               BFweponLv = 1;
               capaCalculate(0,10);
               damageCalculate(0,0,0);
               tgS.gotoAndStop(30);
               _loc2_.gotoAndStop(3);
               BFbuf2 = false;
               commandSet(3);
               textWindowOpen(40,20);
            }
            else if(BFcy == 2 && !BFcomFlg[BFcy])
            {
               cursoleClear();
               BFinsertFlg = false;
               BFweponLv = 1;
               capaCalculate(0,10);
               damageCalculate(0,0,0);
               tgS.gotoAndStop(30);
               _loc2_.gotoAndStop(4);
               commandSet(4);
               textWindowOpen(40,20);
            }
            else if(BFcy == 3 && !BFcomFlg[BFcy])
            {
               cursoleClear();
               BFinsertFlg = true;
               if(BFweponLv >= 51)
               {
                  BFweponLv = 1;
               }
               capaCalculate(0,30);
               damageCalculate(0,0,0);
               if(!BTEflg[5] && eNo == 50 && SBflg == 0)
               {
                  SBflg = 2;
                  BFstartFlg = false;
                  BFeneFinish = true;
                  tgFio.play();
                  textWindowClose();
                  return undefined;
               }
               if(!BFitemUse[45] && !BFitemUse[46])
               {
                  tgS.weponLv = 1;
                  tgS.gotoAndStop(35);
                  tgE.gotoAndPlay(1);
                  tgS.stateSet("インサート攻撃");
               }
               else
               {
                  tgS.gotoAndStop(35);
                  tgE.gotoAndPlay(1);
               }
               _loc2_.gotoAndStop(5);
               textWindowOpen(40,19);
            }
            else if(BFcy == 4 && !BFcomFlg[BFcy])
            {
               cursoleClear();
               BFinsertFlg = false;
               if(BFweponLv == 45 || BFweponLv == 46)
               {
                  BFweponLv = 1;
                  capaCalculate(0,10);
                  damageCalculate(0,0,0);
               }
               tgS.gotoAndStop(30);
               _loc2_.gotoAndStop(3);
               BFbuf2 = true;
               commandSet(3);
               textWindowOpen(40,20);
            }
            else if(BFcy == 5 && !BFcomFlg[BFcy])
            {
               tgS.gotoAndStop(30);
               textWindowOpen(40,22);
               panelFlg = true;
               panelBfore();
               tgIP.gotoAndStop("バトル時");
            }
            else if(BFcy == 6 && !BFcomFlg[BFcy])
            {
               tgS.gotoAndStop(10);
               BFbougyoFlg = true;
               BFattackSort = 12;
               winClose(true);
               completionPro(true);
            }
            else if(BFcy == 7 && !BFcomFlg[BFcy])
            {
               BFweponLv = 1;
               damageCalculate(0,0,0);
               BFstartFlg = false;
               _root.feedInOutMC.play();
            }
            else
            {
               if(BFcy >= 0 && BFcy <= 2)
               {
                  textWindowOpen(40,23);
               }
               if(BFcy == 3)
               {
                  textWindowOpen(40,24);
               }
               if(BFcy == 4)
               {
                  textWindowOpen(40,25);
               }
               if(BFcy == 7)
               {
                  textWindowOpen(40,10);
               }
            }
         }
         else if(_loc3_ == 2)
         {
            _loc6_ = takeOffCheck(true,BFcy);
            if(_loc6_)
            {
               winClose();
               BFattackSort = 11;
               enemyTakeOff(BFcy);
            }
            else
            {
               _loc8_ = "partsFlg" + BFcy;
               _loc7_ = tgS["partsName" + BFcy];
               if(!enemy[eNo][_loc8_])
               {
                  if(_loc7_ == "nothing")
                  {
                     textWindowOpen(40,15);
                  }
                  else
                  {
                     textWindowOpen(40,16);
                  }
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            BFcyBuf = BFcy;
         }
         else if(_loc3_ == 3)
         {
            if(!BFbuf2)
            {
               if(BFcy == 0)
               {
                  winClose();
                  princeAttack(5);
               }
               else if(BFcy == 1)
               {
                  winClose();
                  princeAttack(4);
               }
               else if(BFcy == 2)
               {
                  if(takeOffCheck(false,4))
                  {
                     winClose();
                     princeAttack(6);
                  }
                  else
                  {
                     textWindowOpen(40,14);
                  }
               }
               else if(BFcy == 3)
               {
                  if(takeOffCheck(false,10))
                  {
                     winClose();
                     princeAttack(7);
                  }
                  else
                  {
                     textWindowOpen(40,14);
                  }
               }
               else if(BFcy == 4)
               {
                  textWindowOpen(40,17);
               }
               BFattackSort = 15;
            }
            else
            {
               if(BFcy >= 0 && BFcy <= 1)
               {
                  textWindowOpen(40,17);
               }
               else if(BFcy == 2)
               {
                  if(BFweponLv >= 51 && BFweponLv <= 54 && !enemy[eNo].partsFlg1 && !enemy[eNo].partsFlg2)
                  {
                     winClose();
                     princeAttack(8);
                  }
                  else
                  {
                     textWindowOpen(40,17);
                  }
               }
               else if(BFcy == 3)
               {
                  if(BFweponLv == 52 && !enemy[eNo].partsFlg10 || BFweponLv >= 57 && BFweponLv <= 71)
                  {
                     winClose();
                     princeAttack(20);
                  }
                  else if((BFweponLv == 51 || BFweponLv == 52 || BFweponLv == 54) && !enemy[eNo].partsFlg7)
                  {
                     winClose();
                     princeAttack(14);
                  }
                  else
                  {
                     textWindowOpen(40,17);
                  }
               }
               else if(BFcy == 4)
               {
                  if(BFweponLv >= 75 && BFweponLv <= 77)
                  {
                     winClose();
                     princeAttack(25);
                  }
                  else
                  {
                     textWindowOpen(40,17);
                  }
               }
               BFattackSort = 15;
            }
         }
         else if(_loc3_ == 4)
         {
            if(BFcy == 0)
            {
               if(takeOffCheck(false,1))
               {
                  winClose();
                  princeAttack(3);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 2)
            {
               if(takeOffCheck(false,2))
               {
                  winClose();
                  princeAttack(1);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 3)
            {
               if(takeOffCheck(false,11))
               {
                  winClose();
                  princeAttack(2);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 4)
            {
               if(takeOffCheck(false,8))
               {
                  winClose();
                  princeAttack(11);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 6)
            {
               if(takeOffCheck(false,8))
               {
                  winClose();
                  princeAttack(12);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 7)
            {
               if(takeOffCheck(false,12))
               {
                  winClose();
                  princeAttack(13);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            else if(BFcy == 8)
            {
               if(takeOffCheck(false,12))
               {
                  winClose();
                  princeAttack(23);
               }
               else
               {
                  textWindowOpen(40,14);
               }
            }
            BFattackSort = 15;
         }
         else if(_loc3_ == 5)
         {
            animeFlg = true;
            BFattackSort = 16;
            BFatkNo = 30;
            if(tgS.pantsFlg)
            {
               pantsTakeOff();
            }
            if(BFweponLv == 46 && watt > 0)
            {
               _root.SVMC.S_vibMC3.play();
               _root.vibVol3.setVolume(100);
            }
            winClose();
         }
      }
   }
   else if(KF(3) && keyWait(3))
   {
      if(_loc4_ == 6)
      {
         BFcy++;
         if(BFcy >= BFy[_loc3_] + 1)
         {
            BFcy = 0;
         }
         _loc2_.cursoleMC._y = BFcy * 20 + 25;
      }
   }
   else if(KF(1) && keyWait(3))
   {
      if(_loc4_ == 6)
      {
         BFcy--;
         if(BFcy <= -1)
         {
            BFcy = BFy[_loc3_];
         }
         _loc2_.cursoleMC._y = BFcy * 20 + 25;
      }
   }
   else if((KF(0) || KF(6)) && keyWait(3) && _loc4_ != 1)
   {
      if(_loc3_ >= 2)
      {
         cursoleClear();
         BFinsertFlg = false;
         capaCalculate(0,10);
         damageCalculate(0,0,0);
         _loc2_.gotoAndStop(1);
         commandSet(1);
      }
   }
   else if(KF(6) && keyWait(3) && _loc4_ == 1 && !BFbuf4)
   {
      if(BFpriRunaway)
      {
         textWindowOpen(40,10);
      }
      else
      {
         BFweponLv = 1;
         damageCalculate(0,0,0);
         BFstartFlg = false;
         _root.feedInOutMC.play();
      }
   }
   if(SBflg == 1)
   {
      if(KF(13) && keyWait(3))
      {
         SBback--;
         if(SBback <= -1)
         {
            SBback = SBBno.length - 1;
         }
      }
      else if(KF(14) && keyWait(3))
      {
         SBback++;
         if(SBback >= SBBno.length)
         {
            SBback = 0;
         }
      }
      tgS.backMC.gotoAndStop(SBBno[SBback]);
   }
}
function commandSet(n, val)
{
   var _loc2_ = _root.BFpMC.panelMC;
   var _loc3_;
   var _loc4_;
   var _loc5_;
   var _loc7_;
   var _loc6_;
   switch(n)
   {
      case 1:
         if(!enemy[eNo].partsFlg10)
         {
            BFcomFlg[3] = false;
            _loc2_.pointMC3._alpha = 100;
         }
         else
         {
            BFcomFlg[3] = true;
            _loc2_.pointMC3._alpha = 50;
         }
         if(BFweponLv >= 51 && BFweponLv <= 79)
         {
            BFcomFlg[4] = false;
            _loc2_.pointMC4._alpha = 100;
         }
         else
         {
            BFcomFlg[4] = true;
            _loc2_.pointMC4._alpha = 50;
         }
         if(BFpriRunaway)
         {
            BFcomFlg[7] = true;
            _loc2_.pointMC7._alpha = 50;
         }
         else
         {
            BFcomFlg[7] = false;
            _loc2_.pointMC7._alpha = 100;
         }
         if(BFcomFlg[13])
         {
            _loc2_.pointMC0._alpha = 50;
            BFcomFlg[0] = true;
         }
         if(BFcomFlg[11])
         {
            _loc2_.pointMC0._alpha = 50;
            BFcomFlg[0] = true;
         }
         break;
      case 2:
         _loc3_ = 0;
         while(_loc3_ <= 10)
         {
            _loc4_ = "txt" + _loc3_;
            _loc5_ = "partsName" + _loc3_;
            _root.BFpMC.panelMC[_loc4_].text = tgS[_loc5_];
            _loc7_ = takeOffCheck(true,_loc3_);
            if(!_loc7_)
            {
               _root.BFpMC.panelMC[_loc4_].textColor = 10066329;
            }
            _loc3_ = _loc3_ + 1;
         }
         break;
      case 3:
         if(!BFbuf2)
         {
            _loc7_ = takeOffCheck(false,4);
            if(!_loc7_)
            {
               _loc2_.pointMC2._alpha = 50;
            }
            _loc7_ = takeOffCheck(false,10);
            if(!_loc7_)
            {
               _loc2_.pointMC3._alpha = 50;
            }
            _loc2_.pointMC4._alpha = 50;
            break;
         }
         _loc3_ = 0;
         while(_loc3_ <= 1)
         {
            _loc6_ = "pointMC" + _loc3_;
            _loc2_[_loc6_]._alpha = 50;
            _loc3_ = _loc3_ + 1;
         }
         if(BFweponLv >= 57 && BFweponLv <= 71)
         {
            _loc2_.pointMC2._alpha = 50;
            _loc2_.pointMC4._alpha = 50;
            break;
         }
         if(BFweponLv >= 75 && BFweponLv <= 77)
         {
            _loc2_.pointMC2._alpha = 50;
            _loc2_.pointMC3._alpha = 50;
            break;
         }
         if(BFweponLv >= 51 && BFweponLv <= 54)
         {
            _loc2_.pointMC4._alpha = 50;
            if(enemy[eNo].partsFlg1 || enemy[eNo].partsFlg2)
            {
               _loc2_.pointMC2._alpha = 50;
            }
            if(enemy[eNo].partsFlg7)
            {
               _loc2_.pointMC3._alpha = 50;
            }
         }
         break;
      case 4:
         _loc7_ = takeOffCheck(false,1);
         if(!_loc7_)
         {
            _loc2_.pointMC0._alpha = 50;
         }
         _loc7_ = takeOffCheck(false,2);
         if(!_loc7_)
         {
            _loc2_.pointMC2._alpha = 50;
         }
         _loc7_ = takeOffCheck(false,11);
         if(!_loc7_)
         {
            _loc2_.pointMC3._alpha = 50;
         }
         _loc7_ = takeOffCheck(false,8);
         if(!_loc7_)
         {
            _loc2_.pointMC4._alpha = 50;
            _loc2_.pointMC6._alpha = 50;
         }
         _loc7_ = takeOffCheck(false,12);
         if(!_loc7_)
         {
            _loc2_.pointMC7._alpha = 50;
            _loc2_.pointMC8._alpha = 50;
         }
   }
}
function princeAttack(n)
{
   animeFlg = true;
   BFatkNo = n;
   zengiP[n] = 1.6;
   var _loc1_ = "A" + n;
   tgP.gotoAndStop(_loc1_);
   tgPA1.gotoAndStop(_loc1_);
   tgPA2.gotoAndStop(_loc1_);
   tgE.bodyLMCu.priAMC.gotoAndStop(_loc1_);
   if(n == 5)
   {
      tgHd1.gotoAndPlay("K1");
      tgHd2.gotoAndPlay("K1");
   }
}
