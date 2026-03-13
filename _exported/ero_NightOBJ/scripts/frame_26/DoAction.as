function dataCheck2()
{
   var _loc2_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
   var _loc1_ = mapX + pValx[pHo];
   var _loc3_ = mapY + pValy[pHo];
   var _loc4_;
   var _loc5_;
   switch(mapNo)
   {
      case 24:
         if(mapX == 5 && mapY == 5 && pHo == 2)
         {
            textWindowOpen(30,69,37,23,23,1);
         }
         else if(_loc2_ == 75 && _loc1_ == 3 && _loc3_ == 3)
         {
            _loc4_ = BCtimes(221);
            if(!TEflg[305])
            {
               textWindowOpen(11,1157);
            }
            else if(!TEflg[320])
            {
               textWindowOpen(11,1154);
            }
            else if(!TEflg[315])
            {
               TEflg[321] = false;
               textWindowOpen(11,1151);
            }
            else if(!TEflg[314])
            {
               textWindowOpen(11,1148);
            }
            else if(_loc4_ != -1 && TEflg[314])
            {
               textWindowOpen(11,1145);
               TEflg[314] = false;
               itemBN[_loc4_] = 1;
               panelSet();
            }
            else
            {
               TEflg[312] = false;
               textWindowOpen(11,1140);
            }
         }
         break;
      case 25:
         if(mapX == 5 && mapY == 4 && pHo == 1)
         {
            textWindowOpen(30,69,37,22,5,3);
         }
         else if(mapX == 3 && mapY == 4 && pHo == 1)
         {
            textWindowOpen(30,68,35,12,4);
         }
         break;
      case 26:
         if(mapX == 3 && mapY == 5 && pHo == 0)
         {
            textWindowOpen(30,69,37,3,3,2);
         }
         else if(mapX == 5 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,68,35,5,4,1);
         }
         break;
      case 27:
         if(mapX == 5 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,69,37,3,23,2);
         }
         else if(_loc2_ == 63 && _loc3_ == 4 && (_loc1_ == 4 || _loc1_ == 5))
         {
            miniEV.enemyNo = 70;
            BFpriRunaway = true;
            if(mapY == 5)
            {
               textWindowOpen(11,1110);
            }
            else if(mapY == 3)
            {
               textWindowOpen(11,1106);
            }
         }
         break;
      case 31:
         if(mapX == 23 && mapY == 13 && pHo == 2)
         {
            textWindowOpen(30,48,0,50,91);
         }
         else if(mapX == 3 && mapY == 13 && pHo == 0)
         {
            textWindowOpen(30,46,32,3,13,2);
         }
         else if(mapX == 13 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,46,32,13,23,1);
         }
         else if(mapX == 13 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,46,32,13,3,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 7 && _loc3_ == 6)
         {
            textWindowOpen(30,46,32,7,7,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 7 && _loc3_ == 20)
         {
            textWindowOpen(30,46,32,7,20,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 21 && _loc3_ == 6)
         {
            textWindowOpen(30,46,32,21,6,3);
         }
         break;
      case 32:
         if(mapX == 3 && mapY == 13 && pHo == 0)
         {
            textWindowOpen(30,45,31,3,13,2);
         }
         else if(mapX == 13 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,45,31,13,23,1);
         }
         else if(mapX == 13 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,31,13,3,3);
         }
         else if(_loc2_ == 61 && _loc1_ == 7 && _loc3_ == 6)
         {
            textWindowOpen(30,45,31,7,5,1);
         }
         else if(_loc2_ == 61 && _loc1_ == 7 && _loc3_ == 19)
         {
            textWindowOpen(30,45,31,7,19,1);
         }
         else if(_loc2_ == 61 && _loc1_ == 21 && _loc3_ == 5)
         {
            textWindowOpen(30,45,31,21,5,1);
         }
         else if(mapX == 12 && mapY == 21 && pHo == 0)
         {
            textWindowOpen(30,46,33,12,21,2);
         }
         else if(mapX == 12 && mapY == 4 && pHo == 0)
         {
            textWindowOpen(30,46,33,12,4,2);
         }
         else if(_loc2_ == 60 && _loc1_ == 5 && _loc3_ == 21)
         {
            textWindowOpen(30,46,33,5,20,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 19 && _loc3_ == 5)
         {
            textWindowOpen(30,46,33,19,6,3);
         }
         break;
      case 33:
         if(mapX == 12 && mapY == 21 && pHo == 0)
         {
            textWindowOpen(30,45,32,12,21,2);
         }
         else if(mapX == 12 && mapY == 4 && pHo == 0)
         {
            textWindowOpen(30,45,32,12,4,2);
         }
         else if(mapX == 13 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,46,34,13,3,3);
         }
         else if(_loc2_ == 61 && _loc1_ == 5 && _loc3_ == 19)
         {
            textWindowOpen(30,45,32,5,20,1);
         }
         else if(_loc2_ == 61 && _loc1_ == 19 && _loc3_ == 5)
         {
            textWindowOpen(30,45,32,19,6,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 21 && _loc3_ == 6)
         {
            textWindowOpen(30,46,34,20,7,3);
         }
         break;
      case 34:
         if(mapX == 13 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,33,13,3,3);
         }
         else if(mapX == 20 && mapY == 7 && pHo == 1)
         {
            textWindowOpen(30,45,33,21,5);
         }
         if(!BTEflg[6])
         {
            if(mapX == 23 && mapY == 3 && pHo == 2)
            {
               textWindowOpen(10,65);
            }
            else if(_loc2_ == 76 && _loc1_ == 6 && _loc3_ == 12)
            {
               textWindowOpen(11,1068);
            }
         }
         else if(mapX == 23 && mapY == 3 && pHo == 2)
         {
            textWindowOpen(30,47,6,4,9);
         }
         else if(_loc2_ == 60 && _loc1_ == 6 && _loc3_ == 13)
         {
            textWindowOpen(30,46,35,3,22,2);
         }
         if(_loc2_ == 27 && _loc1_ == 11 && _loc3_ == 3)
         {
            textWindowOpen(10,50);
         }
         break;
      case 35:
         if(mapX == 23 && mapY == 22 && pHo == 2)
         {
            textWindowOpen(30,46,36,3,3,2);
         }
         else if(mapX == 3 && mapY == 22 && pHo == 0)
         {
            textWindowOpen(30,45,34,7,13,2);
         }
         else if(_loc2_ == 60 && _loc1_ == 12 && _loc3_ == 5)
         {
            textWindowOpen(30,69,25,3,4,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 5 && _loc3_ == 5)
         {
            textWindowOpen(30,69,26,5,3,3);
         }
         else if(_loc2_ == 76 && _loc1_ == 9 && _loc3_ == 21)
         {
            textWindowOpen(11,1000);
         }
         else if(_loc2_ == 76 && _loc1_ == 17 && _loc3_ == 21)
         {
            textWindowOpen(11,1002);
         }
         else if(mapX == 4 && mapY == 16 && pHo == 3)
         {
            textWindowOpen(30,46,36,9,3,3);
         }
         else if(mapX == 11 && mapY == 16 && pHo == 3)
         {
            textWindowOpen(30,46,36,16,3,3);
         }
         else if(mapX == 19 && mapY == 16 && pHo == 3)
         {
            textWindowOpen(30,46,36,23,3,3);
         }
         if(!TEflg[303])
         {
            TEflg[301] = false;
         }
         break;
      case 36:
         if(mapX == 3 && mapY == 3 && pHo == 0)
         {
            textWindowOpen(30,45,35,23,22,0);
         }
         else if(mapX == 23 && mapY == 15 && pHo == 1)
         {
            textWindowOpen(30,46,37,23,18,3);
         }
         else if(_loc2_ == 63 && _loc1_ == 5 && _loc3_ == 3)
         {
            textWindowOpen(11,1004);
         }
         else if(mapX == 9 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,35,4,16,1);
         }
         else if(mapX == 16 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,35,11,16,1);
         }
         else if(mapX == 23 && mapY == 3 && pHo == 1)
         {
            textWindowOpen(30,45,35,19,16,1);
         }
         else if(_loc2_ == 76 && _loc1_ == 3 && _loc3_ == 22)
         {
            if(!TEflg[300])
            {
               textWindowOpen(11,1052);
            }
            else if(!TEflg[299])
            {
               textWindowOpen(11,1058);
            }
            else if(TEflg[299] && !TEflg[298] && !TEflg[302])
            {
               if(fukuLv >= 102 && fukuLv <= 159)
               {
                  bufSou = false;
                  _loc5_ = setBeltNo;
                  pantsTakeOff();
                  itemBN[_loc5_] = 152;
                  panelSet();
                  textWindowOpen(11,1049);
                  TEflg[299] = false;
               }
               else
               {
                  textWindowOpen(11,1055);
               }
            }
            else if(!TEflg[298] && TEflg[302])
            {
               TEflg[302] = false;
               textWindowOpen(11,1046);
            }
            else
            {
               TEflg[296] = false;
               textWindowOpen(11,1040);
            }
         }
         else if(_loc2_ == 74 && _loc1_ == 22 && _loc3_ == 21)
         {
            if(!TEflg[297] && !TEflg[296])
            {
               TEflg[303] = false;
               textWindowOpen(11,1026);
            }
            else
            {
               TEflg[297] = false;
               textWindowOpen(11,1020);
            }
         }
         else if(_loc2_ == 68 && _loc1_ == 9 && _loc3_ == 15)
         {
            textWindowOpen(11,1010);
         }
         else if(_loc2_ == 68 && _loc1_ == 9 && _loc3_ == 17)
         {
            textWindowOpen(11,1015);
         }
         else if(mapX == 10 && mapY == 22 && pHo == 1)
         {
            textWindowOpen(10,52);
            storeNo = 10;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 12 && mapY == 22 && pHo == 1)
         {
            textWindowOpen(10,58);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         break;
      case 37:
         if(mapX == 13 && mapY == 3 && pHo == 1)
         {
            if(!TEflg[337])
            {
               textWindowOpen(10,1172);
            }
            else if(BTEflg[7])
            {
               textWindowOpen(30,63,38,4,23,1);
            }
            else
            {
               textWindowOpen(10,1170);
            }
         }
         else if(mapX == 23 && mapY == 23 && pHo == 3)
         {
            if(!TEflg[318])
            {
               textWindowOpen(30,68,24,5,5,0);
            }
            else
            {
               if(!TEflg[309] && !TEflg[308])
               {
                  TEflg[310] = false;
               }
               textWindowOpen(10,67);
            }
         }
         else if(mapX == 23 && mapY == 18 && pHo == 1)
         {
            textWindowOpen(30,45,36,23,15,3);
         }
         else if(_loc2_ == 60 && _loc1_ == 22 && _loc3_ == 4)
         {
            textWindowOpen(30,68,25,5,4,3);
         }
         else if(mapX == 3 && mapY == 3 && pHo == 0)
         {
            textWindowOpen(30,68,26,3,5,2);
         }
         else if(mapX == 3 && mapY == 23 && pHo == 0)
         {
            textWindowOpen(30,68,27,5,3,3);
         }
         else if(mapX == 4 && mapY == 10 && pHo == 1)
         {
            textWindowOpen(10,52);
            storeNo = 11;
            miniEV.no = 2;
            miniEV.flg = true;
         }
         else if(mapX == 5 && mapY == 10 && pHo == 1)
         {
            textWindowOpen(10,58);
            miniEV.no = 4;
            miniEV.flg = true;
         }
         else if(_loc2_ == 68 && _loc1_ == 20 && _loc3_ == 15)
         {
            if(TEflg[305])
            {
               textWindowOpen(11,1080);
            }
            else
            {
               textWindowOpen(11,1082);
            }
         }
         else if(_loc2_ == 69 && _loc1_ == 11 && _loc3_ == 15)
         {
            textWindowOpen(11,1090);
         }
         else if(_loc2_ == 70 && _loc1_ == 14 && _loc3_ == 10)
         {
            textWindowOpen(11,1093);
         }
         else if(mapX == 15 && mapY == 13 && pHo == 0 && map[37][13][13] == 63)
         {
            if(!TEflg[310])
            {
               textWindowOpen(11,1103);
            }
            else
            {
               TEflg[309] = false;
               textWindowOpen(11,1098);
            }
         }
         else if(_loc2_ == 76 && _loc1_ == 8 && _loc3_ == 9)
         {
            if(BCtimes(222) != -1)
            {
               textWindowOpen(11,1134);
            }
            else if(!TEflg[312])
            {
               TEflg[313] = false;
               textWindowOpen(11,1130);
            }
            else if(!TEflg[310])
            {
               TEflg[311] = false;
               textWindowOpen(11,1127);
            }
            else if(!TEflg[309] && !TEflg[308])
            {
               textWindowOpen(11,1123);
            }
            else
            {
               TEflg[308] = false;
               textWindowOpen(11,1120);
            }
         }
         else if(_loc2_ == 75 && _loc1_ == 12 && _loc3_ == 3)
         {
            textWindowOpen(11,1270);
         }
         break;
      case 38:
         if(mapX == 4 && mapY == 23 && pHo == 3)
         {
            textWindowOpen(30,64,37,13,3,3);
         }
         else if(_loc2_ == -7 && _loc1_ == 7 && _loc3_ == 14)
         {
            textWindowOpen(11,1195);
         }
         else if(_loc2_ == -8 && _loc1_ == 6 && _loc3_ == 5)
         {
            if(TEflg[345])
            {
               textWindowOpen(11,1200);
            }
            else
            {
               textWindowOpen(11,1202);
            }
         }
         else if(_loc2_ == -7 && _loc1_ == 20 && _loc3_ == 22)
         {
            TEflg[334] = false;
            bigEventCheck(1);
            if(!TEflg[337])
            {
               textWindowOpen(11,1228);
            }
            else if(!TEflg[338])
            {
               textWindowOpen(11,1230);
            }
            else
            {
               textWindowOpen(11,1226);
            }
         }
         else if(_loc2_ == -8 && _loc1_ == 20 && _loc3_ == 20)
         {
            TEflg[335] = false;
            bigEventCheck(1);
            if(!TEflg[337])
            {
               textWindowOpen(11,1235);
            }
            else if(!TEflg[338])
            {
               textWindowOpen(11,1237);
            }
            else
            {
               textWindowOpen(11,1233);
            }
         }
         else if(_loc2_ == 76 && _loc1_ == 13 && _loc3_ == 6)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 20;
            textWindowOpen(11,1205);
         }
         else if(_loc2_ == 76 && _loc1_ == 14 && _loc3_ == 14)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 30;
            textWindowOpen(11,1208);
         }
         else if(_loc2_ == 76 && _loc1_ == 18 && _loc3_ == 8)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 40;
            textWindowOpen(11,1211);
         }
         else if(_loc2_ == 76 && _loc1_ == 21 && _loc3_ == 3)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 70;
            textWindowOpen(11,1215);
         }
         else if(_loc2_ == 76 && _loc1_ == 22 && _loc3_ == 17)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 60;
            textWindowOpen(11,1220);
         }
         else if(_loc2_ == -9 && _loc1_ == 11 && _loc3_ == 21)
         {
            BFpriRunaway = true;
            miniEV.enemyNo = 95;
            if(!TEflg[338])
            {
               textWindowOpen(11,1251);
            }
            else
            {
               textWindowOpen(11,1245);
            }
         }
      default:
         return;
   }
}
function subCheck2()
{
   if(keyFlg2)
   {
      return undefined;
   }
   var _loc3_ = map[mapNo][mapY + pValy[pHo]][mapX + pValx[pHo]];
   var _loc2_ = mapX + pValx[pHo];
   var _loc4_ = mapY + pValy[pHo];
   switch(mapNo)
   {
      case 24:
         if(TEflg[320] && !TEflg[321] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 4)
         {
            if(beltCheck(true,222))
            {
               textWindowOpen(1,222);
               map[24][4][3] = 48;
               mapDisplay();
               TEflg[320] = false;
            }
            else
            {
               textWindowOpen(0,222);
            }
         }
         break;
      case 31:
         if(TEflg[264] && _loc3_ == 47 && _loc2_ == 19 && _loc4_ == 19)
         {
            if(beltCheck(true,184))
            {
               textWindowOpen(1,184);
               map[31][19][19] = 48;
               mapDisplay();
               TEflg[264] = false;
            }
            else
            {
               textWindowOpen(0,184);
            }
         }
         else if(TEflg[265] && _loc3_ == 47 && _loc2_ == 5 && _loc4_ == 5)
         {
            if(beltCheck(true,149))
            {
               textWindowOpen(1,149);
               map[31][5][5] = 48;
               mapDisplay();
               TEflg[265] = false;
            }
            else
            {
               textWindowOpen(0,149);
            }
         }
         else if(TEflg[266] && _loc3_ == 47 && _loc2_ == 5 && _loc4_ == 19)
         {
            if(beltCheck(true,71))
            {
               textWindowOpen(1,71);
               map[31][19][5] = 48;
               mapDisplay();
               TEflg[266] = false;
            }
            else
            {
               textWindowOpen(0,71);
            }
         }
         else if(TEflg[267] && _loc3_ == 47 && _loc2_ == 19 && _loc4_ == 5)
         {
            if(beltCheck(true,151))
            {
               textWindowOpen(1,151);
               map[31][5][19] = 48;
               mapDisplay();
               TEflg[267] = false;
            }
            else
            {
               textWindowOpen(0,151);
            }
         }
         break;
      case 32:
         if(TEflg[263] && _loc3_ == 47 && _loc2_ == 18 && _loc4_ == 13)
         {
            if(beltCheck(true,150))
            {
               textWindowOpen(1,150);
               map[32][13][18] = 48;
               mapDisplay();
               TEflg[263] = false;
            }
            else
            {
               textWindowOpen(0,150);
            }
         }
         break;
      case 33:
         if(TEflg[262] && _loc3_ == 47 && _loc2_ == 23 && _loc4_ == 13)
         {
            if(beltCheck(true,148))
            {
               textWindowOpen(1,148);
               map[33][13][23] = 48;
               mapDisplay();
               TEflg[262] = false;
            }
            else
            {
               textWindowOpen(0,148);
            }
         }
         break;
      case 34:
         if(TEflg[261] && _loc3_ == 45 && _loc2_ == 17 && _loc4_ == 4)
         {
            if(beltCheck(true,54))
            {
               textWindowOpen(1,54);
               map[34][4][17] = 46;
               mapDisplay();
               TEflg[261] = false;
               break;
            }
            textWindowOpen(0,54);
            break;
         }
         if(TEflg[250] && mapX == 10 && mapY == 6)
         {
            if(beltCheck(true,12))
            {
               textWindowOpen(1,12);
               TEflg[250] = false;
               break;
            }
            textWindowOpen(0,12);
            break;
         }
         if(TEflg[251] && mapX == 12 && mapY == 6)
         {
            if(beltCheck(true,12))
            {
               textWindowOpen(1,12);
               TEflg[251] = false;
               break;
            }
            textWindowOpen(0,12);
            break;
         }
         if(TEflg[252] && mapX == 14 && mapY == 6)
         {
            if(beltCheck(true,179))
            {
               textWindowOpen(1,179);
               TEflg[252] = false;
               break;
            }
            textWindowOpen(0,179);
            break;
         }
         if(TEflg[253] && mapX == 16 && mapY == 6)
         {
            if(beltCheck(true,12))
            {
               textWindowOpen(1,12);
               TEflg[253] = false;
               break;
            }
            textWindowOpen(0,12);
            break;
         }
         if(TEflg[254] && mapX == 10 && mapY == 9)
         {
            if(beltCheck(true,8))
            {
               textWindowOpen(1,8);
               TEflg[254] = false;
               break;
            }
            textWindowOpen(0,8);
            break;
         }
         if(TEflg[255] && mapX == 10 && mapY == 20)
         {
            if(beltCheck(true,8))
            {
               textWindowOpen(1,8);
               TEflg[255] = false;
               break;
            }
            textWindowOpen(0,8);
            break;
         }
         if(TEflg[256] && mapX == 12 && mapY == 20)
         {
            if(beltCheck(true,8))
            {
               textWindowOpen(1,8);
               TEflg[256] = false;
               break;
            }
            textWindowOpen(0,8);
            break;
         }
         if(TEflg[257] && mapX == 14 && mapY == 20)
         {
            if(beltCheck(true,179))
            {
               textWindowOpen(1,179);
               TEflg[257] = false;
               break;
            }
            textWindowOpen(0,179);
            break;
         }
         if(TEflg[258] && mapX == 16 && mapY == 20)
         {
            if(beltCheck(true,8))
            {
               textWindowOpen(1,8);
               TEflg[258] = false;
               break;
            }
            textWindowOpen(0,8);
            break;
         }
         if(TEflg[259] && mapX == 10 && mapY == 17)
         {
            if(beltCheck(true,8))
            {
               textWindowOpen(1,8);
               TEflg[259] = false;
               break;
            }
            textWindowOpen(0,8);
         }
         break;
      case 35:
         break;
      case 37:
         if(!TEflg[311] && TEflg[317] && mapX == 8 && mapY == 16 && pHo == 3)
         {
            if(beltCheck(true,220))
            {
               textWindowOpen(1,220);
               TEflg[317] = false;
            }
            else
            {
               textWindowOpen(0,220);
            }
         }
         else if(TEflg[323] && _loc3_ == 45 && _loc2_ == 4 && _loc4_ == 22)
         {
            if(beltCheck(true,44))
            {
               textWindowOpen(1,44);
               map[37][22][4] = 46;
               mapDisplay();
               TEflg[323] = false;
            }
            else
            {
               textWindowOpen(0,44);
            }
         }
         break;
      case 38:
         if(TEflg[332] && _loc3_ == 45 && _loc2_ == 18 && _loc4_ == 18)
         {
            if(beltCheck(true,156))
            {
               textWindowOpen(1,156);
               map[38][18][18] = 46;
               mapDisplay();
               TEflg[332] = false;
            }
            else
            {
               textWindowOpen(0,156);
            }
         }
         else if(TEflg[330] && _loc3_ == 45 && _loc2_ == 11 && _loc4_ == 19)
         {
            TEflg[330] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
         }
         else if(TEflg[331] && _loc3_ == 47 && _loc2_ == 9 && _loc4_ == 21)
         {
            TEflg[331] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
         }
      case 36:
      default:
         return;
   }
   if(TEflg[290] && _loc3_ == 45 && _loc2_ == 4 && _loc4_ == 11)
   {
      if(beltCheck(true,182))
      {
         textWindowOpen(1,182);
         map[35][11][4] = 46;
         mapDisplay();
         TEflg[290] = false;
      }
      else
      {
         textWindowOpen(0,182);
      }
   }
   else if(TEflg[291] && _loc3_ == 45 && _loc2_ == 11 && _loc4_ == 11)
   {
      TEflg[291] = false;
      BFpriRunaway = true;
      miniEV.flg = true;
      _root.miniEV.no = 3;
      miniEV.enemyNo = 33;
      textWindowOpen(10,66);
   }
   if(!TEflg[303])
   {
      if(TEflg[292] && mapX == 16 && mapY == 3)
      {
         if(beltCheck(true,210))
         {
            textWindowOpen(1,210);
            TEflg[292] = false;
         }
         else
         {
            textWindowOpen(0,210);
         }
      }
      else if(TEflg[293] && mapX == 17 && mapY == 3)
      {
         if(beltCheck(true,193))
         {
            textWindowOpen(1,193);
            TEflg[293] = false;
         }
         else
         {
            textWindowOpen(0,193);
         }
      }
   }
   if(TEflg[327] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 3)
   {
      if(!TEflg[337])
      {
         if(beltCheck(true,225))
         {
            textWindowOpen(1,225);
            map[35][3][3] = 48;
            mapDisplay();
            TEflg[327] = false;
         }
         else
         {
            textWindowOpen(0,225);
         }
      }
      else
      {
         textWindowOpen(10,1166);
      }
   }
   else if(TEflg[328] && _loc3_ == 47 && _loc2_ == 10 && _loc4_ == 3)
   {
      if(BTEflg[7])
      {
         if(beltCheck(true,224))
         {
            textWindowOpen(1,224);
            map[35][3][10] = 48;
            mapDisplay();
            TEflg[328] = false;
         }
         else
         {
            textWindowOpen(0,224);
         }
      }
      else
      {
         textWindowOpen(10,1168);
      }
   }
}
