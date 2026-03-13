function panelProcessing(lv)
{
   if(KF(0) && keyWait(3))
   {
      beltC--;
      if(beltC <= -1)
      {
         beltC = 23;
      }
   }
   if(KF(2) && keyWait(3))
   {
      beltC++;
      if(beltC >= 24)
      {
         beltC = 0;
      }
   }
   if(KF(1) && keyWait(3))
   {
      beltC -= 4;
      if(beltC <= -1)
      {
         beltC += 24;
      }
   }
   if(KF(3) && keyWait(3))
   {
      beltC += 4;
      if(beltC >= 24)
      {
         beltC -= 24;
      }
   }
   var _loc2_ = itemBN[beltC];
   if(cfMain != 25)
   {
      if(KF(6) && _root.keyWait(0))
      {
         if(bufP)
         {
            bufP = false;
            bufSou = false;
            BFbufSou = false;
            tgC2._x = 180;
            tgC2._y = sy * 30;
            textWindowOpen(5,_loc2_);
         }
         else
         {
            tgIP.gotoAndStop(1);
            if(BFstartFlg)
            {
               commandSet(1);
            }
         }
      }
   }
   var _loc4_;
   var _loc5_;
   var _loc6_;
   if(KF(5) && keyWait(0))
   {
      if(!bufP)
      {
         if(itemBN[beltC] >= 2)
         {
            if(lv == 0)
            {
               if(item[_loc2_].attachFlg || item[_loc2_].useFlg)
               {
                  if(item[_loc2_].attachFlg)
                  {
                     textWindowOpen(2,_loc2_);
                  }
                  else if(item[_loc2_].useFlg)
                  {
                     textWindowOpen(3,_loc2_);
                  }
               }
               else if(_loc2_ >= 3 && _loc2_ <= 99)
               {
                  textWindowOpen(16,_loc2_);
               }
            }
            else if(lv == 1)
            {
               if(_loc2_ >= 6)
               {
                  textWindowOpen(12,_loc2_);
               }
               else
               {
                  textWindowOpen(6);
               }
            }
            else if(lv == 2)
            {
               if(item[_loc2_].BUflg || item[_loc2_].useFlg)
               {
                  if(_loc2_ >= 6 && _loc2_ <= 8)
                  {
                     if(BFitemUse[_loc2_])
                     {
                        textWindowOpen(17,_loc2_);
                     }
                     else
                     {
                        textWindowOpen(3,_loc2_);
                     }
                  }
                  else if(_loc2_ >= 10 && _loc2_ <= 41)
                  {
                     if(_loc2_ == 20)
                     {
                        if(enemy[eNo].partsFlg7)
                        {
                           textWindowOpen(19);
                        }
                        else if(BFitemUse[_loc2_])
                        {
                           textWindowOpen(17,_loc2_);
                        }
                        else
                        {
                           textWindowOpen(3,_loc2_);
                        }
                     }
                     else if(_loc2_ == 23 || _loc2_ == 24)
                     {
                        if(enemy[eNo].partsFlg10)
                        {
                           textWindowOpen(16,_loc2_);
                        }
                        else if(BFitemUse[_loc2_])
                        {
                           textWindowOpen(17,_loc2_);
                        }
                        else
                        {
                           textWindowOpen(3,_loc2_);
                        }
                     }
                     else if(_loc2_ == 36)
                     {
                        textWindowOpen(16,_loc2_);
                     }
                     else if(BFitemUse[_loc2_])
                     {
                        textWindowOpen(17,_loc2_);
                     }
                     else
                     {
                        textWindowOpen(3,_loc2_);
                     }
                  }
                  else if(_loc2_ == 43)
                  {
                     if(watt <= 0)
                     {
                        textWindowOpen(18);
                     }
                     else if(enemy[eNo].partsFlg10)
                     {
                        textWindowOpen(16,_loc2_);
                     }
                     else if(BFitemUse[43])
                     {
                        textWindowOpen(17,_loc2_);
                     }
                     else
                     {
                        textWindowOpen(3,_loc2_);
                     }
                  }
                  else if(_loc2_ >= 45 && _loc2_ <= 79)
                  {
                     if(_loc2_ == 51 || _loc2_ == 52 || _loc2_ == 54)
                     {
                        if(watt <= 0)
                        {
                           textWindowOpen(18);
                        }
                        else if(enemy[eNo].partsFlg7 && (enemy[eNo].partsFlg1 || enemy[eNo].partsFlg2))
                        {
                           textWindowOpen(19);
                        }
                        else
                        {
                           textWindowOpen(2,_loc2_);
                        }
                     }
                     else if(_loc2_ == 45 || _loc2_ == 46)
                     {
                        if(_loc2_ == 46 && watt <= 0)
                        {
                           textWindowOpen(18);
                        }
                        else if(enemy[eNo].partsFlg10)
                        {
                           textWindowOpen(19);
                        }
                        else if(_loc2_ == 46 && BCtimes(51) == -1 && BCtimes(54) == -1)
                        {
                           textWindowOpen(16,_loc2_);
                        }
                        else
                        {
                           textWindowOpen(2,_loc2_);
                        }
                     }
                     else if(watt <= 0)
                     {
                        textWindowOpen(18);
                     }
                     else if(enemy[eNo].partsFlg10)
                     {
                        textWindowOpen(19);
                     }
                     else
                     {
                        textWindowOpen(2,_loc2_);
                     }
                  }
                  else
                  {
                     textWindowOpen(16,_loc2_);
                  }
               }
               else if(_loc2_ >= 101 && _loc2_ <= 159)
               {
                  textWindowOpen(16,_loc2_);
               }
               else
               {
                  textWindowOpen(16,_loc2_);
               }
            }
            else if(lv == 3)
            {
               if(_loc2_ >= 6)
               {
                  _loc4_ = LCspace();
                  _loc5_ = LCtimes(_loc2_);
                  if(_loc4_ != -1 || _loc4_ == -1 && _loc5_ != -1 && (_loc2_ >= 6 && _loc2_ <= 39 || _loc2_ >= 211 && _loc2_ <= 215))
                  {
                     textWindowOpen(21);
                  }
                  else if(_loc4_ == -1)
                  {
                     textWindowOpen(6,0,1);
                  }
               }
               else
               {
                  textWindowOpen(6,0,0);
               }
            }
            if(setBeltNo == beltC)
            {
               bufSou = true;
            }
            if(BFsetBN == beltC)
            {
               BFbufSou = true;
            }
            bufP = true;
            bufC2 = beltC;
            _loc6_ = beltC % 4;
            var sy = Math.floor(beltC / 4);
            tgC2._x = _loc6_ * 30;
            tgC2._y = sy * 30;
         }
      }
      else
      {
         if(bufC2 == beltC)
         {
            if(lv == 0)
            {
               if(item[_loc2_].attachFlg || item[_loc2_].useFlg)
               {
                  itemUsing(beltC,_loc2_);
               }
               else
               {
                  textWindowOpen(5,_loc2_);
               }
            }
            else if(lv == 1)
            {
               if(_loc2_ >= 6)
               {
                  if(denounceCheck(_loc2_))
                  {
                     textWindowOpen(8,_loc2_);
                     itemSelling(beltC,_loc2_);
                  }
                  else
                  {
                     textWindowOpen(26,_loc2_,3);
                  }
               }
               else
               {
                  textWindowOpen(5,_loc2_);
               }
            }
            else if(lv == 2)
            {
               if(item[_loc2_].BUflg || item[_loc2_].useFlg)
               {
                  if(_loc2_ >= 6 && _loc2_ <= 8)
                  {
                     if(BFitemUse[_loc2_])
                     {
                        textWindowOpen(5,_loc2_);
                     }
                     else
                     {
                        itemUsing(beltC,_loc2_);
                        BFitemUse[_loc2_] = true;
                     }
                  }
                  else if(_loc2_ >= 10 && _loc2_ <= 41)
                  {
                     if(_loc2_ == 20)
                     {
                        if(enemy[eNo].partsFlg7 || BFitemUse[_loc2_])
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else
                        {
                           BFcomFlg[11] = true;
                           itemUsing(beltC,_loc2_);
                           enemy[eNo].TKflg = true;
                        }
                     }
                     else if(_loc2_ == 23 || _loc2_ == 24)
                     {
                        if(enemy[eNo].partsFlg10 || BFitemUse[_loc2_])
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else
                        {
                           BFcomFlg[11] = true;
                           itemUsing(beltC,_loc2_);
                        }
                     }
                     else if(BFitemUse[_loc2_])
                     {
                        textWindowOpen(5,_loc2_);
                     }
                     else
                     {
                        if(_loc2_ == 16 || _loc2_ >= 27 && _loc2_ <= 29)
                        {
                           BFcomFlg[13] = true;
                        }
                        else
                        {
                           BFcomFlg[11] = true;
                        }
                        itemUsing(beltC,_loc2_);
                     }
                  }
                  else if(_loc2_ == 43)
                  {
                     if(enemy[eNo].partsFlg10 || BFitemUse[_loc2_] || watt <= 0)
                     {
                        textWindowOpen(5,_loc2_);
                     }
                     else
                     {
                        BFcomFlg[11] = true;
                        itemUsing(beltC,_loc2_);
                     }
                  }
                  else if(_loc2_ >= 45 && _loc2_ <= 79)
                  {
                     if(_loc2_ == 51 || _loc2_ == 52 || _loc2_ == 54)
                     {
                        if(watt <= 0)
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else if(enemy[eNo].partsFlg7 && (enemy[eNo].partsFlg1 || enemy[eNo].partsFlg2))
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else
                        {
                           itemUsing(beltC,_loc2_);
                        }
                     }
                     else if(_loc2_ == 45 || _loc2_ == 46)
                     {
                        if(_loc2_ == 46 && watt <= 0)
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else if(enemy[eNo].partsFlg10)
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else if(_loc2_ == 46 && BCtimes(51) == -1 && BCtimes(54) == -1)
                        {
                           textWindowOpen(5,_loc2_);
                        }
                        else
                        {
                           itemUsing(beltC,_loc2_);
                        }
                     }
                     else if(watt <= 0)
                     {
                        textWindowOpen(5,_loc2_);
                     }
                     else if(enemy[eNo].partsFlg10)
                     {
                        textWindowOpen(5,_loc2_);
                     }
                     else
                     {
                        itemUsing(beltC,_loc2_);
                     }
                  }
                  else
                  {
                     textWindowOpen(5,_loc2_);
                  }
               }
               else
               {
                  textWindowOpen(5,_loc2_);
               }
            }
            else if(lv == 3)
            {
               if(_loc2_ >= 6)
               {
                  _loc4_ = LCspace();
                  _loc5_ = LCtimes(_loc2_);
                  if(_loc4_ != -1 || _loc4_ == -1 && _loc5_ != -1 && (_loc2_ >= 6 && _loc2_ <= 39 || _loc2_ >= 211 && _loc2_ <= 215))
                  {
                     itemMoveing(beltC,_loc2_);
                     textWindowOpen(27,_loc2_,0);
                  }
                  else if(_loc4_ == -1)
                  {
                     textWindowOpen(5,_loc2_);
                  }
               }
               else
               {
                  textWindowOpen(5,_loc2_);
               }
            }
         }
         else if(_loc2_ != 1)
         {
            itemChange(beltC,0);
         }
         else if(_loc2_ == 1)
         {
            itemChange(beltC,1);
         }
         bufP = false;
         bufSou = false;
         BFbufSou = false;
         tgC2._x = 180;
         tgC2._y = sy * 30;
      }
   }
   if(bufP)
   {
      if(KF(8) && keyWait(0))
      {
         if(bufC2 == beltC)
         {
            if(lv == 1)
            {
               if(_loc2_ >= 6)
               {
                  textWindowOpen(8,_loc2_,1);
                  itemSelling(beltC,_loc2_,true);
               }
               else
               {
                  textWindowOpen(5,_loc2_);
               }
            }
         }
         else if(_loc2_ != 1)
         {
            itemChange(beltC,0);
         }
         else if(_loc2_ == 1)
         {
            itemChange(beltC,1);
         }
         bufP = false;
         bufSou = false;
         BFbufSou = false;
         tgC2._x = 180;
         tgC2._y = sy * 30;
      }
      else if(KF(9) && keyWait(0))
      {
         if(bufC2 == beltC)
         {
            if(lv == 0)
            {
               denouncePro(beltC,_loc2_);
            }
         }
         else if(_loc2_ != 1)
         {
            itemChange(beltC,0);
         }
         else if(_loc2_ == 1)
         {
            itemChange(beltC,1);
         }
         bufP = false;
         bufSou = false;
         BFbufSou = false;
         tgC2._x = 180;
         tgC2._y = sy * 30;
      }
   }
   if(bufC1 != beltC)
   {
      bufC1 = beltC;
      _loc6_ = beltC % 4;
      var sy = Math.floor(beltC / 4);
      tgC1._x = _loc6_ * 30;
      tgC1._y = sy * 30;
      textWindowOpen(5,_loc2_);
   }
}
function itemSelling(bn, i, fg)
{
   var _loc4_;
   if(i >= 6 && i <= 39)
   {
      if(fg)
      {
         itemTimes[i] = 0;
         itemBN[bn] = 1;
      }
      else
      {
         itemTimes[i]--;
         if(itemTimes[i] <= 0)
         {
            itemBN[bn] = 1;
         }
      }
      _root.SVMC.regiMC.play();
   }
   else if(i >= 40 && i <= 99)
   {
      itemBN[bn] = 1;
      _root.SVMC.regiMC.play();
   }
   else if(i >= 102 && i <= 159)
   {
      if(fukuLv == i)
      {
         if(tgC3._x == tgC1._x && tgC3._y == tgC1._y)
         {
            bufSou = false;
            pantsTakeOff();
         }
      }
      itemBN[bn] = 1;
      _root.SVMC.regiMC.play();
   }
   else if(i >= 211 && i <= 215)
   {
      _loc4_ = i - 160;
      if(fg)
      {
         itemTimes[_loc4_] = 0;
         itemBN[bn] = 1;
      }
      else
      {
         itemTimes[_loc4_]--;
         if(itemTimes[_loc4_] <= 0)
         {
            itemBN[bn] = 1;
         }
      }
      _root.SVMC.regiMC.play();
   }
   else if(i >= 160)
   {
      itemBN[bn] = 1;
      _root.SVMC.regiMC.play();
   }
   damageCalculate(0,0,0);
}
function itemUsing(bn, i)
{
   var _loc4_;
   var _loc7_;
   var _loc8_;
   var _loc6_;
   var _loc5_;
   if(i != 2)
   {
      if(i >= 6 && i <= 8)
      {
         itemTimes[i]--;
         if(itemTimes[i] <= 0)
         {
            itemBN[bn] = 1;
         }
         if(i == 6)
         {
            _loc4_ = 33;
         }
         else if(i == 7)
         {
            _loc4_ = 77;
         }
         else if(i == 8)
         {
            _loc4_ = ectP;
         }
         ectP -= _loc4_;
         if(ectP <= 0)
         {
            ectP = 0;
         }
         textWindowOpen(7,i);
         _root.SVMC.kiranMC.play();
      }
      else if(i >= 10 && i <= 79)
      {
         if(i >= 10 && i <= 39)
         {
            itemTimes[i]--;
            if(itemTimes[i] <= 0)
            {
               itemBN[bn] = 1;
            }
            if(i == 31 || i == 32)
            {
               tgS.okouFlg = true;
               tgS.stateSet();
            }
            _root.SVMC.kiranMC.play();
         }
         else if(i == 41)
         {
            tgS.aromaLflg = true;
            tgS.stateSet();
            _root.SVMC.kiranMC.play();
         }
         else if(i == 43)
         {
            enemyTaget();
            _loc7_ = tejohTaget(eNo)._currentframe;
            _loc8_ = tejohTaget(eNo)._totalframes;
            if(_loc7_ == 1)
            {
               tejohTaget(eNo).play();
            }
            tgS.farFlg = true;
         }
         else if(i >= 45 && i <= 79)
         {
            if(i == 45 || i == 46)
            {
               tgS.weponLv = i - 43;
               tgS.gotoAndStop(35);
               tgS.stateSet();
            }
            else if(i >= 51 && i <= 79)
            {
               if(BFweponLv == 45 || BFweponLv == 46)
               {
                  BFweponLv = 1;
                  BFatkBase = 10;
                  damageCalculate(0,0,0);
               }
               tgS.gotoAndStop(30);
            }
            BFweponLv = i;
            BFsetBN = bn;
            _loc6_ = bn % 4;
            _loc5_ = Math.floor(bn / 4);
            tgC4._x = _loc6_ * 30;
            tgC4._y = _loc5_ * 30;
         }
         capaCalculate(i);
         textWindowOpen(7,i);
      }
      else if(i >= 102 && i <= 159)
      {
         fukuLv = i;
         if(fukuLv == 147)
         {
            BFtensi = true;
         }
         else
         {
            BFtensi = false;
         }
         if(fukuLv == 152)
         {
            BFkiseki = true;
         }
         else
         {
            BFkiseki = false;
         }
         capaInitialSet();
         capaCalculate(i);
         setBeltNo = bn;
         SBfukuBf = fukuLv;
         SBsetBeltNoBf = setBeltNo;
         _loc6_ = bn % 4;
         _loc5_ = Math.floor(bn / 4);
         tgC3._x = _loc6_ * 30;
         tgC3._y = _loc5_ * 30;
         bigEventCheck(1);
         textWindowOpen(7,i);
         _root.SVMC.pyoroMC.play();
      }
      else if(i >= 201)
      {
         animeProcessing(bn,i);
      }
   }
   panelSet();
}
function storePanelPro()
{
   if(KF(0) && keyWait(3) && stoC - 1 >= 0)
   {
      stoC--;
   }
   if(KF(2) && keyWait(3) && stoC + 1 <= 8)
   {
      stoC++;
   }
   if(KF(1) && keyWait(3) && stoC - 3 >= 0)
   {
      stoC -= 3;
   }
   if(KF(3) && keyWait(3) && stoC + 3 <= 8)
   {
      stoC += 3;
   }
   var _loc2_ = storeItemCheck(stoC);
   var _loc3_;
   var _loc5_;
   var _loc4_;
   if(KF(5) && keyWait(0))
   {
      if(!bufS)
      {
         _loc3_ = beltCheck(false,_loc2_);
         if(_loc2_ == 1 || _loc2_ == 0)
         {
            textWindowOpen(10,2);
            bufS = false;
            tgSC2._y = -100;
         }
         else if(!_loc3_)
         {
            textWindowOpen(15,_loc2_);
            bufS = false;
            tgSC2._y = -100;
         }
         else if(gold - item[_loc2_].buy < 0)
         {
            textWindowOpen(14,_loc2_);
            bufS = false;
            tgSC2._y = -100;
         }
         else
         {
            textWindowOpen(13,_loc2_);
            bufS = true;
            _loc5_ = stoC % 3;
            _loc4_ = Math.floor(stoC / 3);
            tgSC2._x = _loc5_ * 70;
            tgSC2._y = _loc4_ * 70;
         }
      }
      else
      {
         bufS = false;
         tgSC2._y = -100;
         beltCheck(true,_loc2_,g);
         textWindowOpen(9,_loc2_);
         _root.SVMC.regiMC.play();
      }
   }
   if(bufS)
   {
      if(KF(8) && keyWait(0))
      {
         if(_loc2_ >= 6 && _loc2_ <= 39 || _loc2_ >= 211 && _loc2_ <= 215)
         {
            if(gold - item[_loc2_].buy * 10 < 0)
            {
               textWindowOpen(14,_loc2_,1);
               bufS = false;
               tgSC2._y = -100;
            }
            else
            {
               bufS = false;
               tgSC2._y = -100;
               beltCheck(true,_loc2_,g,true);
               textWindowOpen(9,_loc2_,1);
               _root.SVMC.regiMC.play();
            }
         }
         else
         {
            bufS = false;
            tgSC2._y = -100;
            beltCheck(true,_loc2_,g);
            textWindowOpen(9,_loc2_);
            _root.SVMC.regiMC.play();
         }
      }
   }
   if(bufS1 != stoC)
   {
      bufS1 = stoC;
      _loc5_ = stoC % 3;
      _loc4_ = Math.floor(stoC / 3);
      tgSC1._x = _loc5_ * 70;
      tgSC1._y = _loc4_ * 70;
      textWindowOpen(5,_loc2_);
      bufS = false;
   }
}
function itemChange(bn, v)
{
   var _loc4_ = itemBN[bn];
   var _loc1_ = itemBN[bufC2];
   itemBN[bn] = _loc1_;
   if(v == 0)
   {
      itemBN[bufC2] = _loc4_;
   }
   else if(v == 1)
   {
      itemBN[bufC2] = 1;
   }
   var _loc3_;
   var _loc2_;
   if(bufSou)
   {
      bufSou = false;
      setBeltNo = beltC;
      _loc3_ = beltC % 4;
      _loc2_ = Math.floor(beltC / 4);
      tgC3._x = _loc3_ * 30;
      tgC3._y = _loc2_ * 30;
   }
   else if(setBeltNo == beltC)
   {
      setBeltNo = bufC2;
      _loc3_ = setBeltNo % 4;
      _loc2_ = Math.floor(setBeltNo / 4);
      tgC3._x = _loc3_ * 30;
      tgC3._y = _loc2_ * 30;
   }
   if(BFbufSou)
   {
      BFbufSou = false;
      BFsetBN = beltC;
      _loc3_ = beltC % 4;
      _loc2_ = Math.floor(beltC / 4);
      tgC4._x = _loc3_ * 30;
      tgC4._y = _loc2_ * 30;
   }
   else if(BFsetBN == beltC)
   {
      BFsetBN = bufC2;
      _loc3_ = BFsetBN % 4;
      _loc2_ = Math.floor(BFsetBN / 4);
      tgC4._x = _loc3_ * 30;
      tgC4._y = _loc2_ * 30;
   }
   _loc3_ = beltC % 4;
   _loc2_ = Math.floor(beltC / 4);
   tgC2._x = _loc3_ * 30;
   tgC2._y = _loc2_ * 30;
   textWindowOpen(5,_loc1_);
   panelSet();
   bufP = false;
}
function storeProcessing()
{
   var _loc3_ = storeTalk[storeNo];
   var _loc2_ = _root.storeMC.storeCharMC.charMC.headMC;
   var _loc4_ = _root.storeMC._currentframe;
   var _loc7_;
   var _loc6_;
   var _loc5_;
   var _loc8_;
   switch(storeState)
   {
      case 0:
         _loc7_ = _root.feedInOutMC._currentframe;
         if(KF(5) && keyWait(0))
         {
            _root.storeMC.gotoAndStop(2);
            textWindowOpen(10,_loc3_ + 2);
            _loc2_.gotoAndPlay("talk");
            _loc6_ = stoC % 3;
            _loc5_ = Math.floor(stoC / 3);
            tgSC1._x = _loc6_ * 70;
            tgSC1._y = _loc5_ * 70;
            storeFlg = true;
            storeState = 2;
         }
         else if(KF(6) && keyWait(0))
         {
            bufP = false;
            bufC2 = 0;
            textWindowOpen(10,_loc3_ + 1);
            _loc2_.gotoAndPlay("talk");
            _root.tgIP.gotoAndStop("お店時");
            if(_loc4_ == 2)
            {
               _root.storeMC.gotoAndStop(3);
            }
            storeState = 1;
         }
         else if(KF(8) && storeNo == 2 && keyWait(0))
         {
            _root.storeMC.gotoAndStop(4);
            textWindowOpen(10,125);
            _loc2_.gotoAndPlay("talk");
            storeState = 3;
         }
         else if(KF(3) && keyWait(0) && _loc7_ == 1)
         {
            if(BCtimes(206) != -1)
            {
               TEflg[193] = false;
               bigEventCheck(1);
            }
            textWindowOpen(10,_loc3_ + 4);
            _loc2_.gotoAndPlay("talk");
            _root.feedInOutMC.play();
         }
         else if(KF(1) && storeNo == 2 && keyWait(0))
         {
            _root.miniEV.no = 3;
            _root.miniEV.flg = true;
            miniEV.enemyNo = 10;
            _root.feedInOutMC.play();
         }
         break;
      case 1:
         if(panelFlg)
         {
            panelProcessing(1);
         }
         if(KF(6) && _root.keyWait(0))
         {
            if(_loc4_ == 2)
            {
               _root.storeMC.gotoAndStop(3);
            }
            if(bufP)
            {
               bufP = false;
               textWindowOpen(10,_loc3_ + 1);
               _loc2_.gotoAndPlay("talk");
               tgC2._x = 180;
               tgC2._y = _loc5_ * 30;
            }
            else
            {
               textWindowOpen(10,_loc3_ + 3);
               _loc2_.gotoAndPlay("talk");
               tgIP.gotoAndStop(1);
               storeState = 0;
            }
         }
         break;
      case 2:
         if(storeFlg)
         {
            storePanelPro();
         }
         if(KF(6) && _root.keyWait(0))
         {
            if(bufS)
            {
               bufS = false;
               textWindowOpen(10,_loc3_ + 2);
               _loc2_.gotoAndPlay("talk");
            }
            else
            {
               if(_loc4_ == 2)
               {
                  _root.storeMC.gotoAndStop(3);
               }
               textWindowOpen(10,_loc3_ + 3);
               _loc2_.gotoAndPlay("talk");
               storeState = 0;
            }
            tgSC2._y = -100;
         }
         break;
      case 3:
         if(!bufL)
         {
            if(KF(6) && keyWait(0))
            {
               if(_loc4_ == 4)
               {
                  _root.storeMC.gotoAndStop(5);
               }
               _root.tgIP.gotoAndStop("お店時");
               storeState = 4;
               _loc8_ = itemBN[beltC];
               textWindowOpen(5,_loc8_,0);
            }
         }
         lockerPro();
         break;
      case 4:
         if(panelFlg)
         {
            panelProcessing(3);
         }
         if(KF(8) && keyWait(0))
         {
            if(_loc4_ == 5)
            {
               _root.storeMC.gotoAndStop(4);
            }
            tgIP.gotoAndStop(1);
            storeState = 3;
            _loc8_ = itemBN[lockC + 100];
            textWindowOpen(33,_loc8_);
         }
         else if(KF(6) && _root.keyWait(0))
         {
            if(_loc4_ == 4)
            {
               _root.storeMC.gotoAndStop(5);
            }
            if(bufP)
            {
               bufP = false;
               _loc2_.gotoAndPlay("talk");
               tgC2._x = 180;
               tgC2._y = _loc5_ * 30;
            }
            else
            {
               textWindowOpen(10,123);
               _loc2_.gotoAndPlay("talk");
               tgIP.gotoAndStop(1);
               storeState = 0;
            }
         }
      default:
         return;
   }
}
function beltCheck(fg, no, g, fg2)
{
   var _loc6_ = BCtimes(no);
   var _loc2_ = BCspace();
   if(no == 3)
   {
      gold += g;
      return true;
   }
   if(no >= 6 && no <= 39)
   {
      if(_loc6_ != -1)
      {
         if(fg)
         {
            if(fg2)
            {
               itemTimes[no] += 10;
            }
            else
            {
               itemTimes[no] = itemTimes[no] + 1;
            }
            panelSet();
         }
         return true;
      }
      if(_loc2_ != -1)
      {
         if(fg)
         {
            itemBN[_loc2_] = no;
            if(fg2)
            {
               itemTimes[no] += 10;
            }
            else
            {
               itemTimes[no] = itemTimes[no] + 1;
            }
            panelSet();
         }
         return true;
      }
      return false;
   }
   var _loc3_;
   if(no >= 211 && no <= 215)
   {
      _loc3_ = no - 160;
      if(_loc6_ != -1)
      {
         if(fg)
         {
            if(fg2)
            {
               itemTimes[_loc3_] += 10;
            }
            else
            {
               itemTimes[_loc3_] = itemTimes[_loc3_] + 1;
            }
            panelSet();
         }
         return true;
      }
      if(_loc2_ != -1)
      {
         if(fg)
         {
            itemBN[_loc2_] = no;
            if(fg2)
            {
               itemTimes[_loc3_] += 10;
            }
            else
            {
               itemTimes[_loc3_] = itemTimes[_loc3_] + 1;
            }
            panelSet();
         }
         return true;
      }
      return false;
   }
   if(_loc2_ != -1)
   {
      if(fg)
      {
         itemBN[_loc2_] = no;
         panelSet();
      }
      return true;
   }
   return false;
}
function BCspace()
{
   var _loc1_ = 0;
   while(_loc1_ <= 23)
   {
      if(itemBN[_loc1_] == 1)
      {
         return _loc1_;
      }
      _loc1_ = _loc1_ + 1;
   }
   return -1;
}
function BCtimes(no)
{
   var _loc1_ = 0;
   while(_loc1_ <= 23)
   {
      if(itemBN[_loc1_] == no)
      {
         return _loc1_;
      }
      _loc1_ = _loc1_ + 1;
   }
   return -1;
}
function storeItemCheck(stoC)
{
   var _loc3_;
   if(storeNo == 2)
   {
      if(TEflg[191] && !TEflg[192])
      {
         _loc3_ = store[storeNo].article[8][stoC];
      }
      else
      {
         _loc3_ = store[storeNo].article[gameLv][stoC];
      }
   }
   else if(storeNo == 6)
   {
      _loc3_ = store[storeNo].article[gameLv][stoC];
   }
   else if(storeNo == 9)
   {
      if(_root.BTEflg[5])
      {
         _loc3_ = store[storeNo].article[1][stoC];
      }
      else
      {
         _loc3_ = store[storeNo].article[0][stoC];
      }
   }
   else
   {
      _loc3_ = store[storeNo].article[stoC];
   }
   return _loc3_;
}
function panelBfore()
{
   var _loc1_ = itemBN[beltC];
   textWindowOpen(5,_loc1_);
   bufP = false;
   bufC2 = 0;
}
function itemTextRenewP(i, fg)
{
   var _loc2_;
   var _loc4_;
   if(i == undefined)
   {
      i = 1;
   }
   var _loc3_;
   if(i == 3)
   {
      _loc2_ = gold + "ero ";
   }
   else if(i == 4)
   {
      _loc4_ = Math.round(watt);
      _loc2_ = _loc4_ + "mAH " + item[i].comment;
   }
   else if(i >= 6 && i <= 39)
   {
      if(fg == true)
      {
         _loc2_ = "It\'s usable " + itemTimes[i + 100] + "times. " + item[i].comment;
      }
      else
      {
         _loc2_ = "It\'s usable " + itemTimes[i] + "times. " + item[i].comment;
      }
   }
   else if(i >= 211 && i <= 216)
   {
      _loc3_ = i - 160;
      if(fg == true)
      {
         _loc2_ = "It\'s usable " + itemTimes[_loc3_ + 100] + "times. " + item[i].comment;
      }
      else
      {
         _loc2_ = "It\'s usable " + itemTimes[_loc3_] + "times. " + item[i].comment;
      }
   }
   else
   {
      _loc2_ = item[i].comment;
   }
   return _loc2_;
}
function sellCalculate(i, fg)
{
   var _loc4_ = 0;
   var _loc5_;
   var _loc2_;
   var _loc6_;
   var _loc1_;
   if(fg)
   {
      if(item[i].sell != undefined)
      {
         _loc5_ = item[i].sell;
      }
      else
      {
         _loc5_ = Math.round(item[i].buy / 3);
      }
      _loc2_ = 1;
      if(i >= 6 && i <= 39)
      {
         if(itemTimes[i] == undefined)
         {
            _loc2_ = 1;
         }
         else
         {
            _loc2_ = itemTimes[i];
         }
      }
      else if(i >= 211 && i <= 215)
      {
         _loc6_ = i - 160;
         if(itemTimes[_loc6_] == undefined)
         {
            _loc2_ = 1;
         }
         _loc2_ = itemTimes[_loc6_];
      }
      else
      {
         _loc2_ = 1;
      }
      _loc1_ = 1;
      while(_loc1_ <= _loc2_)
      {
         _loc4_ += _loc5_;
         _loc1_ = _loc1_ + 1;
      }
   }
   else if(item[i].sell != undefined)
   {
      _loc4_ = item[i].sell;
   }
   else
   {
      _loc4_ = Math.round(item[i].buy / 3);
   }
   return _loc4_;
}
function denouncePro(bn, i)
{
   var _loc2_;
   if(i >= 6)
   {
      if(i >= 6 && i <= 39)
      {
         itemTimes[i] = 0;
      }
      else if(i >= 102 && i <= 159)
      {
         if(fukuLv == i)
         {
            bufSou = false;
            pantsTakeOff();
         }
      }
      else if(i >= 211 && i <= 215)
      {
         _loc2_ = i - 160;
         itemTimes[_loc2_] = 0;
      }
      else if(!denounceCheck(i))
      {
         textWindowOpen(26,i,2);
         return undefined;
      }
      itemBN[bn] = 1;
      textWindowOpen(25,i);
      damageCalculate(0,0,0);
   }
   else
   {
      textWindowOpen(26,i,1);
   }
}
function denounceCheck(i)
{
   if(i == 203)
   {
      if(TEflg[150] || TEflg[151] || TEflg[152])
      {
         return false;
      }
   }
   else if(i == 204)
   {
      if(TEflg[155])
      {
         return false;
      }
   }
   else if(i == 205 || i == 207)
   {
      if(!BTEflg[5])
      {
         return false;
      }
   }
   else if(i == 210)
   {
      if(TEflg[298])
      {
         return false;
      }
   }
   else if(i == 220)
   {
      if(TEflg[318])
      {
         return false;
      }
   }
   else if(i == 221 || i == 222)
   {
      return false;
   }
   return true;
}
function targetCheck()
{
   tgSm = _root.stageMC.mapMC;
   tgIP = _root.panelMC;
   tgIB = tgIP.beltMC;
   tgC1 = tgIB.cursoleMC1;
   tgC2 = tgIB.cursoleMC2;
   tgC3 = tgIB.cursoleMC3;
   tgC4 = tgIB.cursoleMC4;
   tgSC1 = _root.storeMC.panelMC.cursoleMC1;
   tgSC2 = _root.storeMC.panelMC.cursoleMC2;
   tgSL = _root.storeMC.beltMC;
   tgSC3 = tgSL.cursoleMC2;
   tgPri = tgSm.priMC;
   tgFuku = tgPri.bodyMC.fukuMC;
   tgFio = _root.feedInOutMC;
   cfFio = tgFio._currentframe;
   tgM = _root.stageMC.stageMMC;
}
function enemyTaget()
{
   tgS = _root.stageMC.stageBMC;
   cfS = tgS._currentframe;
   tgE = tgS.enemyMC;
   tgHd1 = tgE.bodyUMC.headMC;
   tgHd2 = tgE.headMC;
   tgAR1 = tgE.bodyUMC.armRMC;
   tgAL1 = tgE.bodyUMC.armLMC;
   tgAR2 = tgE.armRMC;
   tgAR3 = tgE.armRMC2;
   tgAL2 = tgE.armLMC;
   tgLR1 = tgE.bodyLMC.legRMC;
   tgLL1 = tgE.bodyLMC.legLMC;
   tgBU = tgE.bodyUMC;
   tgBL = tgE.bodyLMC;
   tgBH = tgE.bodyHMC;
   tgP = tgS.priMC;
   tgPpn = tgE.pantsMC;
   tgPwpn = tgE.weponMC;
   tgPA1 = tgE.bodyUMC.priAMC;
   tgPA2 = tgE.bodyLMC.priAMC;
}
function stateCheckPro()
{
   var _loc2_ = map[mapNo][mapY][mapX];
   var _loc3_ = trg[mapY][mapX];
   BFpriRunaway = false;
   miniEV.enemyNo = 0;
   SBflg = 0;
   ectP -= 0.1;
   if(ectP <= 0)
   {
      ectP = 0;
   }
   if(_loc3_ != 6 && _loc2_ != 15 && _loc2_ != 12 && mapNo != 6 && mapNo != 38)
   {
      panelSet();
      return undefined;
   }
   var _loc1_ = 0;
   if(_loc3_ == 6 || mapNo == 6 || _loc2_ == 15 && _loc3_ == 2)
   {
      _loc1_ = 1;
      if(BCtimes(80) != -1)
      {
         _loc1_ -= item[80].val;
      }
      if(BCtimes(81) != -1)
      {
         _loc1_ -= item[81].val;
      }
   }
   else if(_loc2_ == 12 || mapNo == 38)
   {
      _loc1_ = 2;
      if(BCtimes(83) != -1)
      {
         _loc1_ -= item[83].val;
      }
      if(BCtimes(84) != -1)
      {
         _loc1_ -= item[84].val;
      }
      if(fukuLv == 130 || fukuLv >= 137 && fukuLv <= 140)
      {
         _loc1_ -= item[fukuLv].val;
         if(item[fukuLv].val == undefined)
         {
         }
      }
   }
   ectP += _loc1_;
   if(ectP >= 100)
   {
      ectP = 100;
   }
   panelSet();
}
function enemyDamCal(v, fg)
{
   var _loc6_;
   if(BFweponLv >= 46 && BFweponLv <= 79)
   {
      if(BFweponLv == 46)
      {
         if(BCtimes(54) != -1)
         {
            _loc6_ = item[54].atk / 300;
         }
         else if(BCtimes(51) != -1)
         {
            _loc6_ = item[51].atk / 200;
         }
      }
      else
      {
         _loc6_ = item[BFweponLv].atk / 10;
      }
      if(SBflg != 1)
      {
         if(fg == true || fg == undefined)
         {
            if(fukuLv != 152)
            {
               watt -= _loc6_;
            }
         }
      }
      if(watt <= 0)
      {
         watt = 0;
      }
   }
   var _loc2_ = false;
   if(tgS.wPoint == true)
   {
      if(BFatkNo == 1)
      {
         v *= 2.5;
         _loc2_ = true;
      }
      else if(BFatkNo == 8)
      {
         v *= 1.5;
         _loc2_ = true;
      }
      else if(BFatkNo == 2 || BFatkNo == 6)
      {
         v *= 4.5;
         _loc2_ = true;
      }
      else if(BFatkNo == 7 || BFatkNo == 12 || BFatkNo == 13 || BFatkNo == 14 || BFatkNo == 20 || BFatkNo == 30)
      {
         v /= 3;
      }
   }
   if(BFatkNo == 25)
   {
      if(!tgS.MASOflg)
      {
         v /= 6;
      }
      else
      {
         _loc2_ = true;
      }
   }
   else if(BFatkNo == 23)
   {
      if(tgS.MASOflg)
      {
         v *= 2.5;
         _loc2_ = true;
      }
   }
   if(fukuLv == 152)
   {
      v *= 2;
      _loc2_ = true;
   }
   if(_loc2_)
   {
      tgS.WPeffectMC.play();
   }
   var _loc3_ = false;
   enemy[eNo].ectP += v * enemy[eNo].def;
   if(enemy[eNo].ectP >= enemy[eNo].ectPmax)
   {
      enemy[eNo].ectP = enemy[eNo].ectPmax;
      _loc3_ = true;
   }
   var _loc5_ = Math.round(enemy[eNo].ectP);
   tgS.gaugeMC2.ectTXT1.text = _loc5_;
   tgS.gaugeMC2.ectTXT2.text = enemy[eNo].ectPmax;
   var _loc4_ = Math.round(enemy[eNo].ectP / enemy[eNo].ectPmax * 100);
   tgS.gaugeMC.gotoAndStop(_loc4_);
   return _loc3_;
}
function damageCalculate(vE, vD, vA)
{
   var _loc2_;
   if(enemy[eNo].atk == undefined)
   {
      _loc2_ = 10;
   }
   else
   {
      _loc2_ = enemy[eNo].atk / 10;
   }
   var _loc3_;
   var _loc1_;
   if(eNo == 20 || eNo == 30 || eNo == 40 || eNo == 50 || eNo == 60 || eNo == 90 || eNo == 95)
   {
      _loc3_ = 1;
      for(var _loc5_ in enemy[eNo])
      {
         _loc1_ = enemy[eNo][_loc5_];
         if(_loc1_ == false)
         {
            _loc3_ *= 1 + eNo * 1.5 / 1000;
         }
      }
      _loc2_ += _loc3_;
   }
   if(eNo == 60)
   {
      if(BFattackSort == 115 && enemy[60].partsFlg4)
      {
         _loc2_ *= 1.6;
      }
      if(BFattackSort == 115 || BFattackSort == 116 || BFattackSort == 117)
      {
         if(!enemy[60].partsFlg6)
         {
            _loc2_ *= 0.7;
         }
      }
   }
   else if(eNo == 90)
   {
      if(BFattackSort == 115 || BFattackSort == 116 || BFattackSort == 117)
      {
         if(!enemy[90].partsFlg6)
         {
            _loc2_ *= 0.8;
         }
         if(!enemy[90].partsFlg8)
         {
            _loc2_ *= 0.85;
         }
      }
   }
   if(fukuLv == 148)
   {
      vE *= 0.8;
   }
   var _loc6_;
   if(BFbougyoFlg)
   {
      _loc6_ = 4;
   }
   else
   {
      _loc6_ = 1;
   }
   ectP += vE * _loc2_ / _loc6_;
   DEF += vD * _loc2_;
   ATK += vA;
   capaCalculate(0);
   panelSet();
   var _loc4_ = new Array(false,false,false);
   if(ectP >= ectPmax)
   {
      _loc4_[0] = true;
   }
   if(defP <= 0)
   {
      _loc4_[1] = true;
   }
   if(atkP <= 0)
   {
      _loc4_[2] = true;
   }
   if(SBflg == 2 && eNo == 10)
   {
      _loc4_[0] = false;
   }
   return _loc4_;
}
function capaCalculate(iNo, val)
{
   if(BFitemUse[iNo] && iNo >= 10 && iNo <= 79)
   {
      return undefined;
   }
   if(val != undefined)
   {
      BFatkBase = val;
   }
   var _loc1_;
   var _loc4_;
   var _loc2_;
   if(BFstartFlg)
   {
      defP -= defBuf;
      atkP -= atkBuf;
      ectPmax -= ectBuf;
      ectBuf = 0;
      defBuf = 0;
      atkBuf = 0;
      if(BFweponLv == 1)
      {
         BFbuf2 = false;
         var i = 45;
         while(i <= 79)
         {
            BFitemUse[i] = false;
            i++;
         }
         tgC4._x = 140;
         tgC4._y = 0;
      }
      if(iNo >= 45 && iNo <= 79)
      {
         var i = 45;
         while(i <= 79)
         {
            BFitemUse[i] = false;
            i++;
         }
         BFitemUse[iNo] = true;
      }
      else
      {
         BFitemUse[iNo] = true;
      }
      var i = 10;
      while(i <= 79)
      {
         if(BFitemUse[i])
         {
            if(item[i].ectPmax != undefined)
            {
               ectBuf += Math.round(ectPmax * item[i].ectPmax);
            }
            _loc1_ = 0;
            if(item[i].atk != undefined)
            {
               if(i == 46)
               {
                  if(BCtimes(54) != -1)
                  {
                     _loc1_ = item[54].atk;
                  }
                  else if(BCtimes(51) != -1)
                  {
                     _loc1_ = item[51].atk;
                  }
               }
               else
               {
                  _loc1_ = item[i].atk;
               }
            }
            else
            {
               _loc1_ = 0;
            }
            if(i >= 46 && i <= 79 && watt <= 0)
            {
               _loc1_ = 0;
            }
            atkBuf += _loc1_;
            if(tgS.pantsFlg == true)
            {
               if(item[i].def != undefined)
               {
                  defBuf += item[i].def;
               }
            }
         }
         i++;
      }
      ectPmax += ectBuf;
      if(ectP >= ectPmax)
      {
         ectP = ectPmax;
      }
      defP = defP + defBuf - DEF;
      if(defP >= defPmax)
      {
         defPmax = defP;
      }
      if(tgS.pantsFlg == false)
      {
         defP = 0;
         defPmax = 0;
      }
      _loc4_ = 0;
      if(BFitemUse[45] || BFitemUse[46] || BFatkBase == 30)
      {
         _loc4_ = 0;
      }
      else
      {
         _loc4_ = item[fukuLv].atk;
      }
      if(SBflg == 1 && tgS.pantsFlg == false)
      {
         _loc4_ = 0;
      }
      _loc2_ = 0;
      for(var i in zengiP)
      {
         _loc2_ += zengiP[i];
      }
      atkP = _loc4_ + BFatkBase + atkBuf + _loc2_ - ATK;
      DEF = 0;
      ATK = 0;
   }
}
function capaInitialSet()
{
   if(BFatkNo != 30)
   {
      BFatkBase = 10;
   }
   if(ectP >= ectPmax)
   {
      ectP = ectPmax;
   }
   atkP = 0;
   defP = 0;
   if(SBflg == 1 && tgS.pantsFlg == false)
   {
      atkP = BFatkBase;
   }
   else
   {
      defP += item[fukuLv].def;
      atkP = item[fukuLv].atk + BFatkBase;
   }
   defPmax = defP;
}
function panelSet()
{
   var _loc6_ = Math.round(ectP / ectPmax * 100);
   if(_loc6_ <= 0)
   {
      _loc6_ = 1;
   }
   tgIP.gaugeMC1.gotoAndStop(_loc6_);
   tgIP.ectTXT1.text = Math.round(ectP);
   tgIP.ectTXT2.text = Math.round(ectPmax);
   var _loc4_ = Math.round(defP / defPmax * 100);
   if(_loc4_ <= 0 || defP <= 0)
   {
      _loc4_ = 1;
   }
   if(_loc4_ >= 100)
   {
      _loc4_ = 100;
   }
   tgIP.gaugeMC2.gotoAndStop(_loc4_);
   var _loc5_ = 0;
   if(defP >= 0)
   {
      if(defP >= defPmax)
      {
         _loc5_ = defPmax;
      }
      else
      {
         _loc5_ = defP;
      }
   }
   else
   {
      _loc5_ = defP;
   }
   tgIP.defTXT1.text = Math.round(_loc5_);
   tgIP.defTXT2.text = Math.round(defPmax);
   var _loc3_ = Math.round(atkP / atkPmax * 100);
   if(_loc3_ <= 0)
   {
      _loc3_ = 1;
   }
   else if(_loc3_ >= 100)
   {
      _loc3_ = 100;
   }
   tgIP.gaugeMC3.gotoAndStop(_loc3_);
   atkP = Math.round(atkP);
   tgIP.atkTXT1.text = Math.round(atkP);
   tgIP.atkTXT2.text = Math.round(atkPmax);
   var _loc1_ = 0;
   var _loc2_;
   while(_loc1_ <= 23)
   {
      _loc2_ = "no" + _loc1_;
      tgIB[_loc2_].gotoAndStop(itemBN[_loc1_]);
      _loc1_ = _loc1_ + 1;
   }
   var _loc8_ = beltC % 4;
   var _loc7_ = Math.floor(beltC / 4);
   tgC1._x = _loc8_ * 30;
   tgC1._y = _loc7_ * 30;
   _loc8_ = setBeltNo % 4;
   _loc7_ = Math.floor(setBeltNo / 4);
   tgC3._x = _loc8_ * 30;
   tgC3._y = _loc7_ * 30;
   tgFuku.gotoAndStop(fukuLv - 100);
   tgIP.princeMC.bodyMCF.fukuMC.gotoAndStop(fukuLv - 100);
   tgIP.princeMC.bodyMCB.fukuMC.gotoAndStop(fukuLv - 100);
}
function animeProcessing(bn, i)
{
   var _loc6_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
   var _loc3_ = i - 200;
   var _loc2_;
   var _loc8_;
   var _loc4_;
   switch(_loc3_)
   {
      case 1:
         if(_loc6_ == 51)
         {
            animePractise();
            _root.tgIP.gotoAndStop(1);
            panelFlg = false;
            itemBN[bn] = 1;
            textWindowOpen(7,i);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 2:
         _root.tgIP.gotoAndStop(1);
         panelFlg = false;
         textWindowOpen(11,372);
         return;
      case 3:
         _root.SVMC.bellMC.play();
         if(_loc6_ == 7 && pHo == 1 && mapX == 96 && (mapY == 80 || mapY == 81 || mapY == 82))
         {
            animePractise();
            _root.tgIP.gotoAndStop(1);
            panelFlg = false;
            TElv[1] = 6;
            textWindowOpen(7,i);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 4:
         if(_loc6_ == 0 && pHo == 3 && mapX == 49 && mapY == 82)
         {
            animePractise();
            TEflg[155] = false;
            _root.tgIP.gotoAndStop(1);
            panelFlg = false;
            textWindowOpen(7,i);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 5:
         if(map[0][38][54] == 67 && (mapX == 53 && mapY == 39 || mapX == 54 && mapY == 39 || mapX == 53 && mapY == 37 || mapX == 54 && mapY == 37))
         {
            map[0][38][53] = 3;
            map[0][38][54] = 3;
            map[0][38][52] = 67;
            map[0][38][55] = 67;
            mapDisplay();
            _root.tgIP.gotoAndStop(1);
            textWindowOpen(10,41);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 6:
         textWindowOpen(10,25);
         return;
      case 7:
         if((mapX == 53 && mapY == 26 || mapX == 54 && mapY == 26) && pHo == 1)
         {
            textWindowOpen(10,42);
            _root.tgIP.gotoAndStop(1);
            miniEV.no = 1;
            miniEV.flg = true;
            miniEV.mapNo = 4;
            miniEV.mvx = 13;
            miniEV.mvy = 23;
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 8:
         _root.tgIP.gotoAndStop(1);
         panelFlg = false;
         TEflg[271] = false;
         textWindowOpen(11,665);
         return;
      case 9:
         _root.tgIP.gotoAndStop(1);
         textWindowOpen(10,75);
         _root.gotoAndStop(65);
         return;
      case 10:
         if((mapX == 4 && mapY == 20 && pHo == 0 || mapX == 3 && mapY == 21 && pHo == 1) && mapNo == 36)
         {
            map[36][20][3] = 78;
            TEflg[298] = false;
            mapDisplay();
            _root.tgIP.gotoAndStop(1);
            keyWait(2);
            textWindowOpen(7,i);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 18:
         if(mapNo >= 1 && mapNo <= 3 || mapNo >= 5 && mapNo <= 6 || mapNo >= 31 && mapNo <= 37)
         {
            worpFlg = true;
            elvesFlg = true;
            tgPri.lightBallMC.play();
            _root.tgIP.gotoAndStop(1);
            textWindowOpen(7,i);
            return;
         }
         if(mapNo == 38)
         {
            textWindowOpen(10,71);
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 20:
         if(mapX == 23 && mapY == 23 && pHo == 3 && mapNo == 37)
         {
            TEflg[318] = false;
            textWindowOpen(10,70);
            _root.tgIP.gotoAndStop(1);
            miniEV.no = 1;
            miniEV.flg = true;
            miniEV.mapNo = 24;
            miniEV.ho = 0;
            miniEV.mvx = 5;
            miniEV.mvy = 5;
            return;
         }
         textWindowOpen(10,25);
         return;
         break;
      case 21:
         textWindowOpen(10,25);
         return;
      case 22:
         if(mapX == 14 && mapY == 3 && mapNo == 37)
         {
            bn = BCtimes(222);
            itemBN[bn] = 1;
            panelSet();
            animePractise(1);
            _root.tgIP.gotoAndStop(1);
            panelFlg = false;
            TEflg[305] = false;
            textWindowOpen(7,i);
            return;
         }
         textWindowOpen(10,26);
         return;
         break;
      case 24:
         _root.tgIP.gotoAndStop(1);
         panelFlg = false;
         witchesTextPro();
         textWindowOpen(11,880);
         return;
      case 25:
         _root.tgIP.gotoAndStop(1);
         panelFlg = false;
         if(!TEflg[279])
         {
            itemBN[bn] = 1;
            tgFio.play();
            miniEV.flg = true;
            miniEV.no = 6;
            return;
         }
         TEflg[279] = false;
         textWindowOpen(11,940);
         return;
         break;
      default:
         if(_loc3_ >= 11 && _loc3_ <= 16)
         {
            _loc2_ = 11;
            _loc8_ = Math.floor(Math.random() * 2);
            _loc4_ = Math.floor(Math.random() * 3);
            r3 = Math.floor(Math.random() * 4);
            if(_loc3_ == 11)
            {
               if(_loc8_ == 0)
               {
                  _loc2_ = 12;
               }
               else
               {
                  _loc2_ = 11;
               }
            }
            else if(_loc3_ == 12)
            {
               if(_loc8_ == 0)
               {
                  _loc2_ = 12;
               }
               else
               {
                  _loc2_ = 21;
               }
            }
            else if(_loc3_ == 13)
            {
               if(r3 == 0)
               {
                  _loc2_ = 31;
               }
               else if(r3 == 1)
               {
                  _loc2_ = 33;
               }
               else if(r3 == 2)
               {
                  _loc2_ = 35;
               }
               else if(r3 == 3)
               {
                  _loc2_ = 38;
               }
            }
            else if(_loc3_ == 14)
            {
               if(_loc4_ == 0)
               {
                  _loc2_ = 43;
               }
               else if(_loc4_ == 1)
               {
                  _loc2_ = 45;
               }
               else if(_loc4_ == 2)
               {
                  _loc2_ = 47;
               }
            }
            else if(_loc3_ == 15)
            {
               if(_loc4_ == 0)
               {
                  _loc2_ = 51;
               }
               else if(_loc4_ == 1)
               {
                  _loc2_ = 54;
               }
               else if(_loc4_ == 2)
               {
                  _loc2_ = 57;
               }
            }
            _root.tgIP.gotoAndStop(1);
            panelFlg = false;
            itemTimes[_loc3_ + 40]--;
            if(itemTimes[_loc3_ + 40] <= 0)
            {
               itemBN[bn] = 1;
            }
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = _loc2_;
            return;
         }
         return;
   }
}
function animePractise(no)
{
   var _loc2_ = new Array("152","138","156","170");
   animeFlg = true;
   animeVal.no = mapNo;
   if(no == 1)
   {
      animeVal.x = 13;
      animeVal.y = 2;
      _root.stageMC.mapMC[136].play();
   }
   else
   {
      animeVal.x = mapX + pValx[pHo];
      animeVal.y = mapY + pValy[pHo];
      _root.stageMC.mapMC[_loc2_[pHo]].play();
   }
}
function datavisible()
{
   if(_root.winAlpha)
   {
      _root.winAlpha = false;
      _root.messageMC._alpha = 1;
      _root.panelMC._alpha = 1;
      _root.tgS.gaugeMC._alpha = _root.tgS.gaugeMC2._alpha = 1;
   }
   else
   {
      _root.winAlpha = true;
      _root.messageMC._alpha = 100;
      _root.panelMC._alpha = 100;
      _root.tgS.gaugeMC._alpha = _root.tgS.gaugeMC2._alpha = 100;
   }
}
function textWindowOpen(no, i, g, x, y, h, t)
{
   var _loc5_ = _root.messageMC;
   var _loc6_ = _loc5_._currentframe;
   if(_loc6_ == 1)
   {
      _loc5_.play();
   }
   else if(_loc6_ == 7)
   {
      _loc5_.gotoAndPlay(6);
   }
   var _loc4_ = sellCalculate(i);
   var _loc12_;
   var _loc7_;
   var _loc11_;
   var _loc8_;
   var _loc10_;
   var _loc13_;
   switch(no)
   {
      case 0:
         messBuf = item[i].iName + " was found! \n\n...But you aren\'t able to have the item any further. ";
         break;
      case 1:
         if(g != undefined)
         {
            messBuf = "    " + g + "ero " + TD[1];
            break;
         }
         messBuf = "    " + item[i].iName + TD[1];
         break;
      case 2:
         messBuf = "Do you wear " + item[i].iName + "? \n\n" + TD[77];
         break;
      case 3:
         if(i == 6 || i == 8)
         {
            messBuf = "    Do you drink " + item[i].iName + "? \n\n" + TD[77];
            break;
         }
         if(i == 202 || i == 208)
         {
            messBuf = "    Do you read " + item[i].iName + "? \n\n" + TD[77];
            break;
         }
         messBuf = "    Do you use " + item[i].iName + "? \n\n" + TD[77];
         break;
      case 5:
         _loc12_ = itemTextRenewP(i);
         if(panelFlg || g == 0)
         {
            messBuf = item[i].iName + ": " + _loc12_;
            break;
         }
         if(storeFlg)
         {
            messBuf = item[i].iName + ":  Price: " + item[i].buy + "ero " + item[i].comment;
         }
         break;
      case 6:
         if(g == undefined)
         {
            messBuf = "This item can\'t be sold. \n\n" + TD[76];
            break;
         }
         if(g == 0)
         {
            messBuf = "This item can\'t be put in the luggage locker. \n\n" + TD[76];
            break;
         }
         if(g == 1)
         {
            messBuf = "The luggage locker is full and doesn\'t enter any further. \n\n" + TD[76];
            break;
         }
         if(g == 2)
         {
            messBuf = "Your rucksack is full and can\'t return an item. \n\n" + TD[76];
         }
         break;
      case 7:
         if(item[i].attachFlg)
         {
            messBuf = "You wore " + item[i].iName + ". ";
            break;
         }
         if(item[i].useFlg)
         {
            if(i == 6)
            {
               messBuf = "You drank " + item[i].iName + ". \n\nYour excitement level decreased a little. ";
               break;
            }
            if(i == 7)
            {
               messBuf = "You used " + item[i].iName + ". \n\nYour excitement level decreased. ";
               break;
            }
            messBuf = "You used " + item[i].iName + ". ";
            break;
         }
         if(item[i].BUflg)
         {
            if(i >= 10 && i <= 43)
            {
               messBuf = "You used " + item[i].iName + ". ";
               break;
            }
            messBuf = "You wore " + item[i].iName + ". ";
            break;
         }
         if(i == 0 || i == 1)
         {
            messBuf = "";
            break;
         }
         if(i == 3)
         {
            messBuf = "Money is usable in the shop. ";
            break;
         }
         messBuf = item[i].iName + " isn\'t usable. ";
         break;
      case 8:
         if(g == 1)
         {
            _loc7_ = sellCalculate(i,true);
            _loc11_ = gold + _loc7_;
            _loc8_ = 1;
            if(i >= 6 && i <= 39)
            {
               if(itemTimes[i] == undefined)
               {
                  _loc8_ = 1;
               }
               else
               {
                  _loc8_ = itemTimes[i];
               }
            }
            else if(i >= 211 && i <= 215)
            {
               if(itemTimes[i - 160] == undefined)
               {
                  _loc8_ = 1;
               }
               else
               {
                  _loc8_ = itemTimes[i - 160];
               }
            }
            else
            {
               _loc8_ = 1;
            }
            messBuf = "  You sold " + item[i].iName + ". \nPrincipal: " + gold + " + " + _loc4_ + " x " + _loc8_ + " =Total: " + _loc11_ + "ero ";
            gold += _loc7_;
            break;
         }
         _loc11_ = gold + _loc4_;
         messBuf = "　You sold " + item[i].iName + ". \nPrincipal: " + gold + " + " + _loc4_ + " =Total: " + _loc11_ + "ero ";
         gold += _loc4_;
         break;
      case 9:
         if(g == 1)
         {
            _loc11_ = gold - item[i].buy * 10;
            messBuf = "　You bought " + item[i].iName + ". \nPrincipal: " + gold + " - " + item[i].buy + " x 10 =Total: " + _loc11_ + "ero ";
            gold -= item[i].buy * 10;
            break;
         }
         _loc11_ = gold - item[i].buy;
         messBuf = "　You bought " + item[i].iName + ". \nPrincipal: " + gold + " - " + item[i].buy + " =Total: " + _loc11_ + "ero ";
         gold -= item[i].buy;
         break;
      case 10:
         messBuf = TD[i];
         break;
      case 11:
         messBuf = TD[i];
         talkCo = i;
         miniEV.no = 0;
         miniEV.flg = true;
         break;
      case 12:
         if(i >= 6 && i <= 39 || i >= 211 && i <= 215)
         {
            messBuf = "  Sale price: " + _loc4_ + "ero \n  Do you sell " + item[i].iName + "? \n\n" + TD[78];
            break;
         }
         messBuf = "  Sale price: " + _loc4_ + "ero \n  Do you sell " + item[i].iName + "? \n\n" + TD[77];
         break;
      case 13:
         if(gold - item[i].buy < 0)
         {
            messBuf = "Because your money is insufficient, you can\'t buy it. ";
            break;
         }
         messBuf = "Do you buy " + item[i].iName + "? \n\n" + TD[74];
         break;
      case 14:
         messBuf = "Because your money is insufficient, you can\'t buy it. ";
         break;
      case 15:
         messBuf = "You can\'t have an item any further... ";
         break;
      case 16:
         if(i >= 102 && i <= 159)
         {
            messBuf = "You can\'t wear the pants during a fight... \n\n" + TD[76];
            break;
         }
         if(i == 36)
         {
            messBuf = "This item isn\'t usable. \nIf you wear Whirlwind pants and possess it, there is an effect. \n\n" + TD[76];
            break;
         }
         if(i == 44)
         {
            messBuf = "This item isn\'t usable. \nThere is an effect if you possess it after having used Vivi rotor. \n\n" + TD[76];
            break;
         }
         if(i == 46 && BFstartFlg)
         {
            messBuf = "If you have the rotor, it can be used. \n\n" + TD[76];
            break;
         }
         if(i == 43 || i == 23 || i == 24)
         {
            messBuf = "This item can be used when the insert attack is possible. \n\n" + TD[76];
            break;
         }
         if(i >= 10 && i <= 79)
         {
            messBuf = "This item can be used while fighting. \n\n" + TD[73];
            break;
         }
         if(i >= 80 && i <= 99)
         {
            messBuf = "This item isn\'t usable.  It\'s effective by having. \n\n" + TD[73];
            break;
         }
         if(i == 3 || i == 4)
         {
            messBuf = "This item isn\'t usable. \n\n" + TD[76];
            break;
         }
         messBuf = "This item isn\'t usable now. \n\n" + TD[76];
         break;
      case 17:
         if(i == 6 || i == 7)
         {
            messBuf = item[i].iName + " was used. \nIt\'s not usable unless become the next turn... \n\n" + TD[76];
            break;
         }
         messBuf = item[i].iName + " was used. \nIt\'s not usable till it becomes ineffective... \n\n" + TD[76];
         break;
      case 18:
         messBuf = "You can\'t use this item because there isn\'t electric power... \n\n" + TD[76];
         break;
      case 19:
         messBuf = "Because this item doesn\'t suit use conditions, \nyou can\'t use this item. \n(It\'s after the clothes-parts of the attack point are taken off.) \n\n" + TD[76];
         break;
      case 20:
         messBuf = TD[90 + i] + TD[86] + "\n\n" + TD[87];
         break;
      case 21:
         if(g == undefined)
         {
            messBuf = "Do you put this item in the luggage locker? \n\n" + TD[77];
            break;
         }
         if(g == 0)
         {
            messBuf = "Do you return this item to your rucksack? \n\n" + TD[77];
         }
         break;
      case 22:
         messBuf = t + "\nThe premium is " + item[i].iName + ". \n\nIt go out: Down key. ";
         break;
      case 23:
         messBuf = t + "\nThe premium is " + item[i].iName + ". \nBut you didn\'t get it because you were not able to have an item any further. \nIt go out: Down key. ";
         break;
      case 25:
         messBuf = "You threw away " + item[i].iName + "! ";
         break;
      case 26:
         if(g == 1)
         {
            messBuf = item[i].iName + " can\'t be thrown away. ";
            break;
         }
         if(g == 2)
         {
            messBuf = "It\'s foolish to throw it away! ";
            break;
         }
         if(g == 3)
         {
            messBuf = item[i].iName + " can\'t be sold yet. ";
         }
         break;
      case 27:
         if(g == 0)
         {
            messBuf = "You put " + item[i].iName + " in the luggage locker. ";
            break;
         }
         if(g == 1)
         {
            messBuf = "You returned " + item[i].iName + " in a rucksack. ";
         }
         break;
      case 29:
         messBuf = "It\'s the " + (mapNo - 30) + "floor under the ground. ";
         break;
      case 30:
         messBuf = TD[i];
         miniEV.flg = true;
         miniEV.no = 1;
         miniEV.mapNo = g;
         miniEV.mvx = x;
         miniEV.mvy = y;
         if(h != undefined)
         {
            miniEV.ho = h;
            break;
         }
         miniEV.ho = -1;
         break;
      case 33:
         _loc12_ = itemTextRenewP(i,true);
         if(i == undefined)
         {
            _loc10_ = "";
         }
         else
         {
            _loc10_ = item[i].iName;
         }
         messBuf = _loc10_ + "： " + _loc12_;
         break;
      case 40:
         if(BFitemTxt != "")
         {
            _loc13_ = "";
         }
         else if((i >= 30 && i <= 42 || i == 21) && BFitemTxt == "")
         {
            _loc13_ = "▼ ";
         }
         else
         {
            _loc13_ = "";
         }
         messBuf = BTD[i] + BFitemTxt + _loc13_;
         break;
      case 41:
         messBuf = _root.stageMC.stageBMC.BTD[i];
         break;
      case 42:
         if(BFitemTxt == "")
         {
            _loc13_ = "▼ ";
         }
         else
         {
            _loc13_ = "";
         }
         messBuf = t + BFitemTxt + _loc13_;
   }
   BFitemTxt = "";
}
function textWindowClose()
{
   var _loc2_ = _root.messageMC;
   var _loc3_ = _loc2_._currentframe;
   if(_loc3_ == 7)
   {
      _loc2_.play();
   }
}
