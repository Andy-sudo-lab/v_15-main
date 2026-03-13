function dataCheck()
{
   if(!keyFlg1)
   {
      return undefined;
   }
   var _loc2_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
   var _loc3_ = mapX + pValx[pHo];
   var _loc4_ = mapY + pValy[pHo];
   if(_loc2_ == 5 && itemBN[setBeltNo] == 1)
   {
      if(BCtimes(102) == -1)
      {
         if(beltCheck(true,102))
         {
            textWindowOpen(1,102);
         }
         else
         {
            textWindowOpen(0,102);
         }
      }
   }
   var _loc5_;
   switch(mapNo)
   {
      case 0:
         if(!mararaFlg[1] && _loc2_ == 50 && _loc3_ == 46 && _loc4_ == 48)
         {
            textWindowOpen(20,0);
            mararaFlg[1] = true;
         }
         else if(mararaFlg[1] && _loc2_ == 50 && _loc3_ == 46 && _loc4_ == 48)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(mapX == 49 && mapY == 46 && pHo == 1)
         {
            textWindowOpen(10,7);
            storeNo = 2;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 47 && mapY == 46 && pHo == 1)
         {
            textWindowOpen(10,53);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         else if(_loc2_ == 74 && _loc3_ == 52 && _loc4_ == 46)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,monoC1[7]);
            }
            else if(BTEflg[6])
            {
               textWindowOpen(11,monoC1[6]);
            }
            else if(BTEflg[5])
            {
               textWindowOpen(11,monoC1[5]);
            }
            else
            {
               textWindowOpen(11,monoC1[gameLv]);
            }
         }
         else if(_loc2_ == 72 && _loc3_ == 56 && _loc4_ == 48)
         {
            if(BTEflg[6])
            {
               textWindowOpen(11,106);
            }
            else if(BTEflg[5])
            {
               textWindowOpen(11,104);
            }
            else
            {
               textWindowOpen(11,102);
            }
         }
         else if(_loc2_ == 65 && _loc3_ == 57 && _loc4_ == 48)
         {
            textWindowOpen(11,108);
         }
         else if(_loc2_ == 73 && _loc3_ == 57 && _loc4_ == 48)
         {
            textWindowOpen(11,110);
         }
         else if(_loc2_ == 71 && _loc3_ == 45 && _loc4_ == 45)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,116);
            }
            else if(BTEflg[5])
            {
               textWindowOpen(11,622);
            }
            else if(TEflg[13])
            {
               textWindowOpen(11,112);
            }
            else
            {
               textWindowOpen(11,114);
            }
         }
         else if(_loc2_ == 17 && mapX == 51 && mapY == 51 && pHo == 0)
         {
            textWindowOpen(30,13,22,5,4);
         }
         else if(_loc2_ == 27 && _loc3_ == 30 && _loc4_ == 45)
         {
            textWindowOpen(10,15);
         }
         else if(mapX == 28 && mapY == 33 && pHo == 1)
         {
            textWindowOpen(10,9);
            storeNo = 3;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(_loc2_ == 74 && _loc3_ == 35 && _loc4_ == 19)
         {
            textWindowOpen(11,145);
         }
         else if(_loc2_ == 74 && _loc3_ == 36 && _loc4_ == 19)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,143);
            }
            else if(TEflg[15])
            {
               textWindowOpen(11,148);
            }
            else
            {
               textWindowOpen(11,151);
            }
         }
         else if(TEflg[28] && mapX == 46 && mapY == 58)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(10,20);
               TEflg[28] = false;
               bigEventCheck(1);
            }
            else
            {
               textWindowOpen(0,190);
            }
         }
         if(!BTEflg[1])
         {
            if(_loc2_ == 74 && _loc3_ == 24 && _loc4_ == 4)
            {
               textWindowOpen(11,153);
            }
            else if(_loc2_ == 72 && _loc3_ == 21 && _loc4_ == 10)
            {
               textWindowOpen(11,158);
            }
            else if(_loc2_ == 71 && _loc3_ == 26 && _loc4_ == 11)
            {
               textWindowOpen(11,164);
            }
            else if(_loc2_ == 65 && _loc3_ == 22 && _loc4_ == 6)
            {
               textWindowOpen(11,175);
            }
            else if(_loc2_ == 72 && _loc3_ == 17 && _loc4_ == 14)
            {
               textWindowOpen(11,170);
            }
         }
         else
         {
            if(_loc2_ == 74 && _loc3_ == 25 && _loc4_ == 8)
            {
               textWindowOpen(11,156);
            }
            else if(_loc2_ == 71 && _loc3_ == 7 && _loc4_ == 4)
            {
               if(BTEflg[7])
               {
                  textWindowOpen(11,622);
               }
               else
               {
                  textWindowOpen(11,167);
               }
            }
            else if(_loc2_ == 65 && _loc3_ == 22 && _loc4_ == 6)
            {
               textWindowOpen(11,175);
            }
            else if(_loc2_ == 72 && _loc3_ == 22 && _loc4_ == 8)
            {
               if(!BTEflg[6])
               {
                  textWindowOpen(11,172);
               }
               else
               {
                  textWindowOpen(11,190);
               }
            }
            else if(_loc2_ == 64 && _loc3_ == 23 && _loc4_ == 10)
            {
               textWindowOpen(11,177);
            }
            else if(_loc2_ == 64 && _loc3_ == 25 && _loc4_ == 10)
            {
               textWindowOpen(11,177);
            }
            else if(_loc2_ == 64 && _loc3_ == 23 && _loc4_ == 8)
            {
               textWindowOpen(11,177);
            }
            if(TEflg[40] && _loc2_ == 72 && _loc3_ == 20 && _loc4_ == 9)
            {
               textWindowOpen(11,160);
            }
            else if(!TEflg[40] && _loc2_ == 72 && _loc3_ == 20 && _loc4_ == 9)
            {
               textWindowOpen(11,162);
            }
         }
         if(mapX == 24 && mapY == 9 && pHo == 1)
         {
            textWindowOpen(10,16);
            storeNo = 4;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 26 && mapY == 9 && pHo == 1)
         {
            textWindowOpen(10,54);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         else if(!mararaFlg[2] && _loc2_ == 50 && _loc3_ == 10 && _loc4_ == 6)
         {
            textWindowOpen(20,1);
            mararaFlg[2] = true;
         }
         else if(mararaFlg[2] && _loc2_ == 50 && _loc3_ == 10 && _loc4_ == 6)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(mapX == 18 && mapY == 40 && pHo == 0)
         {
            textWindowOpen(30,11,1,11,9);
         }
         else if(mapX == 15 && mapY == 40 && pHo == 1)
         {
            textWindowOpen(10,17);
            storeNo = 5;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(_loc2_ == 17 && mapX == 19 && mapY == 48 && pHo == 0)
         {
            textWindowOpen(30,13,20,5,3);
            TEflg[0] = false;
            bigEventCheck(1);
         }
         else if(mapX == 19 && mapY == 59 && pHo == 1)
         {
            textWindowOpen(10,18);
            storeNo = 6;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(!mararaFlg[3] && _loc2_ == 50 && _loc3_ == 13 && _loc4_ == 72)
         {
            textWindowOpen(20,2);
            mararaFlg[3] = true;
         }
         else if(mararaFlg[3] && _loc2_ == 50 && _loc3_ == 13 && _loc4_ == 72)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(mapX == 17 && mapY == 75 && pHo == 0)
         {
            textWindowOpen(10,19);
            storeNo = 7;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 15 && mapY == 77 && pHo == 1)
         {
            textWindowOpen(10,55);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         if(!BTEflg[2])
         {
            if(TEflg[72] && _loc2_ == 71 && _loc3_ == 11 && _loc4_ == 73)
            {
               textWindowOpen(11,220);
               TEflg[72] = false;
               bigEventCheck(1);
            }
            else if(_loc2_ == 71 && _loc3_ == 12 && _loc4_ == 73)
            {
               textWindowOpen(10,223);
            }
            else if(_loc2_ == 74 && _loc3_ == 19 && _loc4_ == 72)
            {
               textWindowOpen(11,228);
            }
            else if(_loc2_ == 72 && _loc3_ == 24 && _loc4_ == 80)
            {
               textWindowOpen(11,242);
            }
            else if(_loc2_ == 73 && _loc3_ == 14 && _loc4_ == 79)
            {
               textWindowOpen(11,235);
            }
         }
         else if(_loc2_ == 71 && _loc3_ == 12 && _loc4_ == 73)
         {
            textWindowOpen(11,225);
         }
         else if(_loc2_ == 74 && _loc3_ == 16 && _loc4_ == 78)
         {
            textWindowOpen(11,231);
         }
         else if(_loc2_ == 72 && _loc3_ == 19 && _loc4_ == 80)
         {
            textWindowOpen(11,244);
         }
         else if(_loc2_ == 73 && _loc3_ == 14 && _loc4_ == 79)
         {
            textWindowOpen(11,238);
         }
         else if(_loc2_ == 64 && _loc3_ == 14 && _loc4_ == 81)
         {
            if(!BTEflg[7])
            {
               textWindowOpen(11,248);
            }
            else
            {
               textWindowOpen(11,252);
            }
         }
         else if(_loc2_ == 64 && _loc3_ == 16 && _loc4_ == 81)
         {
            if(!BTEflg[7])
            {
               textWindowOpen(11,250);
            }
            else
            {
               textWindowOpen(11,252);
            }
         }
         if(TEflg[80] && _loc2_ == 70 && _loc3_ == 12 && _loc4_ == 88)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 24;
            textWindowOpen(11,268);
         }
         else if(TEflg[81] && _loc2_ == 70 && _loc3_ == 25 && _loc4_ == 91)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 24;
            textWindowOpen(11,272);
         }
         else if(TEflg[82] && _loc2_ == 70 && _loc3_ == 37 && _loc4_ == 94)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 24;
            textWindowOpen(11,276);
         }
         else if(TEflg[74] && _loc2_ == 69 && _loc3_ == 37 && _loc4_ == 81)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 27;
            textWindowOpen(11,278);
         }
         else if(mapX == 37 && mapY == 81 && pHo == 1)
         {
            textWindowOpen(30,23,2,23,23);
         }
         else if(mapX == 27 && mapY == 72 && pHo == 2)
         {
            textWindowOpen(30,23,2,5,7);
         }
         else if(!mararaFlg[8] && _loc2_ == 50 && _loc3_ == 49 && _loc4_ == 94)
         {
            textWindowOpen(20,7);
            mararaFlg[8] = true;
         }
         else if(mararaFlg[8] && _loc2_ == 50 && _loc3_ == 49 && _loc4_ == 94)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(mapX == 50 && mapY == 91 && pHo == 0)
         {
            TEflg[244] = false;
            textWindowOpen(30,47,31,23,13);
         }
         else if(!mararaFlg[4] && _loc2_ == 50 && _loc3_ == 95 && _loc4_ == 95)
         {
            textWindowOpen(20,3);
            mararaFlg[4] = true;
         }
         else if(mararaFlg[4] && _loc2_ == 50 && _loc3_ == 95 && _loc4_ == 95)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(_loc2_ == 27 && _loc3_ == 71 && _loc4_ == 82)
         {
            textWindowOpen(10,32);
         }
         else if(mapX == 68 && mapY == 92 && pHo == 1)
         {
            textWindowOpen(10,34);
            storeNo = 8;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 69 && mapY == 92 && pHo == 1)
         {
            textWindowOpen(10,56);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         if(!BTEflg[3])
         {
            if(_loc2_ == 71 && _loc3_ == 60 && _loc4_ == 85)
            {
               if(TElv[1] == 0 || TElv[1] == 1)
               {
                  textWindowOpen(11,350);
                  TElv[1] = 1;
               }
               else if(TElv[1] == 2 || TElv[1] == 3)
               {
                  textWindowOpen(11,353);
                  TElv[1] = 3;
               }
               else if(TElv[1] == 4)
               {
                  textWindowOpen(11,356);
               }
               else if(TElv[1] == 5 || TElv[1] == 6)
               {
                  textWindowOpen(11,358);
               }
            }
            else if(_loc2_ == 72 && _loc3_ == 82 && _loc4_ == 91)
            {
               textWindowOpen(11,332);
            }
            else if(_loc2_ == 72 && _loc3_ == 80 && _loc4_ == 92)
            {
               textWindowOpen(11,337);
            }
            else if(_loc2_ == 72 && _loc3_ == 71 && _loc4_ == 91)
            {
               textWindowOpen(11,342);
            }
         }
         else if(_loc2_ == 71 && _loc3_ == 60 && _loc4_ == 85)
         {
            if(BTEflg[5])
            {
               textWindowOpen(11,622);
            }
            else
            {
               textWindowOpen(11,360);
            }
         }
         else if(_loc2_ == 73 && _loc3_ == 66 && _loc4_ == 91)
         {
            if(BTEflg[6])
            {
               textWindowOpen(11,385);
            }
            else
            {
               textWindowOpen(11,346);
            }
         }
         else if(_loc2_ == 73 && _loc3_ == 70 && _loc4_ == 91)
         {
            if(BTEflg[6])
            {
               textWindowOpen(11,330);
            }
            else
            {
               textWindowOpen(11,327);
            }
         }
         else if(_loc2_ == 72 && _loc3_ == 82 && _loc4_ == 91)
         {
            textWindowOpen(11,335);
         }
         else if(_loc2_ == 72 && _loc3_ == 80 && _loc4_ == 92)
         {
            textWindowOpen(11,340);
         }
         else if(_loc2_ == 72 && _loc3_ == 71 && _loc4_ == 91)
         {
            textWindowOpen(11,344);
         }
         else if(_loc2_ == 73 && _loc3_ == 82 && _loc4_ == 90)
         {
            textWindowOpen(11,323);
         }
         else if(_loc2_ == 73 && _loc3_ == 79 && _loc4_ == 92)
         {
            textWindowOpen(11,325);
         }
         else if(_loc2_ == 65 && _loc3_ == 67 && _loc4_ == 91)
         {
            textWindowOpen(11,320);
         }
         if(TEflg[130] && TElv[1] == 1 && mapX == 94 && mapY == 95 && pHo == 0)
         {
            if(beltCheck(true,202))
            {
               textWindowOpen(1,202);
               TEflg[130] = false;
               TElv[1] = 2;
            }
            else
            {
               textWindowOpen(0,202);
            }
         }
         else if(TElv[1] >= 3 && mapX == 87 && mapY == 79 && pHo == 1)
         {
            textWindowOpen(30,29,10,3,5);
         }
         else if(TEflg[131] && TElv[1] == 4 && mapX == 66 && mapY == 86)
         {
            if(beltCheck(true,203))
            {
               textWindowOpen(1,203);
               TEflg[131] = false;
               TElv[1] = 5;
            }
            else
            {
               textWindowOpen(0,203);
            }
         }
         else if(mapX == 93 && mapY == 49 && pHo == 1)
         {
            textWindowOpen(30,27,3,8,23);
         }
         else if(!mararaFlg[5] && _loc2_ == 50 && _loc3_ == 55 && _loc4_ == 75)
         {
            textWindowOpen(20,4);
            mararaFlg[5] = true;
         }
         else if(mararaFlg[5] && _loc2_ == 50 && _loc3_ == 55 && _loc4_ == 75)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(_loc2_ == 71 && _loc3_ == 63 && _loc4_ == 73)
         {
            if(TEflg[160])
            {
               TEflg[160] = false;
               map[0][62][48] = 1;
               textWindowOpen(11,440);
            }
            else
            {
               textWindowOpen(11,monoC2[gameLv]);
            }
         }
         else if(_loc2_ == 71 && _loc3_ == 64 && _loc4_ == 73)
         {
            if(BTEflg[6])
            {
               textWindowOpen(11,monoC2[6]);
            }
            else if(BTEflg[5])
            {
               if(TEflg[244])
               {
                  textWindowOpen(11,monoC2[5]);
               }
               else
               {
                  textWindowOpen(11,453);
               }
            }
            else if(BTEflg[4])
            {
               textWindowOpen(11,monoC2[4]);
            }
            else
            {
               textWindowOpen(11,monoC2[gameLv]);
            }
         }
         else if(!TEflg[160] && TEflg[161] && mapX == 48 && mapY == 62)
         {
            if(beltCheck(true,205))
            {
               textWindowOpen(1,205);
               TEflg[161] = false;
               BTEflg[4] = true;
               bigEventCheck(1);
            }
            else
            {
               textWindowOpen(0,205);
            }
         }
         else if(_loc2_ == 30 && _loc3_ == 73 && _loc4_ == 71)
         {
            textWindowOpen(11,550);
         }
         else if(mapX == 42 && mapY == 71 && pHo == 0)
         {
            textWindowOpen(30,13,11,5,4);
         }
         else if(mapX == 80 && mapY == 59 && pHo == 0)
         {
            textWindowOpen(30,13,12,5,3);
         }
         else if(mapX == 88 && mapY == 51 && pHo == 0)
         {
            textWindowOpen(30,29,13,5,4);
         }
         else if(_loc2_ == 17 && mapX == 93 && mapY == 37 && pHo == 0)
         {
            textWindowOpen(30,13,21,5,3);
            TEflg[1] = false;
            bigEventCheck(1);
         }
         else if(!mararaFlg[6] && _loc2_ == 50 && _loc3_ == 57 && _loc4_ == 32)
         {
            textWindowOpen(20,5);
            mararaFlg[6] = true;
         }
         else if(mararaFlg[6] && _loc2_ == 50 && _loc3_ == 57 && _loc4_ == 32)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
         }
         else if(mapX == 63 && mapY == 40 && pHo == 1)
         {
            textWindowOpen(10,39);
            storeNo = 9;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 61 && mapY == 40 && pHo == 1)
         {
            textWindowOpen(10,57);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         else if(_loc2_ == 20 && _loc3_ == 67 && _loc4_ == 52)
         {
            textWindowOpen(30,36,14,5,3);
         }
         else if(mapX == 55 && mapY == 41 && pHo == 0)
         {
            textWindowOpen(30,38,15,5,3);
         }
         else if(mapX == 49 && mapY == 41 && pHo == 0)
         {
            textWindowOpen(30,13,16,5,4);
         }
         else if(mapX == 50 && mapY == 39 && pHo == 0)
         {
            textWindowOpen(30,29,17,5,5);
         }
         if(!BTEflg[5])
         {
            if(_loc2_ == 74 && _loc3_ == 66 && _loc4_ == 45)
            {
               textWindowOpen(11,600);
            }
            else if(_loc2_ == 72 && _loc3_ == 66 && _loc4_ == 42)
            {
               textWindowOpen(11,607);
            }
            else if(_loc2_ == 71 && _loc3_ == 46 && _loc4_ == 38)
            {
               textWindowOpen(11,617);
               TEflg[190] = false;
               bigEventCheck(1);
            }
            else if(_loc2_ == 71 && _loc3_ == 47 && _loc4_ == 38)
            {
               textWindowOpen(11,620);
            }
            else if(_loc2_ == 67 && _loc3_ == 54 && _loc4_ == 38)
            {
               textWindowOpen(11,613);
            }
            else if(_loc2_ == 67 && _loc3_ == 53 && _loc4_ == 38)
            {
               textWindowOpen(11,615);
            }
            else if(_loc2_ == 68 && _loc3_ == 52 && _loc4_ == 29)
            {
               if(!TEflg[196])
               {
                  textWindowOpen(11,660);
               }
               else
               {
                  textWindowOpen(11,810);
               }
            }
            else if(_loc2_ == 68 && _loc3_ == 55 && _loc4_ == 29)
            {
               if(!TEflg[196])
               {
                  textWindowOpen(11,660);
               }
               else
               {
                  textWindowOpen(11,812);
               }
            }
            else if(TEflg[196] && map[0][32][40] == 67 && mapX == 41 && mapY == 33)
            {
               textWindowOpen(11,624);
            }
            else if(_loc2_ == 67 && _loc3_ == 40 && _loc4_ == 32)
            {
               if(!TEflg[173])
               {
                  TEflg[196] = false;
                  TEflg[2] = false;
                  bigEventCheck(1);
                  if(TEflg[221])
                  {
                     textWindowOpen(11,628);
                  }
                  else
                  {
                     textWindowOpen(11,629);
                  }
               }
               else
               {
                  textWindowOpen(11,800);
               }
            }
            else if((mapX == 53 || mapX == 54) && mapY == 26 && pHo == 1)
            {
               textWindowOpen(10,67);
            }
         }
         else if((mapX == 53 || mapX == 54) && mapY == 26 && pHo == 1)
         {
            textWindowOpen(30,42,4,13,23);
         }
         else if(_loc2_ == 74 && _loc3_ == 58 && _loc4_ == 38)
         {
            textWindowOpen(11,604);
         }
         else if(_loc2_ == 72 && _loc3_ == 60 && _loc4_ == 38)
         {
            textWindowOpen(11,610);
         }
         else if(_loc2_ == 71 && _loc3_ == 47 && _loc4_ == 38)
         {
            textWindowOpen(11,622);
         }
         else if(_loc2_ == 67 && _loc3_ == 56 && _loc4_ == 38)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,636);
            }
            else
            {
               textWindowOpen(11,633);
            }
         }
         if(!TEflg[337])
         {
            if(_loc2_ == 67 && _loc3_ == 52 && _loc4_ == 34)
            {
               TEflg[348] = false;
               textWindowOpen(11,1300);
            }
            else if(_loc2_ == 71 && _loc3_ == 52 && _loc4_ == 33)
            {
               TEflg[349] = false;
               textWindowOpen(11,1307);
            }
            else if(_loc2_ == 74 && _loc3_ == 52 && _loc4_ == 32)
            {
               TEflg[350] = false;
               textWindowOpen(11,1313);
            }
            else if(_loc2_ == 62 && _loc3_ == 52 && _loc4_ == 30)
            {
               TEflg[351] = false;
               textWindowOpen(11,1320);
            }
            else if(_loc2_ == 77 && _loc3_ == 53 && _loc4_ == 29)
            {
               TEflg[352] = false;
               textWindowOpen(11,1326);
            }
         }
         if(_loc2_ == 74 && _loc3_ == 67 && _loc4_ == 49)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,657);
               break;
            }
            if(TEflg[194])
            {
               textWindowOpen(11,649);
               break;
            }
            textWindowOpen(11,650);
            break;
         }
         if(!mararaFlg[7] && _loc2_ == 50 && _loc3_ == 87 && _loc4_ == 29)
         {
            textWindowOpen(20,6);
            mararaFlg[7] = true;
            break;
         }
         if(mararaFlg[7] && _loc2_ == 50 && _loc3_ == 87 && _loc4_ == 29)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
            break;
         }
         if(TEflg[270] && mapX == 83 && mapY == 31 && pHo == 0)
         {
            if(beltCheck(true,208))
            {
               textWindowOpen(1,208);
               TEflg[270] = false;
               break;
            }
            textWindowOpen(0,208);
            break;
         }
         if(!mararaFlg[9] && _loc2_ == 50 && _loc3_ == 63 && _loc4_ == 3)
         {
            textWindowOpen(20,8);
            mararaFlg[9] = true;
            break;
         }
         if(mararaFlg[9] && _loc2_ == 50 && _loc3_ == 63 && _loc4_ == 3)
         {
            textWindowOpen(10,88);
            maraPflg = true;
            _root.mararaPMC.play();
            break;
         }
         if(TEflg[272] && !TEflg[271] && mapX == 84 && mapY == 18)
         {
            if(beltCheck(true,204))
            {
               textWindowOpen(1,204);
               TEflg[272] = false;
               break;
            }
            textWindowOpen(0,204);
            break;
         }
         if(mapX == 66 && mapY == 5 && pHo == 1)
         {
            textWindowOpen(30,47,6,22,23);
         }
         break;
      case 1:
         if(mapX == 11 && mapY == 9 && pHo == 2)
         {
            textWindowOpen(30,12,0,18,40);
         }
         if(!BTEflg[1])
         {
            if(_loc2_ == 76 && _loc3_ == 19 && _loc4_ == 4)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 20;
               textWindowOpen(11,256);
               break;
            }
            if(TEflg[37] && _loc2_ == 63 && _loc3_ == 19 && _loc4_ == 12)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 18;
               textWindowOpen(11,260);
               break;
            }
            if(_loc2_ == 63 && _loc3_ == 18 && _loc4_ == 8)
            {
               textWindowOpen(11,262);
               break;
            }
            if(_loc2_ == 63 && _loc3_ == 20 && _loc4_ == 8)
            {
               textWindowOpen(11,264);
            }
         }
         break;
      case 2:
         if(mapX == 23 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,24,0,37,81);
         }
         else if(mapX == 5 && mapY == 7 && pHo == 0)
         {
            textWindowOpen(30,24,0,27,72);
         }
         if(!BTEflg[2])
         {
            if(_loc2_ == 76 && _loc3_ == 13 && _loc4_ == 4)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 30;
               textWindowOpen(11,290);
               break;
            }
            if(_loc2_ == 70 && _loc3_ == 23 && _loc4_ == 19)
            {
               if(map[2][17][23] == 40)
               {
                  textWindowOpen(11,282);
                  break;
               }
               textWindowOpen(11,280);
               break;
            }
            if(TEflg[88] && _loc2_ == 69 && _loc3_ == 13 && _loc4_ == 8)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 27;
               textWindowOpen(11,284);
            }
         }
         break;
      case 3:
         if(mapX == 8 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,28,0,93,49);
         }
         else if(_loc2_ == 73 && _loc3_ == 3 && _loc4_ == 14)
         {
            textWindowOpen(11,310);
         }
         else if(_loc2_ == 73 && _loc3_ == 23 && _loc4_ == 11)
         {
            textWindowOpen(11,313);
         }
         else if(_loc2_ == 73 && _loc3_ == 4 && _loc4_ == 5)
         {
            textWindowOpen(11,316);
         }
         else if(_loc2_ == 65 && _loc3_ == 7 && _loc4_ == 5)
         {
            textWindowOpen(11,320);
         }
         if(!BTEflg[3])
         {
            if(_loc2_ == 76 && _loc3_ == 18 && _loc4_ == 6)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 40;
               textWindowOpen(11,380);
            }
         }
         break;
      case 4:
         if(_loc2_ == 75 && _loc3_ == 21 && _loc4_ == 8)
         {
            textWindowOpen(11,660);
         }
         if(!BTEflg[5])
         {
            if(_loc2_ == 76 && _loc3_ == 5 && _loc4_ == 5)
            {
               BFpriRunaway = true;
               miniEV.enemyNo = 50;
               textWindowOpen(11,672);
            }
         }
         else if(!BTEflg[7])
         {
            if(_loc2_ == 77 && _loc3_ == 5 && _loc4_ == 5)
            {
               textWindowOpen(11,675);
            }
            else if(_loc2_ == 62 && _loc3_ == 6 && _loc4_ == 3)
            {
               textWindowOpen(11,525);
            }
         }
         else if(_loc2_ == 77 && _loc3_ == 5 && _loc4_ == 5)
         {
            textWindowOpen(11,677);
         }
         else if(_loc2_ == 62 && _loc3_ == 6 && _loc4_ == 3)
         {
            textWindowOpen(11,529);
         }
         if(mapX == 13 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,43,0,53,26);
            break;
         }
         if(mapX == 3 && mapY == 22 && pHo == 3)
         {
            textWindowOpen(30,44,5,3,23,1);
            break;
         }
         if(mapX == 21 && mapY == 15 && pHo == 3)
         {
            textWindowOpen(30,44,5,23,11,1);
            break;
         }
         if(mapX == 15 && mapY == 6 && pHo == 3)
         {
            textWindowOpen(30,44,5,23,3);
         }
         break;
      case 5:
         if(mapX == 3 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,45,4,3,22,1);
            break;
         }
         if(mapX == 23 && mapY == 11)
         {
            textWindowOpen(30,45,4,21,16,1);
            break;
         }
         if(mapX == 23 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,4,15,6);
         }
         break;
      case 6:
         if(mapX == 22 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,48,0,66,5);
         }
         else if(mapX == 4 && mapY == 9 && pHo == 0)
         {
            if(!TEflg[244])
            {
               textWindowOpen(30,23,34,23,3);
            }
            else
            {
               textWindowOpen(10,65);
            }
         }
         if(!BTEflg[6])
         {
            if(_loc2_ == 76 && _loc3_ == 3 && _loc4_ == 3)
            {
               SBflg = 2;
               BFpriRunaway = true;
               miniEV.enemyNo = 60;
               textWindowOpen(11,685);
            }
            break;
         }
         if(!BTEflg[7])
         {
            if(_loc2_ == 76 && _loc3_ == 3 && _loc4_ == 3)
            {
               SBflg = 2;
               BFpriRunaway = true;
               miniEV.enemyNo = 90;
               textWindowOpen(11,698);
            }
            break;
         }
         if(_loc2_ == 71 && _loc3_ == 6 && _loc4_ == 5)
         {
            textWindowOpen(11,457);
         }
         break;
      case 10:
         if(mapX == 3 && mapY == 5 && pHo == 3)
         {
            textWindowOpen(30,30,0,87,79);
            break;
         }
         if(map[10][3][4] == 73 && mapX == 4 && mapY == 5 && pHo == 1)
         {
            textWindowOpen(11,363);
            TElv[1] = 4;
         }
         break;
      case 11:
         if(mapX == 5 && mapY == 4 && pHo == 2)
         {
            textWindowOpen(30,14,0,42,71);
            break;
         }
         if(_loc2_ == 62 && _loc3_ == 3 && _loc4_ == 4)
         {
            TEflg[173] = false;
            if(TEflg[188])
            {
               textWindowOpen(11,500);
               break;
            }
            textWindowOpen(11,505);
         }
         break;
      case 12:
         if(mapX == 5 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,14,0,80,59);
         }
         if(!BTEflg[5])
         {
            if(_loc2_ == 74 && _loc3_ == 3 && _loc4_ == 5)
            {
               textWindowOpen(11,560);
               break;
            }
            if(TEflg[182] && _loc2_ == 64 && _loc3_ == 3 && _loc4_ == 4)
            {
               TEflg[179] = false;
               textWindowOpen(11,570);
               break;
            }
            if(!TEflg[182] && _loc2_ == 64 && _loc3_ == 3 && _loc4_ == 4)
            {
               textWindowOpen(11,576);
            }
            break;
         }
         if(_loc2_ == 74 && _loc3_ == 3 && _loc4_ == 5)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,548);
            }
            else
            {
               textWindowOpen(11,566);
            }
         }
         if(_loc2_ == 64 && _loc3_ == 3 && _loc4_ == 4)
         {
            textWindowOpen(11,574);
         }
         break;
      case 13:
         if(mapX == 5 && mapY == 4 && pHo == 2)
         {
            textWindowOpen(30,30,0,88,51);
         }
         if(!BTEflg[5])
         {
            if(_loc2_ == 73 && _loc3_ == 3 && _loc4_ == 5)
            {
               textWindowOpen(11,580);
               break;
            }
            if(_loc2_ == 72 && _loc3_ == 3 && _loc4_ == 4)
            {
               textWindowOpen(11,587);
               break;
            }
            if(_loc2_ == 71 && _loc3_ == 3 && _loc4_ == 3)
            {
               textWindowOpen(11,593);
            }
            break;
         }
         if(_loc2_ == 73 && _loc3_ == 3 && _loc4_ == 5)
         {
            textWindowOpen(11,584);
            break;
         }
         if(_loc2_ == 72 && _loc3_ == 3 && _loc4_ == 4)
         {
            textWindowOpen(11,590);
            break;
         }
         if(_loc2_ == 71 && _loc3_ == 3 && _loc4_ == 3)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,598);
               break;
            }
            textWindowOpen(11,596);
         }
         break;
      case 14:
         if(mapX == 5 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,37,0,68,52);
         }
         if(_loc2_ == 74 && _loc3_ == 3 && _loc4_ == 4)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,657);
               break;
            }
            _loc5_ = BCtimes(206);
            if(TEflg[191] && _loc5_ != -1)
            {
               textWindowOpen(11,647);
               BufLv = gameLv;
               TEflg[191] = false;
               itemBN[_loc5_] = 1;
               panelSet();
               break;
            }
            if(!TEflg[191])
            {
               textWindowOpen(11,652);
               break;
            }
            if(TEflg[191])
            {
               textWindowOpen(11,654);
            }
         }
         break;
      case 15:
         if(mapX == 5 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,30,0,55,41);
            break;
         }
         if(map[15][4][3] == 74 && mapX == 5 && mapY == 4 && pHo == 0)
         {
            if(BTEflg[7])
            {
               textWindowOpen(11,657);
               break;
            }
            textWindowOpen(11,638);
            TEflg[192] = false;
         }
         break;
      case 16:
         if(mapX == 5 && mapY == 4 && pHo == 2)
         {
            textWindowOpen(30,14,0,49,41);
            break;
         }
         if(_loc2_ == 62 && _loc3_ == 3 && _loc4_ == 4)
         {
            if(!TEflg[188] && !TEflg[173])
            {
               textWindowOpen(11,510);
               break;
            }
            if(!TEflg[188] && TEflg[173])
            {
               textWindowOpen(11,519);
               TEflg[173] = false;
               break;
            }
            if(TEflg[188] && !TEflg[173])
            {
               textWindowOpen(11,515);
               break;
            }
            if(TEflg[188] && TEflg[173])
            {
               textWindowOpen(11,515);
               TEflg[173] = false;
            }
         }
         break;
      case 17:
         if(mapX == 5 && mapY == 5 && pHo == 2)
         {
            textWindowOpen(30,30,0,50,39);
         }
         break;
      case 20:
         if(mapX == 5 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,14,0,19,48);
            break;
         }
         if(mapX == 5 && mapY == 5 && pHo == 0)
         {
            textWindowOpen(11,180);
            TEflg[187] = false;
         }
         break;
      case 21:
         if(mapX == 5 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,14,0,93,37);
            break;
         }
         if(map[21][4][3] == 66 && mapX == 5 && mapY == 4 && pHo == 0)
         {
            textWindowOpen(11,200);
            TEflg[188] = false;
         }
         break;
      case 22:
         if(mapX == 5 && mapY == 4 && pHo == 2)
         {
            textWindowOpen(30,14,0,51,51);
            break;
         }
         if(TEflg[10])
         {
            if(map[22][4][3] == 66 && mapX == 4 && mapY == 4 && pHo == 0)
            {
               textWindowOpen(11,212);
               TEflg[10] = false;
            }
            break;
         }
         if(map[22][4][3] == 66 && mapX == 4 && mapY == 4 && pHo == 0)
         {
            textWindowOpen(11,214);
         }
   }
   dataCheck2();
   subCheck();
}
