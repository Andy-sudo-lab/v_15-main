function nextCode(c)
{
   var _loc3_ = myPattern.slice(c,c + 1);
   CC = _loc3_.charCodeAt(0);
   var _loc2_;
   if(CC == 103 || CC == 85 || CC == 76)
   {
      tgS.gotoAndStop(10);
   }
   else if(CC == 64)
   {
      _loc2_ = 0;
      while(_loc2_ <= 4)
      {
         enemy[eneNo]["partsFlg" + _loc2_] = false;
         _loc2_ = _loc2_ + 1;
      }
      tgS.gotoAndStop(10);
   }
   else if(CC >= 104 && CC <= 116 || CC == 65 || CC == 82)
   {
      tgS.gotoAndStop(30);
   }
   else if(CC == 72 || CC == 69)
   {
      tgS.gotoAndStop(30);
   }
   else if(CC >= 120 && CC <= 122 || CC == 73)
   {
      tgS.gotoAndStop(35);
      tgE.gotoAndPlay(1);
   }
   else if(CC == 33)
   {
      return false;
   }
   _root.miniTimerMC.gotoAndPlay(2);
   return true;
}
function animeStartPro()
{
   var _loc1_;
   var _loc2_;
   var _loc4_;
   var _loc3_;
   var _loc5_;
   if(CC == 97 || CC == 98)
   {
      tgS.gotoAndStop(15);
      if(CC == 97)
      {
         BFattackSort = 112;
         tgE.gotoAndPlay("L2");
      }
      else
      {
         BFattackSort = 111;
         tgE.gotoAndPlay("L1");
      }
   }
   else if(CC == 99)
   {
      BFattackSort = 113;
      tgS.gotoAndStop(20);
      tgE.gotoAndPlay("L1");
   }
   else if(CC >= 100 && CC <= 102 || CC >= 117 && CC <= 119)
   {
      tgS.gotoAndStop(25);
      if(CC == 100 || CC == 117)
      {
         BFattackSort = 115;
         tgE.gotoAndPlay("L1");
      }
      else if(CC == 101 || CC == 118)
      {
         BFattackSort = 116;
         tgE.gotoAndPlay("L2");
      }
      else if(CC == 102 || CC == 119)
      {
         BFattackSort = 117;
         tgE.gotoAndPlay("L3");
      }
   }
   else if(CC == 103 || CC == 85 || CC == 76)
   {
      if(CC == 103)
      {
         _loc1_ = 0;
         while(_loc1_ <= 10)
         {
            _loc2_ = takeOffCheck(true,pOrderO[_loc1_]);
            if(_loc2_)
            {
               BFcy = pOrderO[_loc1_];
               break;
            }
            _loc1_ = _loc1_ + 1;
         }
      }
      else if(CC == 85 || CC == 76)
      {
         _loc1_ = 0;
         while(_loc1_ <= 4)
         {
            if(CC == 85)
            {
               _loc2_ = takeOffCheck(true,pOrderU[_loc1_]);
               if(_loc2_)
               {
                  BFcy = pOrderU[_loc1_];
                  break;
               }
            }
            else if(CC == 76)
            {
               _loc2_ = takeOffCheck(true,pOrderL[_loc1_]);
               if(_loc2_)
               {
                  BFcy = pOrderL[_loc1_];
                  break;
               }
            }
            _loc1_ = _loc1_ + 1;
         }
      }
      BFattackSort = 11;
      enemyTakeOff(BFcy);
   }
   else if(CC == 64)
   {
      _loc4_ = enemy[eneNo].name + "　は衣服を脱ぎ捨てた！　";
      textWindowOpen(42,0,0,0,0,0,_loc4_);
      BFattackSort = 0;
      aCompletionPro(false);
   }
   else if(CC == 104)
   {
      princeAttack(5);
   }
   else if(CC == 105)
   {
      princeAttack(4);
   }
   else if(CC == 106)
   {
      princeAttack(6);
   }
   else if(CC == 107)
   {
      princeAttack(7);
   }
   else if(CC == 108)
   {
      princeAttack(3);
   }
   else if(CC == 109)
   {
      princeAttack(1);
   }
   else if(CC == 110)
   {
      princeAttack(2);
   }
   else if(CC == 111)
   {
      princeAttack(11);
   }
   else if(CC == 112)
   {
      princeAttack(12);
   }
   else if(CC == 113)
   {
      princeAttack(13);
   }
   else if(CC == 114)
   {
      itemInvestigate(1);
      princeAttack(14);
   }
   else if(CC == 82)
   {
      itemInvestigate(1);
      princeAttack(8);
   }
   else if(CC == 115)
   {
      itemInvestigate(2);
      princeAttack(20);
   }
   else if(CC == 65)
   {
      princeAttack(23);
   }
   else if(CC == 116)
   {
      itemInvestigate(3);
      princeAttack(25);
   }
   else if(CC == 72)
   {
      tejoh = true;
      enemyTaget();
      _loc3_ = tejohTaget(eneNo)._currentframe;
      _loc5_ = tejohTaget(eneNo)._totalframes;
      if(_loc3_ == 1)
      {
         tejohTaget(eneNo).play();
      }
      tgS.farFlg = true;
   }
   else if(CC == 69)
   {
      BFattackSort = 118;
      tgE.gotoAndPlay("L3");
   }
   else if(CC == 73)
   {
      BFattackSort = 16;
      iFini = false;
      transitionPatturnPro();
   }
   else if(CC >= 120 && CC <= 122)
   {
      iFini = true;
      transitionPatturnPro();
   }
   if(CC >= 104 && CC <= 116)
   {
      BFattackSort = 15;
   }
   return true;
}
function animeticaPro()
{
   if(CC == 33)
   {
      return undefined;
   }
   var _loc10_;
   var _loc11_;
   var _loc8_;
   var _loc5_;
   var _loc6_;
   var _loc2_;
   var _loc1_;
   var _loc4_;
   var _loc0_;
   var _loc9_;
   var _loc3_;
   var _loc7_;
   var _loc12_;
   switch(cfS)
   {
      case 20:
         _loc10_ = tgE._currentframe;
         if(_loc10_ == 36)
         {
            BFattackSort = 114;
            tgE.gotoAndPlay("L2");
         }
         break;
      case 25:
         _loc10_ = tgE._currentframe;
         _loc11_ = tgHd2._currentframe;
         if(BFattackSort == 115)
         {
            if(!BFpriFinish)
            {
               if(tgE.labelF == 1)
               {
                  if(tgE.co >= volumeValE[vol[1]] - 1 && CC == 117)
                  {
                     BFpriFinish = true;
                  }
                  if(tgE.co <= volumeValE[vol[1]])
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
               if(tgE.labelF == 1)
               {
                  if(tgE.co >= volumeValE[vol[2]] - 1 && CC == 118)
                  {
                     BFpriFinish = true;
                  }
                  if(tgE.co <= volumeValE[vol[2]])
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
               if(tgE.labelF == 1)
               {
                  if(tgE.co >= volumeValE[vol[3]] - 1 && CC == 119)
                  {
                     BFpriFinish = true;
                  }
                  if(tgE.co <= volumeValE[vol[3]])
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
         if(tejoh)
         {
            _loc8_ = tejohTaget(eneNo)._currentframe;
            _loc5_ = tejohTaget(eneNo)._totalframes;
            if(_loc8_ == _loc5_)
            {
               completionPro(false);
            }
         }
         if(BFattackSort == 118)
         {
            _loc10_ = tgE._currentframe;
            _loc11_ = tgHd2._currentframe;
            BFcoE += 1;
            if(_loc10_ == 2 && BFcoE < 20)
            {
               tgE.gotoAndPlay("L3");
               tgE.bodyUMC.gotoAndPlay("L3");
               tgE.bodyLMC.gotoAndPlay("L3");
               tgHd1.gotoAndPlay("L3");
            }
            else if(BFcoE > 20)
            {
               tgHd1.gotoAndPlay("L1");
               _loc6_ = tejohTaget(eneNo);
               _loc6_.gotoAndStop(1);
               tgAR1.gotoAndStop(1);
               tgAL1.gotoAndStop(1);
               completionPro(false);
               tgS.farFlg = false;
            }
         }
         break;
      case 35:
         _loc10_ = tgE._currentframe;
         _loc2_ = false;
         _loc1_ = tgE.labelF;
         if(TPno == 2)
         {
            _loc4_ = volumeValP[vol[4]] + 1 <= BFco;
         }
         else
         {
            _loc4_ = volumeValP[vol[4]] <= BFco;
         }
         BFbufCo++;
         if(BFbufCo > 50)
         {
            if(!BFbuf3)
            {
               if(_loc4_ && _loc1_ <= 99)
               {
                  BFbuf3 = true;
                  if(iFini)
                  {
                     ectP = 0;
                     if(finishP == 120)
                     {
                        BFpriFinish = true;
                     }
                     else if(finishP == 121)
                     {
                        BFeneFinish = true;
                     }
                     else if(finishP == 122)
                     {
                        ectPmax = _loc0_ = 100;
                        ectP = _loc0_;
                        BFeneFinish = true;
                     }
                  }
                  else
                  {
                     normalIn = true;
                  }
               }
            }
            if(normalIn)
            {
               TPno = 13;
            }
            else if(BFeneFinish)
            {
               TPno = 12;
            }
            else if(BFpriFinish)
            {
               TPno = 11;
            }
         }
         switch(TPno)
         {
            case 0:
               if(_loc1_ == 1)
               {
                  tgE.play();
                  tgE.princeMC.play();
               }
               else if(_loc1_ == 11 || _loc1_ == 121 || _loc1_ == 131)
               {
                  BFco += 0.33;
                  tgE.gotoAndPlay("L1");
                  tgE.bodyUMC.gotoAndPlay("L1");
                  tgE.bodyLMC.gotoAndPlay("L1");
                  tgHd1.gotoAndPlay("L1");
                  tgE.princeMC.gotoAndPlay("L1");
                  voiceOn(2);
                  _loc9_ = TPsurvey();
                  if(_loc9_)
                  {
                     transitionPatturnPro();
                  }
               }
               else if(_loc1_ == 12)
               {
               }
               break;
            case 1:
               if(_loc1_ == 1)
               {
                  tgE.gotoAndPlay("L2");
                  tgE.princeMC.gotoAndPlay("L2");
               }
               else if(_loc1_ == 20)
               {
                  tgE.bodyUMC.gotoAndPlay("L2");
                  tgE.bodyLMC.gotoAndPlay("L2");
                  tgHd1.gotoAndPlay("L2");
                  voiceOn(2);
               }
               else if(_loc1_ == 121 || _loc1_ == 131)
               {
                  BFco += 0.67;
                  tgE.gotoAndPlay("L2");
                  tgE.princeMC.gotoAndPlay("L2");
                  _loc9_ = TPsurvey();
                  if(_loc9_)
                  {
                     transitionPatturnPro();
                  }
               }
               else if(_loc1_ == 141)
               {
                  tgE.stop();
                  tgE.princeMC.stop();
                  tgHd1.gotoAndPlay(1);
                  completionPro(_loc2_);
               }
               break;
            case 2:
               if(_loc1_ == 1)
               {
                  tgE.gotoAndPlay("L3");
                  tgE.princeMC.gotoAndPlay("L3");
               }
               else if(_loc1_ == 20)
               {
                  tgE.bodyUMC.gotoAndPlay("L3");
                  tgE.bodyLMC.gotoAndPlay("L2");
                  tgHd1.gotoAndPlay("L3");
                  voiceOn(3);
               }
               else if(_loc1_ == 131)
               {
                  BFco++;
                  tgE.gotoAndPlay("L3");
                  tgE.princeMC.gotoAndPlay("L3");
                  _loc9_ = TPsurvey();
                  if(_loc9_)
                  {
                     transitionPatturnPro();
                  }
               }
               else if(_loc1_ == 141)
               {
                  tgE.stop();
                  tgE.princeMC.stop();
                  tgHd1.gotoAndPlay(1);
                  completionPro(_loc2_);
               }
               break;
            case 3:
               _loc3_ = 0.05;
               if(_loc1_ == 1)
               {
                  tgE.play();
                  tgE.princeMC.play();
               }
               else if(_loc1_ == 100 && rtCo == 0)
               {
                  tgE.stop();
                  tgE.princeMC.stop();
                  BFco += _loc3_;
                  rtCo += _loc3_;
               }
               else if(_loc1_ == 100)
               {
                  if(_loc1_ <= 100)
                  {
                     BFco += _loc3_;
                  }
                  _loc7_ = Math.floor(Math.random() * 40);
                  if(_loc7_ == 0)
                  {
                     tgE.bodyUMC.gotoAndPlay("L1");
                     tgE.bodyLMC.gotoAndPlay("L2");
                     tgHd1.gotoAndPlay("L3");
                     voiceOn(3);
                  }
                  _loc9_ = TPsurvey();
                  if(_loc9_ && !bfO)
                  {
                     bfO = true;
                     tgE.labelF = 101;
                     tgE.play();
                     tgE.princeMC.gotoAndPlay("L1");
                     tgE.bodyUMC.gotoAndPlay("L3");
                     tgE.bodyLMC.gotoAndPlay("L1");
                     tgHd1.gotoAndPlay("L3");
                     transitionPatturnPro();
                  }
               }
               else if(_loc1_ == 131)
               {
                  tgE.gotoAndPlay("L1");
                  tgE.bodyUMC.gotoAndPlay("L1");
                  tgE.bodyLMC.gotoAndPlay("L1");
                  tgHd1.gotoAndPlay("L1");
                  tgE.princeMC.gotoAndPlay("L1");
               }
               else if(_loc1_ == 141)
               {
                  tgE.stop();
                  tgE.princeMC.stop();
                  tgHd1.gotoAndPlay(1);
                  completionPro(_loc2_);
               }
               break;
            case 11:
               _loc11_ = tgHd1._currentframe;
               if(tgHd1.labelF == 2)
               {
                  completionPro(_loc2_);
               }
               if(_loc1_ == 100)
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
               _loc11_ = tgHd1._currentframe;
               _loc12_ = tgHd1._totalframes;
               if(_loc1_ == 141)
               {
                  tgE.gotoAndPlay("L1");
                  tgE.princeMC.gotoAndPlay("L1");
               }
               else if(_loc1_ == 100)
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
                  completionPro(_loc2_);
               }
               break;
            case 13:
               if(_loc1_ == 141)
               {
                  tgE.stop();
                  tgE.princeMC.stop();
                  tgHd1.gotoAndPlay(1);
                  completionPro(_loc2_);
               }
         }
      case 15:
      default:
         return;
   }
}
