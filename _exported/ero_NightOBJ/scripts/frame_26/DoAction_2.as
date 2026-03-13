function miniEvent(n, e)
{
   var _loc5_ = _root.messageMC;
   var _loc6_ = _loc5_._currentframe;
   var _loc7_;
   var _loc8_;
   var _loc9_;
   switch(n)
   {
      case 0:
         if(KF(5) && keyWait(0) && _loc6_ == 7)
         {
            talkCo++;
            if(TD[talkCo] != undefined)
            {
               textWindowOpen(10,talkCo);
               break;
            }
            if(miniEV.enemyNo != 0)
            {
               eneCo = 0;
               _root.miniEV.no = 3;
               break;
            }
            miniEV.flg = false;
            textWindowClose();
            bigEventCheck(1);
         }
         break;
      case 1:
         if(KF(5) && keyWait(0) && _loc6_ == 7)
         {
            miniEV.flg = false;
            mapNo = miniEV.mapNo;
            mapX = miniEV.mvx;
            mapY = miniEV.mvy;
            if(miniEV.ho != -1)
            {
               pHo = miniEV.ho;
               miniEV.ho = -1;
            }
            priCorrect();
            tgPri._y = mBuf0;
            mapDisplay();
            musicPro();
            if(mapNo >= 31 && mapNo <= 37)
            {
               textWindowOpen(29);
            }
            else
            {
               textWindowClose();
            }
            bigEventCheck(1);
         }
         break;
      case 2:
         if(KF(5) && keyWait(0) && _loc6_ == 7 && cfFio == 1)
         {
            tgFio.play();
            textWindowClose();
         }
         if(cfFio == 11)
         {
            miniEV.flg = false;
            if(pHo == 0)
            {
               pHo = 2;
            }
            else if(pHo == 1)
            {
               pHo = 3;
            }
            _loc7_ = storeTalk[storeNo];
            textWindowOpen(10,_loc7_);
            _root.gotoAndStop(45);
         }
         break;
      case 3:
         if(!BFstartFlg)
         {
            BFstartFlg = true;
            EloadFlg = true;
            enemySet(e);
            tgFio.play();
            textWindowClose();
            if(qualType)
            {
               _root._quality = "LOW";
            }
            enemyTaget();
            tgS._x = 610;
            tgFio.loadingMC._visible = true;
            _loc8_ = myMC.loadClip(Sname,_root.stageMC.stageBMC);
         }
         if(cfFio == 11)
         {
            if(EloadFlg)
            {
               tgFio.stop();
               break;
            }
            unloadMovie("_root.stageMC.stageMMC");
            tgFio.play();
            enemyTaget();
            tgS._x = 0;
            tgS.play();
            textWindowOpen(40,7);
            enemy[eNo].co += 1;
            _root.gotoAndStop(40);
         }
         break;
      case 4:
         if(KF(5) && keyWait(0) && _loc6_ == 7 && cfFio == 1)
         {
            tgFio.play();
            textWindowClose();
         }
         if(cfFio == 11)
         {
            miniEV.flg = false;
            if(banerClickFlg)
            {
               textWindowOpen(10,60);
            }
            else
            {
               textWindowOpen(10,59);
            }
            watt = battery[gameLv];
            _root.gotoAndStop(50);
         }
         break;
      case 5:
         enemyTaget();
         if(!ELbf1)
         {
            ELbf1 = true;
            EloadFlg = true;
            _loc9_ = _global.baseUrl + "movie" + movieNo + ".swf";
            _loc8_ = myMC.loadClip(_loc9_,_root.stageMC.stageMMC);
            tgM._x = 610;
            tgFio.loadingMC._visible = true;
         }
         if(cfFio == 11)
         {
            if(EloadFlg)
            {
               tgFio.stop();
               break;
            }
            tgFio.play();
            enemyTaget();
            tgM._x = 0;
            tgM.play();
            if(qualType)
            {
               _root._quality = "HIGH";
            }
            if(_root._currentframe != 60)
            {
               _root.gotoAndStop(60);
            }
         }
         break;
      case 6:
         if(!ELbf1)
         {
            ELbf1 = true;
            EloadFlg = true;
            _loc9_ = _global.baseUrl + "movie1.swf";
            _loc8_ = myMC.loadClip(_loc9_,_root.stageMC.stageMMC);
            tgM._x = 610;
            tgFio.loadingMC._visible = true;
         }
         if(cfFio == 10)
         {
            if(EloadFlg)
            {
               tgFio.stop();
            }
            else
            {
               tgFio.play();
               enemyTaget();
               tgM._x = 0;
               tgM.play();
               if(qualType)
               {
                  _root._quality = "HIGH";
               }
            }
            itemClockResetPro();
            _root.gotoAndStop(60);
         }
         break;
      case 9:
         if(cfFio == 11)
         {
            miniEV.flg = false;
            unloadMovie("_root.stageMC.stageMMC");
            _root.gotoAndStop(35);
         }
         break;
      case 10:
         if(cfFio == 11)
         {
            miniEV.flg = false;
            textWindowClose();
            _root.gotoAndStop(30);
         }
   }
   if(KF(0) || KF(2) || KF(1))
   {
      if(!BFstartFlg)
      {
         miniEV.flg = false;
      }
      textWindowClose();
   }
}
function worpProcessing()
{
   var _loc1_ = tgPri._currentframe;
   var _loc4_ = tgPri.lightBallMC;
   var _loc5_ = _loc4_._currentframe;
   if(!elvesFlg)
   {
      var _loc3_ = worpX[bufW];
      var _loc2_ = worpY[bufW];
      if(_loc5_ == 10 && _loc1_ < 17)
      {
         tgPri.gotoAndPlay(17);
      }
      if(_loc1_ == 25)
      {
         if(_loc3_ > mapX)
         {
            mapX++;
         }
         else if(_loc3_ < mapX)
         {
            mapX--;
         }
         else if(_loc2_ > mapY)
         {
            mapY++;
         }
         else if(_loc2_ < mapY)
         {
            mapY--;
         }
         if(_loc3_ == mapX && _loc2_ == mapY)
         {
            tgPri.play();
         }
         mapDisplay();
      }
   }
   else
   {
      if(_loc5_ == 10 && _loc1_ < 17)
      {
         tgPri.gotoAndPlay(17);
         tgFio.play();
      }
      if(cfFio == 11)
      {
         tgPri.play();
         if(mapNo == 1)
         {
            mapX = 18;
            mapY = 40;
         }
         else if(mapNo == 2)
         {
            mapX = 37;
            mapY = 81;
         }
         else if(mapNo == 3)
         {
            mapX = 93;
            mapY = 49;
         }
         else if(mapNo == 5)
         {
            mapX = 53;
            mapY = 26;
         }
         else if(mapNo == 6)
         {
            mapX = 66;
            mapY = 5;
         }
         else if(mapNo >= 31 && mapNo <= 37)
         {
            mapX = 50;
            mapY = 91;
         }
         mapNo = 0;
         priCorrect(true);
         mapDisplay();
         musicPro();
      }
   }
   if(_loc1_ == 32)
   {
      _loc4_.play();
      worpFlg = false;
      elvesFlg = false;
   }
}
function mararaProcessing()
{
   if(KF(1) && cfFio == 1 && keyWait(3))
   {
      maraC--;
      if(maraC <= -1)
      {
         maraC = 12;
      }
      bufSL = false;
   }
   if(KF(3) && cfFio == 1 && keyWait(3))
   {
      maraC++;
      if(maraC >= 13)
      {
         maraC = 0;
      }
      bufSL = false;
   }
   if(KF(6) && cfFio == 1 && keyWait(0))
   {
      bufSL = false;
      _root.mararaPMC.play();
      textWindowOpen(10,89);
   }
   var _loc2_ = _root.mararaPMC.panelMC.cursoleMC;
   _loc2_._x = 5;
   _loc2_._y = maraC * 20 + 5;
   var _loc3_;
   var _loc4_;
   if(KF(5) && cfFio == 1 && keyWait(0))
   {
      if(maraC == 10)
      {
         if(!bufSL)
         {
            bufSL = true;
            textWindowOpen(10,82);
         }
         else
         {
            bufSL = false;
            saveProcessing();
            textWindowOpen(10,84);
         }
      }
      else if(maraC == 11)
      {
         if(!bufSL)
         {
            bufSL = true;
            textWindowOpen(10,81);
         }
         else
         {
            bufSL = false;
            if(loadProcessing())
            {
               enemyIntelSet();
               textWindowOpen(10,83);
               _root.mararaPMC.play();
               tgFio.gotoAndPlay(11);
               _root.gotoAndPlay(34);
            }
            else
            {
               textWindowOpen(10,4);
            }
         }
      }
      else if(maraC >= 1 && maraC <= 9)
      {
         if(mararaFlg[maraC])
         {
            _loc3_ = tgPri.lightBallMC;
            _loc4_ = _loc3_._currentframe;
            if(_loc4_ == 1)
            {
               bufW = maraC;
               worpFlg = true;
               _root.mararaPMC.play();
               tgPri.lightBallMC.play();
               textWindowClose();
            }
         }
         else
         {
            textWindowOpen(10,85);
         }
      }
      else if(maraC == 12)
      {
         enemyIntelSet();
         saveProcessing();
         maraPflg = false;
         _root.miniEV.no = 10;
         _root.miniEV.flg = true;
         tgFio.play();
      }
   }
}
function kujiPro()
{
   var _loc1_ = 0;
   var _loc7_ = "Congratulations!  It\'s the first prize! ";
   var _loc6_ = "You won in a lottery!  It\'s the second prize. ";
   var _loc3_ = Math.floor(Math.random() * 100);
   var _loc2_ = 0;
   var _loc5_ = 0;
   var _loc4_ = "";
   if(_loc3_ == 0)
   {
      _loc4_ = "Wow!!  It\'s the special prize!  Congratulations!! ";
      _loc1_ = 193;
   }
   else if(_loc3_ == 1 || _loc3_ == 2)
   {
      _loc4_ = _loc7_;
      _loc1_ = Math.floor(Math.random() * 16) + 169;
      if(_loc1_ == 169)
      {
         _loc1_ = 192;
      }
   }
   else if(_loc3_ == 3 || _loc3_ == 4)
   {
      _loc4_ = _loc7_;
      _loc2_ = Math.floor(Math.random() * 19) + 50;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc1_ = Math.floor(Math.random() * 3) + 75;
      }
   }
   else if(_loc3_ == 5 || _loc3_ == 6)
   {
      _loc4_ = _loc7_;
      _loc2_ = Math.floor(Math.random() * 19) + 127;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc1_ = 190;
      }
   }
   else if(_loc3_ >= 7 && _loc3_ <= 9)
   {
      _loc4_ = _loc6_;
      _loc2_ = Math.floor(Math.random() * 22) + 103;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc1_ = 190;
      }
   }
   else if(_loc3_ >= 10 && _loc3_ <= 12)
   {
      _loc4_ = _loc6_;
      _loc2_ = Math.floor(Math.random() * 6) + 41;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc1_ = 190;
      }
   }
   else if(_loc3_ >= 13 && _loc3_ <= 15)
   {
      _loc4_ = _loc6_;
      _loc2_ = Math.floor(Math.random() * 5) + 80;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc1_ = 190;
      }
   }
   else if(_loc3_ >= 16 && _loc3_ <= 70)
   {
      _loc4_ = "You won in a lottery.  It\'s the third prize. ";
      _loc2_ = Math.floor(Math.random() * 26) + 6;
      if(item[_loc2_].iName != undefined)
      {
         _loc1_ = _loc2_;
      }
      else
      {
         _loc5_ = Math.floor(Math.random() * 3);
         if(_loc5_ == 0)
         {
            _loc1_ = 191;
         }
         else
         {
            _loc1_ = 195;
         }
      }
   }
   else
   {
      _loc4_ = "Unfortunately it\'s the fourth prize. ";
      _loc1_ = 102;
   }
   if(item[_loc1_].iName == undefined)
   {
      _loc1_ = 102;
   }
   if(beltCheck(true,_loc1_))
   {
      textWindowOpen(22,_loc1_,0,0,0,0,_loc4_);
   }
   else
   {
      textWindowOpen(23,_loc1_,0,0,0,0,_loc4_);
   }
}
function gameLevelPro()
{
   gameLv = 0;
   var _loc1_ = 1;
   while(_loc1_ <= 10)
   {
      if(BTEflg[_loc1_])
      {
         gameLv++;
      }
      _loc1_ += 1;
   }
}
function bigEventCheck(no, v1)
{
   var _loc3_;
   var _loc4_;
   var _loc5_;
   switch(no)
   {
      case 0:
         if(fukuLv == 153)
         {
            speed = 2;
         }
         else if(fukuLv == 154)
         {
            speed = 5;
         }
         else
         {
            speed = 1;
         }
         if(mapNo == 0)
         {
            if(TEflg[13] && mapX <= 42 && mapNo == 0)
            {
               TEflg[13] = false;
            }
            if(map[0][38][52] == 67)
            {
               if(!(mapX == 53 && mapY == 39 || mapX == 54 && mapY == 39 || mapX == 53 && mapY == 37 || mapX == 54 && mapY == 37 || mapX == 54 && mapY == 38 || mapX == 53 && mapY == 38))
               {
                  map[0][38][53] = 67;
                  map[0][38][54] = 67;
                  map[0][38][52] = 3;
                  map[0][38][55] = 3;
               }
            }
         }
         else if(mapNo == 38)
         {
            if(TEflg[345] && mapX == 10 && mapY == 4)
            {
               TEflg[345] = false;
               map[38][4][9] = -5;
               mapDisplay();
               keyWait(2);
            }
         }
         break;
      case 1:
         gameLevelPro();
         if(animeFlg)
         {
            map[animeVal.no][animeVal.y][animeVal.x] = v1;
            mapDisplay();
            animeFlg = false;
         }
         if(!TEflg[28])
         {
            map[0][57][46] = 1;
         }
         if(BTEflg[1])
         {
            map[0][19][36] = 74;
            map[0][19][35] = 3;
            map[0][9][20] = 72;
            map[0][10][21] = 3;
            map[0][8][25] = 74;
            map[0][4][24] = 8;
            map[0][4][7] = 71;
            map[0][11][26] = 3;
            map[0][8][22] = 72;
            map[0][14][17] = 3;
            map[0][10][23] = 64;
            map[0][10][25] = 64;
            map[0][8][23] = 64;
            map[1][8][18] = 40;
            map[1][8][20] = 40;
            map[1][4][19] = 43;
         }
         if(!TEflg[37])
         {
            map[1][12][19] = 40;
         }
         if(!TEflg[51])
         {
            map[1][22][23] = 46;
         }
         if(!TEflg[52])
         {
            map[1][3][17] = 46;
         }
         if(!TEflg[53])
         {
            map[1][3][21] = 46;
         }
         if(!TEflg[54])
         {
            map[1][3][19] = 46;
         }
         if(!TEflg[72])
         {
            map[0][73][12] = 71;
            map[0][73][11] = 3;
         }
         if(BTEflg[1])
         {
            map[1][12][19] = 6;
            map[1][8][18] = 40;
            map[1][8][20] = 40;
         }
         if(BTEflg[2])
         {
            map[2][4][13] = 40;
            map[0][80][19] = 72;
            map[0][80][24] = 3;
            map[0][78][16] = 74;
            map[0][72][19] = 8;
            map[0][73][12] = 71;
            map[0][73][11] = 3;
            map[0][81][14] = 64;
            map[0][81][16] = 64;
            map[0][77][19] = 40;
            map[0][76][20] = 40;
            map[0][76][21] = 40;
            map[0][75][22] = 40;
            map[0][74][22] = 40;
            map[0][74][23] = 40;
            map[0][74][24] = 40;
            map[0][74][25] = 40;
            map[0][73][25] = 40;
            map[0][73][26] = 40;
            map[0][73][27] = 40;
            map[0][72][27] = 40;
            map[0][71][32] = 14;
            map[0][71][33] = 14;
            map[0][71][34] = 14;
            map[0][71][35] = 14;
            map[0][72][35] = 14;
            map[0][73][35] = 14;
            map[0][74][35] = 14;
            map[0][75][35] = 40;
            map[0][76][35] = 40;
            _loc3_ = 6;
            while(_loc3_ <= 7)
            {
               _loc4_ = 0;
               while(_loc4_ <= 2)
               {
                  map[2][_loc3_][_loc4_] = 9;
                  _loc4_ += 1;
               }
               _loc3_ += 1;
            }
            _loc3_ = 6;
            while(_loc3_ <= 7)
            {
               _loc4_ = 3;
               while(_loc4_ <= 8)
               {
                  map[2][_loc3_][_loc4_] = 40;
                  _loc4_ += 1;
               }
               _loc3_ += 1;
            }
            map[2][7][4] = 18;
            _loc3_ = 3;
            while(_loc3_ <= 7)
            {
               _loc4_ = 18;
               while(_loc4_ <= 26)
               {
                  map[2][_loc3_][_loc4_] = 14;
                  _loc4_ += 1;
               }
               _loc3_ += 1;
            }
            map[2][7][18] = 6;
            map[2][19][23] = 6;
            map[2][17][23] = 40;
            map[2][20][9] = 40;
            map[2][7][13] = 40;
            map[2][6][13] = 40;
         }
         if(!TEflg[80])
         {
            map[0][88][12] = 3;
         }
         if(!TEflg[81])
         {
            map[0][91][25] = 3;
         }
         if(!TEflg[82])
         {
            map[0][94][37] = 3;
         }
         if(!TEflg[74])
         {
            map[0][81][37] = 6;
         }
         if(!TEflg[88])
         {
            map[2][8][13] = 6;
         }
         if(map[2][17][23] == 40)
         {
            TEflg[95] = false;
         }
         if(map[2][20][9] == 40)
         {
            TEflg[96] = false;
         }
         if(map[2][7][13] == 40)
         {
            TEflg[97] = false;
         }
         if(map[2][6][13] == 40)
         {
            TEflg[98] = false;
         }
         if(!TEflg[95])
         {
            map[2][17][23] = 40;
         }
         if(!TEflg[96])
         {
            map[2][20][9] = 40;
         }
         if(!TEflg[97])
         {
            map[2][7][13] = 40;
         }
         if(!TEflg[98])
         {
            map[2][6][13] = 40;
         }
         if(!TEflg[90])
         {
            map[2][3][4] = 46;
         }
         if(!TEflg[91])
         {
            map[2][5][8] = 48;
         }
         if(!TEflg[92])
         {
            map[2][5][6] = 46;
         }
         if(!TEflg[155])
         {
            map[0][83][49] = 26;
         }
         if(BTEflg[3])
         {
            map[3][6][18] = 8;
            map[3][3][19] = 6;
            map[3][14][3] = 6;
            map[3][11][23] = 6;
            map[3][5][4] = 6;
            map[3][5][7] = 6;
            map[0][91][66] = 73;
            map[0][90][82] = 73;
            map[0][92][79] = 73;
            map[0][91][70] = 73;
            map[0][91][67] = 65;
            map[10][3][4] = 43;
         }
         if(map[3][21][22] == 40)
         {
            TEflg[100] = false;
         }
         if(map[3][6][13] == 40)
         {
            TEflg[101] = false;
         }
         if(!TEflg[100])
         {
            map[3][21][22] = 40;
         }
         if(!TEflg[101])
         {
            map[3][6][13] = 40;
         }
         if(!TEflg[103])
         {
            map[3][19][22] = 46;
         }
         if(!TEflg[104])
         {
            map[3][16][23] = 46;
         }
         if(!TEflg[105])
         {
            map[3][14][22] = 46;
         }
         if(!TEflg[106])
         {
            map[3][9][20] = 48;
         }
         if(!TEflg[107])
         {
            map[3][3][12] = 46;
         }
         if(!TEflg[120])
         {
            map[3][8][21] = 48;
         }
         if(map[0][79][96] == 40)
         {
            TEflg[150] = false;
         }
         if(map[0][80][96] == 40)
         {
            TEflg[151] = false;
         }
         if(map[0][81][96] == 40)
         {
            TEflg[152] = false;
         }
         if(!TEflg[150])
         {
            map[0][79][96] = 40;
         }
         if(!TEflg[151])
         {
            map[0][80][96] = 40;
         }
         if(!TEflg[152])
         {
            map[0][81][96] = 40;
         }
         if(!TEflg[160])
         {
            map[0][62][48] = 1;
         }
         if(BTEflg[4])
         {
            map[0][73][63] = 3;
            map[0][73][64] = 71;
            map[11][4][3] = 43;
            map[16][4][3] = 62;
         }
         if(!TEflg[190] || BTEflg[5])
         {
            map[0][38][46] = 3;
            map[0][38][47] = 71;
         }
         if(!TEflg[225])
         {
            map[4][12][16] = 46;
         }
         if(!TEflg[226])
         {
            map[4][12][17] = 46;
         }
         if(!TEflg[227])
         {
            map[4][12][18] = 46;
         }
         if(!TEflg[228])
         {
            map[4][12][19] = 46;
         }
         if(!TEflg[229])
         {
            map[4][12][20] = 46;
         }
         if(!TEflg[230])
         {
            map[4][12][21] = 46;
         }
         if(!TEflg[231])
         {
            map[4][14][20] = 48;
         }
         if(!TEflg[232])
         {
            map[4][16][16] = 48;
         }
         if(map[0][22][57] == 40)
         {
            TEflg[238] = false;
         }
         if(map[0][23][57] == 40)
         {
            TEflg[239] = false;
         }
         if(!TEflg[238])
         {
            map[0][22][57] = 40;
         }
         if(!TEflg[239])
         {
            map[0][23][57] = 40;
         }
         if(map[5][4][20] == 40)
         {
            TEflg[240] = false;
         }
         if(map[5][11][5] == 40)
         {
            TEflg[241] = false;
         }
         if(!TEflg[240])
         {
            map[5][4][20] = 40;
         }
         if(!TEflg[241])
         {
            map[5][11][5] = 40;
         }
         if(!TEflg[210])
         {
            map[0][20][55] = 46;
         }
         if(!TEflg[211])
         {
            map[0][20][53] = 46;
         }
         if(!TEflg[212])
         {
            map[0][21][49] = 48;
         }
         if(!TEflg[213])
         {
            map[0][20][52] = 46;
         }
         if(!TEflg[214])
         {
            map[0][20][50] = 48;
         }
         if(!TEflg[215])
         {
            map[0][19][54] = 46;
         }
         if(!TEflg[216])
         {
            map[0][19][53] = 46;
         }
         if(!TEflg[217])
         {
            map[0][9][53] = 46;
         }
         if(!TEflg[218])
         {
            map[0][10][53] = 46;
         }
         if(!TEflg[219])
         {
            map[0][8][51] = 48;
         }
         if(BTEflg[5])
         {
            map[4][5][5] = 77;
            map[16][4][3] = 43;
            map[4][3][6] = 62;
            map[4][8][21] = 53;
            map[0][38][53] = 3;
            map[0][38][54] = 3;
            map[0][29][52] = 6;
            map[0][29][55] = 6;
            map[0][45][66] = 3;
            map[0][38][58] = 74;
            map[0][42][66] = 3;
            map[0][38][60] = 72;
            map[0][32][40] = 3;
            map[0][38][56] = 67;
            _loc3_ = 23;
            while(_loc3_ <= 36)
            {
               _loc4_ = 46;
               while(_loc4_ <= 65)
               {
                  if(map[0][_loc3_][_loc4_] == 31 || map[0][_loc3_][_loc4_] == 32)
                  {
                     map[0][_loc3_][_loc4_] = 33;
                  }
                  if(map[0][_loc3_][_loc4_] == 34)
                  {
                     map[0][_loc3_][_loc4_] = 35;
                  }
                  if(map[0][_loc3_][_loc4_] == 36)
                  {
                     map[0][_loc3_][_loc4_] = 37;
                  }
                  if(map[0][_loc3_][_loc4_] == 22 || map[0][_loc3_][_loc4_] == 23)
                  {
                     map[0][_loc3_][_loc4_] = 38;
                  }
                  _loc4_ += 1;
               }
               _loc3_ += 1;
            }
            map[0][31][61] = 6;
            map[0][24][55] = 6;
            if(TEflg[224])
            {
               map[4][5][3] = 47;
            }
            else
            {
               map[4][5][3] = 48;
            }
            _loc5_ = null;
            TEflg[2] = _loc5_ = false;
            TEflg[1] = _loc5_;
            TEflg[0] = _loc5_;
         }
         if(!TEflg[282])
         {
            map[0][23][96] = 46;
         }
         if(!TEflg[283])
         {
            map[0][13][66] = 48;
         }
         if(!TEflg[284])
         {
            map[0][15][68] = 46;
         }
         if(!TEflg[274])
         {
            map[0][12][66] = 48;
         }
         if(map[0][9][69] == 40)
         {
            TEflg[246] = false;
         }
         if(!TEflg[246])
         {
            map[0][9][69] = 40;
         }
         if(map[6][6][7] == 40)
         {
            TEflg[245] = false;
         }
         if(!TEflg[245])
         {
            map[6][6][7] = 40;
         }
         if(map[33][13][16] == 40)
         {
            TEflg[243] = false;
         }
         if(!TEflg[243])
         {
            map[33][13][16] = 40;
         }
         if(!TEflg[290])
         {
            map[35][11][4] = 46;
         }
         if(!TEflg[291])
         {
            map[35][11][11] = 46;
         }
         if(map[36][16][6] == 40)
         {
            TEflg[295] = false;
         }
         if(!TEflg[295])
         {
            map[36][16][6] = 40;
         }
         if(!TEflg[300])
         {
            map[36][20][3] = 53;
         }
         if(!TEflg[301])
         {
            map[36][21][22] = 43;
         }
         if(!TEflg[264])
         {
            map[31][19][19] = 48;
         }
         if(!TEflg[265])
         {
            map[31][5][5] = 48;
         }
         if(!TEflg[266])
         {
            map[31][19][5] = 48;
         }
         if(!TEflg[267])
         {
            map[31][5][19] = 48;
         }
         if(!TEflg[263])
         {
            map[32][13][18] = 48;
         }
         if(!TEflg[262])
         {
            map[33][13][23] = 48;
         }
         if(!TEflg[261])
         {
            map[34][4][17] = 46;
         }
         if(!TEflg[192])
         {
            map[15][4][3] = 43;
            map[14][4][3] = 74;
         }
         if(!TEflg[194])
         {
            map[0][49][66] = 46;
         }
         if(BufLv != gameLv && !TEflg[191])
         {
            TEflg[195] = false;
         }
         if(!TEflg[195])
         {
            map[0][52][67] = 40;
            _loc3_ = 49;
            while(_loc3_ <= 52)
            {
               _loc4_ = 63;
               while(_loc4_ <= 70)
               {
                  if(map[0][_loc3_][_loc4_] >= 3 && map[0][_loc3_][_loc4_] <= 5)
                  {
                     map[0][_loc3_][_loc4_] = 40;
                  }
                  _loc4_ += 1;
               }
               _loc3_ += 1;
            }
            map[0][49][65] = 4;
            map[0][49][70] = 4;
            map[0][49][67] = 74;
            map[15][4][3] = 43;
            if(TEflg[194])
            {
               map[0][49][66] = 45;
            }
            else
            {
               map[0][49][66] = 46;
            }
         }
         if(BTEflg[6])
         {
            map[6][10][5] = 40;
            map[0][71][73] = 4;
            map[0][48][57] = 73;
            map[0][6][22] = 3;
            map[0][91][67] = 3;
            map[17][3][3] = 3;
            map[17][4][4] = 3;
            map[17][5][3] = 3;
            map[34][12][6] = 53;
         }
         if(BTEflg[7])
         {
            map[6][3][3] = 54;
            map[0][73][64] = 3;
            map[0][73][63] = 3;
            map[6][5][6] = 71;
            map[0][88][12] = 2;
            map[0][91][25] = 2;
            map[0][94][37] = 2;
            map[12][4][3] = 43;
         }
         if(!TEflg[8])
         {
            map[22][3][3] = 48;
         }
         if(!TEflg[9])
         {
            map[22][5][3] = 48;
         }
         if(!TEflg[184])
         {
            map[20][3][3] = 48;
         }
         if(!TEflg[185])
         {
            map[20][4][3] = 48;
         }
         if(!TEflg[186])
         {
            map[21][5][3] = 48;
         }
         if(!TEflg[2])
         {
            map[0][37][92] = 3;
            TEflg[1] = _loc5_ = false;
            TEflg[0] = _loc5_;
         }
         if(!TEflg[1])
         {
            map[0][48][18] = 3;
            TEflg[0] = false;
         }
         if(!TEflg[0])
         {
            map[0][51][50] = 3;
         }
         if(!TEflg[299])
         {
            if(mapNo != 36)
            {
               TEflg[300] = false;
            }
         }
         if(!TEflg[314] && TEflg[315])
         {
            if(mapNo != 37 && mapNo != 24)
            {
               TEflg[315] = false;
            }
         }
         if(!TEflg[315])
         {
            map[24][4][3] = 47;
         }
         if(!TEflg[320])
         {
            map[24][4][3] = 48;
         }
         if(!TEflg[323])
         {
            map[37][22][4] = 46;
         }
         if(!TEflg[305])
         {
            map[37][13][12] = _loc5_ = 40;
            map[37][13][13] = _loc5_;
            map[37][9][8] = _loc5_ = 40;
            map[37][10][14] = _loc5_;
            map[37][15][11] = _loc5_;
            map[37][0][13] = _loc5_ = 9;
            map[37][1][13] = _loc5_;
            map[37][2][13] = _loc5_;
            map[37][3][13] = 40;
            map[37][20][3] = 40;
         }
         if(!TEflg[306])
         {
            map[27][4][5] = _loc5_ = 40;
            map[27][4][4] = _loc5_;
         }
         if(!TEflg[327])
         {
            map[35][3][3] = 48;
         }
         if(!TEflg[328])
         {
            map[35][3][10] = 48;
         }
         if(!TEflg[330])
         {
            map[38][19][11] = 46;
         }
         if(!TEflg[331])
         {
            map[38][21][9] = 48;
         }
         if(!TEflg[332])
         {
            map[38][18][18] = 46;
         }
         if(!TEflg[334] && !TEflg[335])
         {
            map[38][21][20] = 40;
         }
         if(!TEflg[340])
         {
            map[38][6][13] = 6;
         }
         if(!TEflg[341])
         {
            map[38][14][14] = 6;
         }
         if(!TEflg[342])
         {
            map[38][8][18] = 6;
         }
         if(!TEflg[343])
         {
            map[38][3][21] = 6;
            map[38][3][22] = 6;
         }
         if(!TEflg[344])
         {
            map[38][17][22] = 6;
         }
         if(!TEflg[337])
         {
            map[38][21][11] = 54;
            map[37][3][12] = 75;
            map[37][15][20] = 6;
            map[24][3][3] = 48;
            map[24][4][3] = 53;
            map[37][2][13] = -1;
            map[38][23][8] = _loc5_ = 40;
            map[38][23][7] = _loc5_;
            map[38][23][6] = _loc5_;
            map[0][38][56] = 3;
            map[0][34][52] = 67;
            map[6][5][6] = 53;
            map[0][33][52] = 71;
            map[0][49][67] = 3;
            map[0][32][52] = 74;
            map[4][3][6] = 53;
            map[0][30][52] = 62;
            map[4][5][5] = 54;
            map[0][29][53] = 77;
            if(TEflg[354])
            {
               if(!TEflg[348] && !TEflg[349] && !TEflg[350] && !TEflg[351] && !TEflg[352])
               {
                  TEflg[354] = false;
                  movieNo = 6;
                  MsysBf = 0;
                  tgFio.play();
                  textWindowClose();
                  miniEV.flg = true;
                  miniEV.no = 5;
               }
            }
         }
      default:
         return;
   }
}
function hellInit()
{
   TEflg[345] = true;
   map[38][4][9] = 6;
   TEflg[340] = TEflg[341] = TEflg[342] = TEflg[343] = TEflg[344] = true;
   map[38][6][13] = map[38][14][14] = map[38][8][18] = 76;
   map[38][3][21] = map[38][3][22] = map[38][17][22] = 76;
}
function keyF()
{
   if(cfFio != 1)
   {
      return undefined;
   }
   var _loc2_ = !KF(1) && !KF(3) && !KF(0) && !KF(2);
   if(qualType)
   {
      if(_loc2_ && _root._quality != "HIGH")
      {
         _root._quality = "HIGH";
      }
   }
   if(KF(5) && keyWait(0))
   {
      dataCheck();
      textWindowClose();
   }
   if(KF(6) && _loc2_ && _root.keyWait(0))
   {
      panelFlg = true;
      panelBfore();
      miniEV.flg = false;
      tgIP.gotoAndStop("マップ時");
   }
   if(!KF(5))
   {
      if(keyType == 3)
      {
         if(KF(1) && !KF(5))
         {
            advancePro();
         }
         else if(KF(3) && keyWait(4))
         {
            pHo += 2;
         }
         else if(KF(2) && keyWait(4))
         {
            pHo++;
            _root.Dtxt = "";
         }
         else if(KF(0) && keyWait(4))
         {
            pHo--;
            _root.Dtxt = "";
         }
         if(pHo == 4)
         {
            pHo = 0;
         }
         else if(pHo == 5)
         {
            pHo = 1;
         }
         else if(pHo <= -1)
         {
            pHo = 3;
         }
      }
      else if(keyType == 2)
      {
         if(KF(0))
         {
            if(pHo == 0)
            {
               advancePro();
            }
            else
            {
               pHo = 0;
            }
         }
         else if(KF(1))
         {
            if(pHo == 1)
            {
               advancePro();
            }
            else
            {
               pHo = 1;
            }
         }
         else if(KF(2))
         {
            if(pHo == 2)
            {
               advancePro();
            }
            else
            {
               pHo = 2;
            }
         }
         else if(KF(3))
         {
            if(pHo == 3)
            {
               advancePro();
            }
            else
            {
               pHo = 3;
            }
         }
      }
   }
}
function KF(no)
{
   if(keyWaitFlg)
   {
      return false;
   }
   var _loc3_ = _root.startGamenMC._currentframe == 3;
   var _loc4_ = _root.initSetMC.lv == "patternSet";
   if(Key.isDown(37) && no == 0)
   {
      return true;
   }
   if(Key.isDown(38) && no == 1)
   {
      return true;
   }
   if(Key.isDown(39) && no == 2)
   {
      return true;
   }
   if(Key.isDown(40) && no == 3)
   {
      return true;
   }
   if((Key.isDown(32) && !_loc4_ && !_loc3_ || Key.isDown(90) && !_loc4_ && !_loc3_) && no == 5)
   {
      return true;
   }
   if((Key.isDown(16) && !_loc4_ && !_loc3_ || Key.isDown(88) && !_loc4_ && !_loc3_) && no == 6)
   {
      return true;
   }
   if(Key.isDown(67) && no == 8)
   {
      return true;
   }
   if(Key.isDown(69) && no == 15)
   {
      return true;
   }
   if(Key.isDown(46) && no == 9)
   {
      return true;
   }
   if(Key.isDown(81) && no == 13)
   {
      return true;
   }
   if(Key.isDown(87) && no == 14)
   {
      return true;
   }
   return false;
}
function advancePro()
{
   if(messageFlg)
   {
      textWindowClose();
   }
   var _loc2_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
   if(_loc2_ == 1 || _loc2_ == 2 || _loc2_ == 3 || _loc2_ == 4 || _loc2_ == 6 || _loc2_ == 8 || _loc2_ == 12 || _loc2_ == 15 || _loc2_ == 26 || _loc2_ == 40 || _loc2_ == 43 || _loc2_ == 53 || _loc2_ == 54 || _loc2_ == -2)
   {
      priCorrect();
      mapY += pValy[pHo];
      mapX += pValx[pHo];
      mapPreparation();
      if(qualType)
      {
         _root._quality = "LOW";
      }
   }
}
function princeMove()
{
   if(!moveFlg)
   {
      keyF();
   }
   var _loc1_ = KF(1) || KF(3) || KF(0) || KF(2);
   switch(pHo)
   {
      case 0:
         if(_loc1_ || moveFlg)
         {
            tgPri.gotoAndStop(9);
         }
         else
         {
            tgPri.gotoAndStop(1);
         }
         break;
      case 1:
         if(_loc1_ || moveFlg)
         {
            tgPri.gotoAndStop(11);
         }
         else
         {
            tgPri.gotoAndStop(3);
         }
         break;
      case 2:
         if(_loc1_ || moveFlg)
         {
            tgPri.gotoAndStop(13);
         }
         else
         {
            tgPri.gotoAndStop(5);
         }
         break;
      case 3:
         if(_loc1_ || moveFlg)
         {
            tgPri.gotoAndStop(15);
         }
         else
         {
            tgPri.gotoAndStop(7);
         }
      default:
         return;
   }
}
function priCorrect(fg)
{
   var _loc2_;
   if(fg)
   {
      targetCheck();
      _loc2_ = map[mapNo][mapY][mapX];
      if(_loc2_ == 1)
      {
         tgPri._y = 185;
      }
   }
   else
   {
      _loc2_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
      if(_loc2_ == 1)
      {
         mBuf0 = 185;
      }
      else
      {
         mBuf0 = 170;
         tgPri._y = mBuf0;
      }
   }
}
function princeSet()
{
   _root.stageMC.mapMC.attachMovie("priMC","priMC",155);
   _root.stageMC.mapMC.priMC._x = 240;
   _root.stageMC.mapMC.priMC._y = 170;
}
function lockerPro()
{
   if(KF(0) && keyWait(3))
   {
      if(lockC == 1)
      {
         lockC = 36;
      }
      else
      {
         lockC--;
      }
   }
   if(KF(2) && keyWait(3))
   {
      if(lockC == 36)
      {
         lockC = 1;
      }
      else
      {
         lockC++;
      }
   }
   if(KF(1) && keyWait(3))
   {
      if(lockC <= 6)
      {
         lockC += 30;
      }
      else
      {
         lockC -= 6;
      }
   }
   if(KF(3) && keyWait(3))
   {
      if(lockC >= 31)
      {
         lockC -= 30;
      }
      else
      {
         lockC += 6;
      }
   }
   if(KF(6) && _root.keyWait(0))
   {
      if(bufL)
      {
         bufL = false;
         tgSC3._y = -100;
         textWindowOpen(33,i);
      }
   }
   var _loc2_ = itemBN[lockC + 100];
   var _loc3_ = BCspace();
   var _loc4_ = BCtimes(_loc2_);
   var _loc5_;
   var _loc6_;
   var _loc7_;
   if(KF(5) && keyWait(0))
   {
      if(!bufL)
      {
         if(itemBN[lockC + 100] >= 6 && itemBN[lockC + 100] != undefined)
         {
            if(_loc3_ != -1 || _loc3_ == -1 && _loc4_ != -1 && (_loc2_ >= 6 && _loc2_ <= 39 || _loc2_ >= 211 && _loc2_ <= 215))
            {
               textWindowOpen(21,0,0);
            }
            else
            {
               textWindowOpen(6,0,2);
            }
            bufL = true;
            lockCbf = lockC;
            _loc5_ = (lockC - 1) % 6;
            _loc6_ = Math.floor((lockC - 1) / 6);
            tgSC3._x = _loc5_ * 35;
            tgSC3._y = _loc6_ * 35;
         }
      }
      else
      {
         if(lockCbf == lockC)
         {
            if(_loc2_ >= 6 && _loc2_ <= 39)
            {
               if(_loc4_ != -1)
               {
                  itemTimes[_loc2_] += itemTimes[_loc2_ + 100];
                  itemTimes[_loc2_ + 100] = 0;
                  itemBN[lockC + 100] = 1;
                  textWindowOpen(27,_loc2_,1);
               }
               else if(_loc3_ != -1)
               {
                  itemTimes[_loc2_] = itemTimes[_loc2_ + 100];
                  itemTimes[_loc2_ + 100] = 0;
                  itemBN[_loc3_] = itemBN[lockC + 100];
                  itemBN[lockC + 100] = 1;
                  textWindowOpen(27,_loc2_,1);
               }
               else
               {
                  textWindowOpen(33,_loc2_);
               }
            }
            else if(_loc2_ >= 211 && _loc2_ <= 215)
            {
               _loc7_ = _loc2_ - 160;
               if(_loc4_ != -1)
               {
                  itemTimes[_loc7_] += itemTimes[_loc7_ + 100];
                  itemTimes[_loc7_ + 100] = 0;
                  itemBN[lockC + 100] = 1;
                  textWindowOpen(27,_loc2_,1);
               }
               else if(_loc3_ != -1)
               {
                  itemTimes[_loc7_] = itemTimes[_loc7_ + 100];
                  itemTimes[_loc7_ + 100] = 0;
                  itemBN[_loc3_] = itemBN[lockC + 100];
                  itemBN[lockC + 100] = 1;
                  textWindowOpen(27,_loc2_,1);
               }
               else
               {
                  textWindowOpen(33,_loc2_);
               }
            }
            else if(_loc3_ != -1)
            {
               itemBN[_loc3_] = itemBN[lockC + 100];
               itemBN[lockC + 100] = 1;
               textWindowOpen(27,_loc2_,1);
            }
            else
            {
               textWindowOpen(33,_loc2_);
            }
         }
         else if(_loc2_ != 1 && _loc2_ != undefined)
         {
            itemChangeL(lockC,0);
         }
         else if(_loc2_ == 1 || _loc2_ == undefined)
         {
            itemChangeL(lockC,1);
         }
         bufL = false;
         tgSC3._y = -100;
         panelSet();
         lockerSet();
      }
   }
   if(bufC3 != lockC)
   {
      bufC3 = lockC;
      tgSL.gotoAndStop(lockC);
      textWindowOpen(33,_loc2_);
   }
}
function itemChangeL(bn, v)
{
   var _loc3_ = itemBN[bn + 100];
   var _loc4_ = itemBN[lockCbf + 100];
   itemBN[bn + 100] = _loc4_;
   if(v == 0)
   {
      itemBN[lockCbf + 100] = _loc3_;
   }
   else if(v == 1)
   {
      itemBN[lockCbf + 100] = 1;
   }
   var _loc5_ = (lockC - 1) % 6;
   var _loc6_ = Math.floor((lockC - 1) / 6);
   tgSC3._x = _loc5_ * 35;
   tgSC3._y = _loc6_ * 35;
   textWindowOpen(33,_loc4_);
   lockerSet();
   bufL = false;
}
function itemMoveing(bn, i)
{
   var _loc3_ = LCspace();
   var _loc4_;
   if(i >= 6 && i <= 39)
   {
      if(LCtimes(i) != -1)
      {
         itemTimes[i + 100] += itemTimes[i];
         itemTimes[i] = 0;
         itemBN[bn] = 1;
      }
      else
      {
         itemTimes[i + 100] = itemTimes[i];
         itemTimes[i] = 0;
         itemBN[_loc3_] = itemBN[bn];
         itemBN[bn] = 1;
      }
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
      itemBN[_loc3_] = itemBN[bn];
      itemBN[bn] = 1;
   }
   else if(i >= 211 && i <= 215)
   {
      _loc4_ = i - 160;
      if(LCtimes(i) != -1)
      {
         itemTimes[_loc4_ + 100] += itemTimes[_loc4_];
         itemTimes[_loc4_] = 0;
         itemBN[bn] = 1;
      }
      else
      {
         itemTimes[_loc4_ + 100] = itemTimes[_loc4_];
         itemTimes[_loc4_] = 0;
         itemBN[_loc3_] = itemBN[bn];
         itemBN[bn] = 1;
      }
   }
   else
   {
      itemBN[_loc3_] = itemBN[bn];
      itemBN[bn] = 1;
   }
   damageCalculate(0,0,0);
   lockerSet();
}
function lockerSet()
{
   var _loc2_ = 1;
   var _loc3_;
   while(_loc2_ <= 36)
   {
      _loc3_ = itemBN[_loc2_ + 100];
      _root.storeMC.beltMC["no" + _loc2_].gotoAndStop(_loc3_);
      _loc2_ += 1;
   }
}
function LCspace()
{
   var _loc1_ = 1;
   while(_loc1_ <= 36)
   {
      if(itemBN[_loc1_ + 100] == 1 || itemBN[_loc1_ + 100] == undefined)
      {
         return _loc1_ + 100;
      }
      _loc1_ += 1;
   }
   return -1;
}
function LCtimes(no)
{
   var _loc2_ = 1;
   while(_loc2_ <= 36)
   {
      if(itemBN[_loc2_ + 100] == no)
      {
         return _loc2_ + 100;
      }
      _loc2_ += 1;
   }
   return -1;
}
function witchesTextPro()
{
   var _loc12_ = witchesPro();
   var _loc11_ = Math.floor(tTime / 60);
   var _loc7_ = tTime % 60;
   var _loc10_ = _loc11_ % 60;
   var _loc5_ = Math.floor(_loc11_ / 60);
   var _loc6_ = "";
   var _loc8_ = "";
   var _loc9_ = "";
   if(_loc7_ <= 9)
   {
      _loc6_ = ":0" + _loc7_;
   }
   else
   {
      _loc6_ = ":" + _loc7_;
   }
   if(_loc10_ <= 9)
   {
      _loc8_ = ":0" + _loc10_;
   }
   else
   {
      _loc8_ = ":" + _loc10_;
   }
   if(_loc5_ <= 9)
   {
      _loc9_ = "0" + _loc5_;
   }
   else
   {
      _loc9_ = _loc5_;
   }
   var _loc16_ = "\n\n      Total play time:  " + _loc9_ + _loc8_ + _loc6_;
   var _loc3_ = 0;
   var _loc1_ = 0;
   while(_loc1_ <= 23)
   {
      var _loc2_ = itemBN[_loc1_];
      if(item[_loc2_].buy != undefined)
      {
         var _loc4_ = sellCalculate(_loc2_,true);
         _loc3_ += _loc4_;
      }
      _loc1_ += 1;
   }
   _loc1_ = 1;
   while(_loc1_ <= 36)
   {
      _loc2_ = itemBN[_loc1_ + 100];
      if(item[_loc2_].buy != undefined)
      {
         _loc4_ = sellCalculateW(_loc2_,true);
         _loc3_ += _loc4_;
      }
      _loc1_ += 1;
   }
   var _loc15_ = "\n      Total assets:  " + (gold + _loc3_) + "ero ";
   var _loc14_ = "\n      Number of encounter with enemy:  " + tBattleCo;
   var _loc13_ = "\n      Number of fight with enemy:  " + (tBattleCo - tRunawayCo);
   TD[881] = TD[883] + TD[_loc12_] + "  ▼ " + _loc16_ + _loc15_ + _loc14_ + _loc13_;
}
function witchesPro()
{
   var _loc3_ = tBattleCo;
   var _loc4_ = tRunawayCo;
   var _loc1_ = Math.round((_loc3_ - _loc4_) / _loc3_ * 100);
   var _loc2_;
   if(_loc1_ >= 96)
   {
      _loc2_ = 900;
   }
   else if(_loc1_ >= 92)
   {
      _loc2_ = 901;
   }
   else if(_loc1_ >= 88)
   {
      _loc2_ = 902;
   }
   else if(_loc1_ >= 84)
   {
      _loc2_ = 903;
   }
   else if(_loc1_ >= 80)
   {
      _loc2_ = 904;
   }
   else if(_loc1_ >= 76)
   {
      _loc2_ = 905;
   }
   else if(_loc1_ >= 72)
   {
      _loc2_ = 906;
   }
   else if(_loc1_ >= 68)
   {
      _loc2_ = 907;
   }
   else if(_loc1_ >= 64)
   {
      _loc2_ = 908;
   }
   else if(_loc1_ >= 60)
   {
      _loc2_ = 909;
   }
   else if(_loc1_ >= 56)
   {
      _loc2_ = 910;
   }
   else if(_loc1_ >= 52)
   {
      _loc2_ = 911;
   }
   else if(_loc1_ >= 48)
   {
      _loc2_ = 912;
   }
   else if(_loc1_ >= 44)
   {
      _loc2_ = 913;
   }
   else if(_loc1_ >= 40)
   {
      _loc2_ = 914;
   }
   else if(_loc1_ >= 36)
   {
      _loc2_ = 915;
   }
   else if(_loc1_ >= 32)
   {
      _loc2_ = 916;
   }
   else if(_loc1_ >= 28)
   {
      _loc2_ = 917;
   }
   else if(_loc1_ >= 24)
   {
      _loc2_ = 918;
   }
   else if(_loc1_ >= 20)
   {
      _loc2_ = 919;
   }
   else if(_loc1_ >= 16)
   {
      _loc2_ = 920;
   }
   else if(_loc1_ >= 12)
   {
      _loc2_ = 921;
   }
   else if(_loc1_ >= 8)
   {
      _loc2_ = 922;
   }
   else if(_loc1_ >= 4)
   {
      _loc2_ = 923;
   }
   else
   {
      _loc2_ = 924;
   }
   return _loc2_;
}
function sellCalculateW(i, fg)
{
   var _loc3_ = 0;
   var _loc4_;
   var _loc5_;
   var _loc6_;
   var _loc7_;
   if(fg)
   {
      if(item[i].sell != undefined)
      {
         _loc4_ = item[i].sell;
      }
      else
      {
         _loc4_ = Math.round(item[i].buy / 3);
      }
      _loc5_ = 1;
      if(i >= 6 && i <= 39)
      {
         if(itemTimes[i + 100] == undefined)
         {
            _loc5_ = 1;
         }
         else
         {
            _loc5_ = itemTimes[i + 100];
         }
      }
      else if(i >= 211 && i <= 215)
      {
         _loc6_ = i - 160;
         if(itemTimes[_loc6_ + 100] == undefined)
         {
            _loc5_ = 1;
         }
         else
         {
            _loc5_ = itemTimes[_loc6_ + 100];
         }
      }
      else
      {
         _loc5_ = 1;
      }
      _loc7_ = 1;
      while(_loc7_ <= _loc5_)
      {
         _loc3_ += _loc4_;
         _loc7_ += 1;
      }
   }
   else if(item[i].sell != undefined)
   {
      _loc3_ = item[i].sell;
   }
   else
   {
      _loc3_ = Math.round(item[i].buy / 3);
   }
   return _loc3_;
}
function itemClockResetPro()
{
   var _loc2_ = new Array();
   var _loc3_ = new Array();
   var _loc1_ = 0;
   while(_loc1_ <= 200)
   {
      _loc2_[_loc1_] = itemBN[_loc1_];
      _loc3_[_loc1_] = itemTimes[_loc1_];
      _loc1_ += 1;
   }
   var _loc4_ = new Array();
   _loc1_ = 10;
   while(_loc1_ <= 95)
   {
      _loc4_[_loc1_] = SBCflg[_loc1_];
      _loc1_ += 1;
   }
   var _loc7_ = gold;
   var _loc6_ = setBeltNo;
   var _loc5_ = fukuLv;
   initialSet(1);
   initialSet(2);
   initialSet(3);
   _loc1_ = 0;
   while(_loc1_ <= 200)
   {
      itemBN[_loc1_] = _loc2_[_loc1_];
      itemTimes[_loc1_] = _loc3_[_loc1_];
      _loc1_ += 1;
   }
   _loc1_ = 10;
   while(_loc1_ <= 95)
   {
      SBCflg[_loc1_] = _loc4_[_loc1_];
      _loc1_ += 1;
   }
   gold = _loc7_;
   setBeltNo = _loc6_;
   fukuLv = _loc5_;
   capaInitialSet();
   enemyIntelSet();
   mapResetPro();
   textDataSet();
   bigEventCheck(1);
   movieNo = 1;
   SBflg = 2;
   textWindowClose();
}
function initialSet(val)
{
   var _loc2_;
   if(val == 0)
   {
      ngStartFlg = 0;
      sentakuNo = 0;
      gameLevelPro();
      moveFlg = false;
      mBuf0 = 0;
      mCo = 0;
      eneCo = 0;
      animeFlg = false;
      animeVal = new Object();
      animeVal.no = 0;
      animeVal.x = 0;
      animeVal.y = 0;
      maraPflg = false;
      maraC = 0;
      panelFlg = false;
      talkCo = 0;
      storeState = 0;
      stoC = bufS1 = 0;
      storeFlg = false;
      bufS = bufL = false;
      lockC = lockCbf = 1;
      worpFlg = false;
      bufW = 0;
      elvesFlg = false;
      bufSL = false;
      Sname = "";
      EloadFlg = false;
      ELbf1 = false;
      MsysBf = 0;
      voiceFlg = false;
      soundFlg = false;
      BFturn = 1;
      BFbuf1 = false;
      BFbuf2 = false;
      BFbuf3 = false;
      BFbuf4 = false;
      BFbufCo = 0;
      BFcommandWait = false;
      BFbougyoFlg = false;
      BFeneFinish = false;
      BFeneRunaway = false;
      BFinsertFlg = false;
      BFweponLv = 1;
      BFsetBN = 28;
      BFatkBase = 10;
      BFattackSort = 0;
      BFatkNo = 0;
      BFbufSou = false;
      BFcy = 0;
      BFcyBuf = 0;
      BFTKflg = false;
      BFcomFlg = new Array();
      _loc2_ = 0;
      while(_loc2_ <= 15)
      {
         BFcomFlg[_loc2_] = false;
         _loc2_ += 1;
      }
      BFitemUse = new Array();
      _loc2_ = 10;
      while(_loc2_ <= 79)
      {
         BFitemUse[_loc2_] = false;
         _loc2_ += 1;
      }
      BFitemSus = new Array();
      _loc2_ = 13;
      while(_loc2_ <= 34)
      {
         BFitemSus[_loc2_] = 0;
         _loc2_ += 1;
      }
      BFitemTxt = "";
      BFco = 0;
      BFcoE = 0;
      ectPmax = 100;
      defPmax = 0;
      atkPmax = 100;
      ectBuf = 0;
      defBuf = 0;
      atkBuf = 0;
      atkP = 0;
      defP = 0;
      ATK = 0;
      DEF = 0;
      zengiP = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
      mVolco = 20;
      sVolco = 100;
      musicPro();
      soundPro();
      capaInitialSet();
   }
   else if(val == 1)
   {
      mapX = 49;
      mapY = 52;
      mapNo = 0;
      gold = 0;
      watt = 100;
      ectP = 0;
      TEflg = new Array();
      _loc2_ = 0;
      while(_loc2_ <= 1000)
      {
         TEflg[_loc2_] = true;
         _loc2_ += 1;
      }
      TElv = new Array();
      _loc2_ = 0;
      while(_loc2_ <= 10)
      {
         TElv[_loc2_] = 0;
         _loc2_ += 1;
      }
      BTEflg = new Array();
      _loc2_ = 0;
      while(_loc2_ <= 20)
      {
         BTEflg[_loc2_] = false;
         _loc2_ += 1;
      }
      itemBN = new Array(3,4,6,1,106,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
      itemTimes = new Array();
      _loc2_ = 6;
      while(_loc2_ <= 200)
      {
         itemTimes[_loc2_] = 0;
         _loc2_ += 1;
      }
      itemTimes[6] = 3;
      setBeltNo = 4;
      fukuLv = 106;
      capaInitialSet();
      mararaFlg = new Array(false,false,false,false,false,false,false,false,false,false);
      SBCflg = new Array();
      SBCflg[10] = false;
      SBCflg[11] = false;
      SBCflg[12] = false;
      SBCflg[18] = false;
      SBCflg[20] = false;
      SBCflg[21] = false;
      SBCflg[24] = false;
      SBCflg[27] = false;
      SBCflg[30] = false;
      SBCflg[31] = false;
      SBCflg[33] = false;
      SBCflg[35] = false;
      SBCflg[38] = false;
      SBCflg[40] = false;
      SBCflg[43] = false;
      SBCflg[45] = false;
      SBCflg[47] = false;
      SBCflg[50] = false;
      SBCflg[51] = false;
      SBCflg[54] = false;
      SBCflg[57] = false;
      SBCflg[60] = false;
      SBCflg[70] = false;
      SBCflg[90] = false;
      SBCflg[95] = false;
      loadingTest = true;
   }
   else if(val == 2)
   {
      keyWaitFlg = false;
      gameLv = 0;
      speed = 1;
      pHo = 0;
      pValx = new Array(-1,0,1,0);
      pValy = new Array(0,-1,0,1);
      miniEV = new Object();
      miniEV.flg = false;
      miniEV.mapNo = 0;
      miniEV.mx = 0;
      miniEV.my = 0;
      miniEV.mvx = 0;
      miniEV.mvy = 0;
      miniEV.no = 0;
      miniEV.ho = -1;
      miniEV.enemyNo = 0;
      messBuf = "";
      messageFlg = false;
      beltC = 0;
      bufC1 = 0;
      bufC2 = 0;
      bufC3 = 0;
      bufSou = false;
      bufP = false;
      modeRflg = false;
      SBcursole = 1;
      SBBno = new Array(1,2,3,6,8,12,15,26,40,43,53,54,55);
      SBback = 2;
      SBflg = 0;
      SBfukuBf = 101;
      SBsetBeltNoBf = 28;
      storeNo = 0;
      storeTalk = new Array(0,0,120,128,135,128,300,135,135,128,300,300);
      worpX = new Array(0,47,11,14,96,56,58,88,50,64);
      worpY = new Array(0,48,6,72,95,75,32,29,94,3);
      monoC1 = new Array(390,396,401,406,411,415,419,423,423);
      monoC2 = new Array(441,441,441,441,445,448,455,457,457);
      battery = new Array(100,120,140,160,180,200,200,200,200);
      BufLv = 0;
      eNo = 0;
      eneKind = new Array(11,12,21,31,35,38,43,45,47,51,54,57);
      BFstartFlg = false;
      BFpriFinish = false;
      BFpriRunaway = false;
      BFy = new Array(0,7,10,4,8,3);
      BFtensi = false;
      BFkiseki = false;
      ERRORflg = false;
      enemy = new Array();
      ttCo = 0;
      movieNo = 0;
      banerClickFlg = false;
      verT = "ver.0.9.51";
      verS = "ver.1.5.21";
      winAlpha = true;
   }
}
function storeSet()
{
   store = new Array();
   store[2] = new Object();
   store[2].sName = "Grocery store of Spring village ";
   store[2].article = new Array();
   store[2].article[0] = new Array(6,16,14,13,27,51,103,104,105);
   store[2].article[1] = new Array(6,16,13,62,51,46,121,122,120);
   store[2].article[2] = new Array(7,16,13,76,51,46,123,124,129);
   store[2].article[3] = new Array(7,16,13,64,51,46,128,131,132);
   store[2].article[4] = new Array(7,16,13,11,66,51,133,135,136);
   store[2].article[5] = new Array(7,16,13,11,68,77,141,142,143);
   store[2].article[6] = new Array(7,16,13,11,68,77,141,142,143);
   store[2].article[7] = new Array(7,16,13,11,68,77,141,142,143);
   store[2].article[8] = new Array(206,206,206,206,206,206,1,1,17);
   store[3] = new Object();
   store[3].sName = "Tool shop of street ";
   store[3].article = new Array(6,57,45,41,43,31,106,107,109);
   store[4] = new Object();
   store[4].sName = "Grocery store of Northwest fishing village ";
   store[4].article = new Array(6,19,25,75,80,81,110,118,119);
   store[5] = new Object();
   store[5].sName = "Pants shop of desert ";
   store[5].article = new Array(108,111,112,114,115,117,80,81,6);
   store[7] = new Object();
   store[7].sName = "Grocery store of Volcano village ";
   store[7].article = new Array(6,15,10,28,23,62,121,122,120);
   store[8] = new Object();
   store[8].sName = "Grocery store of Southeastern port ";
   store[8].article = new Array(7,21,32,29,24,76,123,124,129);
   store[9] = new Object();
   store[9].sName = "Grocery store of castle town ";
   store[9].article = new Array();
   store[9].article[0] = new Array(102,102,102,6,6,6,7,7,7);
   store[9].article[1] = new Array(7,68,77,84,83,32,141,142,143);
   store[6] = new Object();
   store[6].sName = "Tool shop of secret ";
   store[6].article = new Array();
   store[6].article[0] = new Array(201,1,1,1,1,1,130,1,1);
   store[6].article[1] = new Array(201,1,1,1,1,1,130,1,1);
   store[6].article[2] = new Array(201,1,33,1,1,1,130,137,1);
   store[6].article[3] = new Array(201,17,33,1,134,1,130,137,138);
   store[6].article[4] = new Array(201,17,33,59,134,130,137,138,139);
   store[6].article[5] = new Array(201,17,33,34,60,134,138,139,140);
   store[6].article[6] = new Array(201,17,33,34,60,134,138,139,140);
   store[6].article[7] = new Array(201,17,33,34,60,134,138,139,140);
   store[10] = new Object();
   store[10].sName = "Grocery store of Satan\'s world ";
   store[10].article = new Array(211,212,213,214,215,51,8,12,46);
   store[11] = new Object();
   store[11].sName = "Main grocery store of Satan\'s world ";
   store[11].article = new Array(6,7,8,10,11,12,20,36,52);
}
