function subCheck()
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
      case 0:
         if(TEflg[11] && mapX == 47 && mapY == 57)
         {
            if(beltCheck(true,6))
            {
               textWindowOpen(1,6);
               TEflg[11] = false;
            }
            else
            {
               textWindowOpen(0,6);
            }
         }
         else if(TEflg[12] && mapX == 46 && mapY == 56)
         {
            if(beltCheck(true,171))
            {
               textWindowOpen(1,171);
               TEflg[12] = false;
            }
            else
            {
               textWindowOpen(0,171);
            }
         }
         else if(TEflg[15] && mapX == 35 && mapY == 19 && pHo == 0)
         {
            if(beltCheck(true,57))
            {
               textWindowOpen(1,57);
               TEflg[15] = false;
            }
            else
            {
               textWindowOpen(0,57);
            }
         }
         else if(TEflg[16] && mapX == 34 && mapY == 18 && pHo == 3)
         {
            if(beltCheck(true,3,120))
            {
               textWindowOpen(1,3,120);
               TEflg[16] = false;
            }
         }
         else if(TEflg[19] && mapX == 41 && mapY == 51)
         {
            if(beltCheck(true,10))
            {
               textWindowOpen(1,10);
               TEflg[19] = false;
            }
            else
            {
               textWindowOpen(0,10);
            }
         }
         else if(TEflg[20] && mapX == 39 && mapY == 58)
         {
            if(beltCheck(true,108))
            {
               textWindowOpen(1,108);
               TEflg[20] = false;
            }
            else
            {
               textWindowOpen(0,108);
            }
         }
         else if(TEflg[21] && mapX == 33 && mapY == 60)
         {
            if(beltCheck(true,170))
            {
               textWindowOpen(1,170);
               TEflg[21] = false;
            }
            else
            {
               textWindowOpen(0,170);
            }
         }
         else if(TEflg[22] && mapX == 22 && mapY == 57)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[22] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[23] && mapX == 23 && mapY == 58)
         {
            if(beltCheck(true,111))
            {
               textWindowOpen(1,111);
               TEflg[23] = false;
            }
            else
            {
               textWindowOpen(0,111);
            }
         }
         else if(TEflg[24] && mapX == 30 && mapY == 58)
         {
            if(beltCheck(true,6))
            {
               textWindowOpen(1,6);
               TEflg[24] = false;
            }
            else
            {
               textWindowOpen(0,6);
            }
         }
         else if(TEflg[25] && mapX == 31 && mapY == 58)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[25] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[26] && mapX == 30 && mapY == 59)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[26] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[27] && mapX == 31 && mapY == 59)
         {
            if(beltCheck(true,21))
            {
               textWindowOpen(1,21);
               TEflg[27] = false;
            }
            else
            {
               textWindowOpen(0,21);
            }
         }
         else if(TEflg[30] && mapX == 22 && mapY == 48)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[30] = false;
            }
            else
            {
               textWindowOpen(0,6);
            }
         }
         else if(TEflg[31] && mapX == 13 && mapY == 61)
         {
            if(beltCheck(true,16))
            {
               textWindowOpen(1,16);
               TEflg[31] = false;
            }
            else
            {
               textWindowOpen(0,16);
            }
         }
         else if(TEflg[32] && mapX == 11 && mapY == 58)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[32] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[33] && mapX == 12 && mapY == 62)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[33] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[34] && mapX == 3 && mapY == 67)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(1,190);
               TEflg[34] = false;
            }
            else
            {
               textWindowOpen(0,190);
            }
         }
         else if(TEflg[35] && mapX == 20 && mapY == 52)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(1,190);
               TEflg[35] = false;
            }
            else
            {
               textWindowOpen(0,190);
            }
         }
         else if(TEflg[40] && mapX == 21 && mapY == 10 && pHo == 0)
         {
            if(beltCheck(true,172))
            {
               textWindowOpen(1,172);
               TEflg[40] = false;
            }
            else
            {
               textWindowOpen(0,172);
            }
         }
         else if(TEflg[41] && mapX == 13 && mapY == 8)
         {
            if(beltCheck(true,28))
            {
               textWindowOpen(1,28);
               TEflg[41] = false;
            }
            else
            {
               textWindowOpen(0,28);
            }
         }
         else if(TEflg[42] && mapX == 16 && mapY == 14)
         {
            if(beltCheck(true,112))
            {
               textWindowOpen(1,112);
               TEflg[42] = false;
            }
            else
            {
               textWindowOpen(0,112);
            }
         }
         else if(TEflg[43] && mapX == 15 && mapY == 12)
         {
            if(beltCheck(true,31))
            {
               textWindowOpen(1,31);
               TEflg[43] = false;
            }
            else
            {
               textWindowOpen(0,31);
            }
         }
         else if(TEflg[44] && mapX == 36 && mapY == 15)
         {
            if(beltCheck(true,3,277))
            {
               textWindowOpen(1,3,277);
               TEflg[44] = false;
            }
         }
         else if(TEflg[45] && mapX == 9 && mapY == 10)
         {
            if(beltCheck(true,10))
            {
               textWindowOpen(1,10);
               TEflg[45] = false;
            }
            else
            {
               textWindowOpen(0,10);
            }
         }
         else if(TEflg[46] && mapX == 9 && mapY == 11)
         {
            if(beltCheck(true,14))
            {
               textWindowOpen(1,14);
               TEflg[46] = false;
            }
            else
            {
               textWindowOpen(0,14);
            }
         }
         else if(TEflg[47] && mapX == 9 && mapY == 12)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[47] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[48] && mapX == 20 && mapY == 44)
         {
            if(beltCheck(true,17))
            {
               textWindowOpen(1,17);
               TEflg[48] = false;
            }
            else
            {
               textWindowOpen(0,17);
            }
         }
         else if(TEflg[55] && mapX == 9 && mapY == 15)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[55] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[56] && mapX == 9 && mapY == 16)
         {
            if(beltCheck(true,23))
            {
               textWindowOpen(1,23);
               TEflg[56] = false;
            }
            else
            {
               textWindowOpen(0,23);
            }
         }
         else if(TEflg[57] && mapX == 19 && mapY == 26)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[57] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[58] && mapX == 20 && mapY == 27)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[58] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[59] && mapX == 3 && mapY == 31)
         {
            if(beltCheck(true,171))
            {
               textWindowOpen(1,171);
               TEflg[59] = false;
            }
            else
            {
               textWindowOpen(0,171);
            }
         }
         else if(TEflg[63] && mapX == 17 && mapY == 38)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[63] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[64] && mapX == 18 && mapY == 37)
         {
            if(beltCheck(true,19))
            {
               textWindowOpen(1,19);
               TEflg[64] = false;
            }
            else
            {
               textWindowOpen(0,19);
            }
         }
         else if(TEflg[65] && mapX == 20 && mapY == 50)
         {
            if(beltCheck(true,29))
            {
               textWindowOpen(1,29);
               TEflg[65] = false;
            }
            else
            {
               textWindowOpen(0,29);
            }
         }
         else if(TEflg[70] && mapX == 10 && mapY == 79)
         {
            if(beltCheck(true,24))
            {
               textWindowOpen(1,24);
               TEflg[70] = false;
            }
            else
            {
               textWindowOpen(0,24);
            }
         }
         if(BTEflg[2])
         {
            if(TEflg[67] && mapX == 16 && mapY == 80 && pHo == 1)
            {
               if(beltCheck(true,174))
               {
                  textWindowOpen(1,174);
                  TEflg[67] = false;
               }
               else
               {
                  textWindowOpen(0,174);
               }
            }
            else if(TEflg[68] && mapX == 22 && mapY == 79 && pHo == 0)
            {
               if(beltCheck(true,117))
               {
                  textWindowOpen(1,117);
                  TEflg[68] = false;
               }
               else
               {
                  textWindowOpen(0,117);
               }
            }
         }
         if(TEflg[75] && mapX == 12 && mapY == 88 && pHo == 0)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[75] = false;
            }
            else
            {
               textWindowOpen(0,201);
            }
         }
         else if(TEflg[76] && mapX == 21 && mapY == 89 && pHo == 0)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[76] = false;
            }
            else
            {
               textWindowOpen(0,201);
            }
         }
         else if(TEflg[77] && mapX == 25 && mapY == 91 && pHo == 0)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[77] = false;
            }
            else
            {
               textWindowOpen(0,201);
            }
         }
         else if(TEflg[78] && mapX == 26 && mapY == 87 && pHo == 0)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[78] = false;
            }
            else
            {
               textWindowOpen(0,201);
            }
         }
         else if(TEflg[79] && mapX == 37 && mapY == 94 && pHo == 1)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[79] = false;
            }
            else
            {
               textWindowOpen(0,201);
            }
         }
         else if(TEflg[134] && mapX == 96 && mapY == 64)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[134] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[135] && mapX == 82 && mapY == 63)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[135] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[136] && mapX == 96 && mapY == 62)
         {
            if(beltCheck(true,191))
            {
               textWindowOpen(1,191);
               TEflg[136] = false;
            }
            else
            {
               textWindowOpen(0,191);
            }
         }
         else if(TEflg[137] && mapX == 84 && mapY == 61)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[137] = false;
            }
            else
            {
               textWindowOpen(0,195);
            }
         }
         else if(TEflg[139] && mapX == 69 && mapY == 88)
         {
            if(beltCheck(true,17))
            {
               textWindowOpen(1,17);
               TEflg[139] = false;
            }
            else
            {
               textWindowOpen(0,17);
            }
         }
         else if(TEflg[140] && mapX == 59 && mapY == 94)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[140] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[141] && mapX == 59 && mapY == 93)
         {
            if(beltCheck(true,23))
            {
               textWindowOpen(1,23);
               TEflg[141] = false;
            }
            else
            {
               textWindowOpen(0,23);
            }
         }
         else if(TEflg[142] && mapX == 59 && mapY == 92)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[142] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[144] && mapX == 61 && mapY == 96)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[144] = false;
            }
            else
            {
               textWindowOpen(0,7);
            }
         }
         else if(TEflg[145] && mapX == 65 && mapY == 94 && pHo == 1)
         {
            if(beltCheck(true,84))
            {
               textWindowOpen(1,84);
               TEflg[145] = false;
            }
            else
            {
               textWindowOpen(0,84);
            }
         }
         if(BTEflg[3])
         {
            if(TEflg[146] && mapX == 73 && mapY == 94 && pHo == 1)
            {
               if(beltCheck(true,177))
               {
                  textWindowOpen(1,177);
                  TEflg[146] = false;
               }
               else
               {
                  textWindowOpen(0,177);
               }
            }
         }
         if(TEflg[147] && mapX == 76 && mapY == 92 && pHo == 1)
         {
            if(beltCheck(true,21))
            {
               textWindowOpen(1,21);
               TEflg[147] = false;
               break;
            }
            textWindowOpen(0,21);
            break;
         }
         if(TEflg[148] && mapX == 94 && mapY == 93 && pHo == 0)
         {
            if(beltCheck(true,25))
            {
               textWindowOpen(1,25);
               TEflg[148] = false;
               break;
            }
            textWindowOpen(0,25);
            break;
         }
         if(TEflg[164] && mapX == 63 && mapY == 73 && pHo == 1)
         {
            if(beltCheck(true,83))
            {
               textWindowOpen(1,83);
               TEflg[164] = false;
               break;
            }
            textWindowOpen(0,83);
            break;
         }
         if(TEflg[166] && mapX == 38 && mapY == 67)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[166] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[167] && mapX == 45 && mapY == 66)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[167] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[168] && mapX == 51 && mapY == 65)
         {
            if(beltCheck(true,11))
            {
               textWindowOpen(1,11);
               TEflg[168] = false;
               break;
            }
            textWindowOpen(0,11);
            break;
         }
         if(TEflg[169] && mapX == 48 && mapY == 66)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[169] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[170] && mapX == 38 && mapY == 69)
         {
            if(beltCheck(true,179))
            {
               textWindowOpen(1,179);
               TEflg[170] = false;
               break;
            }
            textWindowOpen(0,170);
            break;
         }
         if(TEflg[180] && mapX == 86 && mapY == 53 && pHo == 1)
         {
            if(beltCheck(true,17))
            {
               textWindowOpen(1,17);
               TEflg[180] = false;
               break;
            }
            textWindowOpen(0,17);
            break;
         }
         if(TEflg[181] && mapX == 87 && mapY == 53 && pHo == 1)
         {
            if(beltCheck(true,34))
            {
               textWindowOpen(1,34);
               TEflg[181] = false;
               break;
            }
            textWindowOpen(0,34);
            break;
         }
         if(!TEflg[179] && TEflg[182] && mapX == 96 && mapY == 44)
         {
            if(beltCheck(true,52))
            {
               textWindowOpen(1,52);
               TEflg[182] = false;
               break;
            }
            textWindowOpen(0,52);
            break;
         }
         if(TEflg[183] && mapX == 72 && mapY == 65)
         {
            if(beltCheck(true,173))
            {
               textWindowOpen(1,173);
               TEflg[183] = false;
               break;
            }
            textWindowOpen(0,173);
            break;
         }
         if(TEflg[194] && _loc3_ == 45 && _loc2_ == 66 && _loc4_ == 49)
         {
            if(beltCheck(true,154))
            {
               textWindowOpen(1,154);
               map[0][49][66] = 46;
               mapDisplay();
               TEflg[194] = false;
               break;
            }
            textWindowOpen(0,154);
            break;
         }
         if(TEflg[200] && mapX == 82 && mapY == 47)
         {
            if(beltCheck(true,21))
            {
               textWindowOpen(1,21);
               TEflg[200] = false;
               break;
            }
            textWindowOpen(0,21);
            break;
         }
         if(TEflg[201] && mapX == 41 && mapY == 28)
         {
            if(beltCheck(true,11))
            {
               textWindowOpen(1,11);
               TEflg[201] = false;
               break;
            }
            textWindowOpen(0,11);
            break;
         }
         if(TEflg[202] && mapX == 45 && mapY == 20)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[202] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[203] && mapX == 43 && mapY == 22)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(1,190);
               TEflg[203] = false;
               break;
            }
            textWindowOpen(0,190);
            break;
         }
         if(TEflg[204] && mapX == 62 && mapY == 28)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[204] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[205] && mapX == 62 && mapY == 35)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[205] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[206] && mapX == 65 && mapY == 35)
         {
            if(beltCheck(true,137))
            {
               textWindowOpen(1,137);
               TEflg[206] = false;
               break;
            }
            textWindowOpen(0,137);
            break;
         }
         if(TEflg[207] && mapX == 66 && mapY == 45 && pHo == 0)
         {
            if(beltCheck(true,180))
            {
               textWindowOpen(1,180);
               TEflg[207] = false;
               break;
            }
            textWindowOpen(0,180);
            break;
         }
         if(TEflg[208] && mapX == 66 && mapY == 42 && pHo == 1)
         {
            if(beltCheck(true,134))
            {
               textWindowOpen(1,134);
               TEflg[208] = false;
               break;
            }
            textWindowOpen(0,134);
            break;
         }
         if(TEflg[199] && mapX == 40 && mapY == 32)
         {
            if(beltCheck(true,12))
            {
               textWindowOpen(1,12);
               TEflg[199] = false;
               break;
            }
            textWindowOpen(0,12);
            break;
         }
         if(TEflg[210] && _loc3_ == 45 && _loc2_ == 55 && _loc4_ == 20)
         {
            if(beltCheck(true,192))
            {
               textWindowOpen(1,192);
               map[0][20][55] = 46;
               mapDisplay();
               TEflg[210] = false;
               break;
            }
            textWindowOpen(0,192);
            break;
         }
         if(TEflg[211] && _loc3_ == 45 && _loc2_ == 53 && _loc4_ == 20)
         {
            if(beltCheck(true,12))
            {
               textWindowOpen(1,12);
               map[0][20][53] = 46;
               mapDisplay();
               TEflg[211] = false;
               break;
            }
            textWindowOpen(0,12);
            break;
         }
         if(TEflg[212] && _loc3_ == 47 && _loc2_ == 49 && _loc4_ == 21)
         {
            if(beltCheck(true,181))
            {
               textWindowOpen(1,181);
               map[0][21][49] = 48;
               mapDisplay();
               TEflg[212] = false;
               break;
            }
            textWindowOpen(0,181);
            break;
         }
         if(TEflg[213] && _loc3_ == 45 && _loc2_ == 52 && _loc4_ == 20)
         {
            if(beltCheck(true,182))
            {
               textWindowOpen(1,182);
               map[0][20][52] = 46;
               mapDisplay();
               TEflg[213] = false;
               break;
            }
            textWindowOpen(0,182);
            break;
         }
         if(TEflg[214] && _loc3_ == 47 && _loc2_ == 50 && _loc4_ == 20)
         {
            if(beltCheck(true,144))
            {
               textWindowOpen(1,144);
               map[0][20][50] = 48;
               mapDisplay();
               TEflg[214] = false;
               break;
            }
            textWindowOpen(0,144);
            break;
         }
         if(TEflg[215] && _loc3_ == 45 && _loc2_ == 54 && _loc4_ == 19)
         {
            if(beltCheck(true,183))
            {
               textWindowOpen(1,183);
               map[0][19][54] = 46;
               mapDisplay();
               TEflg[215] = false;
               break;
            }
            textWindowOpen(0,183);
            break;
         }
         if(TEflg[216] && _loc3_ == 45 && _loc2_ == 53 && _loc4_ == 19)
         {
            textWindowOpen(10,5);
            map[0][19][53] = 46;
            mapDisplay();
            TEflg[216] = false;
            break;
         }
         if(TEflg[217] && _loc3_ == 45 && _loc2_ == 53 && _loc4_ == 9)
         {
            if(beltCheck(true,184))
            {
               textWindowOpen(1,184);
               map[0][9][53] = 46;
               mapDisplay();
               TEflg[217] = false;
               break;
            }
            textWindowOpen(0,184);
            break;
         }
         if(TEflg[218] && _loc3_ == 45 && _loc2_ == 53 && _loc4_ == 10)
         {
            TEflg[218] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
            break;
         }
         if(TEflg[219] && _loc3_ == 47 && _loc2_ == 51 && _loc4_ == 8)
         {
            if(beltCheck(true,3,1500))
            {
               textWindowOpen(1,3,1500);
               map[0][8][51] = 48;
               mapDisplay();
               TEflg[219] = false;
            }
            break;
         }
         if(TEflg[221] && !TEflg[196] && mapX == 58 && mapY == 30 && pHo == 0)
         {
            if(beltCheck(true,207))
            {
               textWindowOpen(1,207);
               TEflg[221] = false;
               break;
            }
            textWindowOpen(0,207);
            break;
         }
         if(TEflg[268] && mapX == 84 && mapY == 36)
         {
            if(beltCheck(true,191))
            {
               textWindowOpen(1,191);
               TEflg[268] = false;
               break;
            }
            textWindowOpen(0,191);
            break;
         }
         if(TEflg[269] && mapX == 62 && mapY == 4)
         {
            if(beltCheck(true,145))
            {
               textWindowOpen(1,145);
               TEflg[269] = false;
               break;
            }
            textWindowOpen(0,145);
            break;
         }
         if(TEflg[280] && mapX == 70 && mapY == 16)
         {
            if(beltCheck(true,181))
            {
               textWindowOpen(1,181);
               TEflg[280] = false;
               break;
            }
            textWindowOpen(0,181);
            break;
         }
         if(TEflg[281] && mapX == 93 && mapY == 31)
         {
            if(beltCheck(true,182))
            {
               textWindowOpen(1,182);
               TEflg[281] = false;
               break;
            }
            textWindowOpen(0,182);
            break;
         }
         if(TEflg[282] && _loc3_ == 45 && _loc2_ == 96 && _loc4_ == 23)
         {
            if(beltCheck(true,178))
            {
               textWindowOpen(1,178);
               map[0][23][96] = 46;
               mapDisplay();
               TEflg[282] = false;
               break;
            }
            textWindowOpen(0,178);
            break;
         }
         if(TEflg[283] && _loc3_ == 47 && _loc2_ == 66 && _loc4_ == 13)
         {
            if(beltCheck(true,3,1777))
            {
               textWindowOpen(1,3,1777);
               map[0][13][66] = 48;
               mapDisplay();
               TEflg[283] = false;
            }
            break;
         }
         if(TEflg[284] && _loc3_ == 45 && _loc2_ == 68 && _loc4_ == 15)
         {
            if(beltCheck(true,183))
            {
               textWindowOpen(1,183);
               map[0][15][68] = 46;
               mapDisplay();
               TEflg[284] = false;
               break;
            }
            textWindowOpen(0,183);
            break;
         }
         if(TEflg[274] && _loc3_ == 47 && _loc2_ == 66 && _loc4_ == 12)
         {
            TEflg[274] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
         }
         break;
      case 1:
         if(TEflg[50] && mapX == 9 && mapY == 11)
         {
            if(beltCheck(true,201))
            {
               textWindowOpen(1,201);
               TEflg[50] = false;
               break;
            }
            textWindowOpen(0,201);
            break;
         }
         if(TEflg[51] && _loc3_ == 45 && _loc2_ == 23 && _loc4_ == 22)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(1,190);
               map[1][22][23] = 46;
               mapDisplay();
               TEflg[51] = false;
               break;
            }
            textWindowOpen(0,190);
            break;
         }
         if(TEflg[52] && _loc3_ == 45 && _loc2_ == 17 && _loc4_ == 3)
         {
            if(beltCheck(true,3,483))
            {
               textWindowOpen(1,3,483);
               map[1][3][17] = 46;
               mapDisplay();
               TEflg[52] = false;
            }
            break;
         }
         if(TEflg[53] && _loc3_ == 45 && _loc2_ == 21 && _loc4_ == 3)
         {
            if(beltCheck(true,173))
            {
               textWindowOpen(1,173);
               map[1][3][21] = 46;
               mapDisplay();
               TEflg[53] = false;
               break;
            }
            textWindowOpen(0,173);
            break;
         }
         if(TEflg[54] && _loc3_ == 45 && _loc2_ == 19 && _loc4_ == 3)
         {
            if(beltCheck(true,153))
            {
               textWindowOpen(1,153);
               map[1][3][19] = 46;
               mapDisplay();
               TEflg[54] = false;
               break;
            }
            textWindowOpen(0,153);
         }
         break;
      case 2:
         if(TEflg[83] && mapX == 20 && mapY == 20)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[83] = false;
               break;
            }
            textWindowOpen(0,195);
            break;
         }
         if(TEflg[84] && mapX == 13 && mapY == 18)
         {
            if(beltCheck(true,115))
            {
               textWindowOpen(1,115);
               TEflg[84] = false;
               break;
            }
            textWindowOpen(0,115);
            break;
         }
         if(TEflg[85] && mapX == 20 && mapY == 14)
         {
            if(beltCheck(true,175))
            {
               textWindowOpen(1,175);
               TEflg[85] = false;
               break;
            }
            textWindowOpen(0,175);
            break;
         }
         if(TEflg[86] && mapX == 5 && mapY == 13)
         {
            if(beltCheck(true,191))
            {
               textWindowOpen(1,191);
               TEflg[86] = false;
               break;
            }
            textWindowOpen(0,191);
            break;
         }
         if(TEflg[87] && mapX == 3 && mapY == 22)
         {
            if(beltCheck(true,193))
            {
               textWindowOpen(1,193);
               TEflg[87] = false;
               break;
            }
            textWindowOpen(0,193);
            break;
         }
         if(TEflg[90] && _loc3_ == 45 && _loc2_ == 4 && _loc4_ == 3)
         {
            if(beltCheck(true,192))
            {
               textWindowOpen(1,192);
               map[2][3][4] = 46;
               mapDisplay();
               TEflg[90] = false;
               break;
            }
            textWindowOpen(0,192);
            break;
         }
         if(TEflg[91] && _loc3_ == 47 && _loc2_ == 8 && _loc4_ == 5)
         {
            if(beltCheck(true,3,513))
            {
               textWindowOpen(1,3,513);
               map[2][5][8] = 48;
               mapDisplay();
               TEflg[91] = false;
            }
            break;
         }
         if(TEflg[92] && _loc3_ == 45 && _loc2_ == 6 && _loc4_ == 5)
         {
            if(beltCheck(true,176))
            {
               textWindowOpen(1,176);
               map[2][5][6] = 46;
               mapDisplay();
               TEflg[92] = false;
               break;
            }
            textWindowOpen(0,176);
         }
         break;
      case 3:
         if(TEflg[103] && _loc3_ == 45 && _loc2_ == 22 && _loc4_ == 19)
         {
            textWindowOpen(10,5);
            map[3][19][22] = 46;
            mapDisplay();
            TEflg[103] = false;
            break;
         }
         if(TEflg[104] && _loc3_ == 45 && _loc2_ == 23 && _loc4_ == 16)
         {
            if(beltCheck(true,114))
            {
               textWindowOpen(1,114);
               map[3][16][23] = 46;
               mapDisplay();
               TEflg[104] = false;
               break;
            }
            textWindowOpen(0,114);
            break;
         }
         if(TEflg[105] && _loc3_ == 45 && _loc2_ == 22 && _loc4_ == 14)
         {
            TEflg[105] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
            break;
         }
         if(TEflg[106] && _loc3_ == 47 && _loc2_ == 20 && _loc4_ == 9)
         {
            if(beltCheck(true,192))
            {
               textWindowOpen(1,192);
               map[3][9][20] = 48;
               mapDisplay();
               TEflg[106] = false;
               break;
            }
            textWindowOpen(0,192);
            break;
         }
         if(TEflg[107] && _loc3_ == 45 && _loc2_ == 12 && _loc4_ == 3)
         {
            if(beltCheck(true,190))
            {
               textWindowOpen(1,190);
               map[3][3][12] = 46;
               mapDisplay();
               TEflg[107] = false;
               break;
            }
            textWindowOpen(0,190);
            break;
         }
         if(TEflg[108] && mapX == 9 && mapY == 18)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[108] = false;
               break;
            }
            textWindowOpen(0,195);
            break;
         }
         if(TEflg[109] && mapX == 16 && mapY == 14)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[109] = false;
               break;
            }
            textWindowOpen(0,195);
            break;
         }
         if(TEflg[110] && mapX == 6 && mapY == 17)
         {
            if(beltCheck(true,195))
            {
               textWindowOpen(1,195);
               TEflg[110] = false;
               break;
            }
            textWindowOpen(0,195);
            break;
         }
         if(TEflg[111] && mapX == 3 && mapY == 13)
         {
            if(beltCheck(true,191))
            {
               textWindowOpen(1,191);
               TEflg[111] = false;
               break;
            }
            textWindowOpen(0,191);
            break;
         }
         if(TEflg[112] && mapX == 23 && mapY == 10)
         {
            if(beltCheck(true,191))
            {
               textWindowOpen(1,191);
               TEflg[112] = false;
               break;
            }
            textWindowOpen(0,191);
            break;
         }
         if(TEflg[113] && mapX == 3 && mapY == 4)
         {
            if(beltCheck(true,33))
            {
               textWindowOpen(1,33);
               TEflg[113] = false;
               break;
            }
            textWindowOpen(0,33);
            break;
         }
         if(TEflg[114] && mapX == 8 && mapY == 3)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[114] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[115] && mapX == 23 && mapY == 8)
         {
            if(beltCheck(true,178))
            {
               textWindowOpen(1,178);
               TEflg[115] = false;
               break;
            }
            textWindowOpen(0,178);
            break;
         }
         if(TEflg[116] && mapX == 23 && mapY == 3)
         {
            if(beltCheck(true,29))
            {
               textWindowOpen(1,29);
               TEflg[116] = false;
               break;
            }
            textWindowOpen(0,29);
            break;
         }
         if(TEflg[117] && mapX == 23 && mapY == 4)
         {
            if(beltCheck(true,17))
            {
               textWindowOpen(1,17);
               TEflg[117] = false;
               break;
            }
            textWindowOpen(0,17);
            break;
         }
         if(TEflg[118] && mapX == 23 && mapY == 5)
         {
            if(beltCheck(true,24))
            {
               textWindowOpen(1,24);
               TEflg[118] = false;
               break;
            }
            textWindowOpen(0,24);
            break;
         }
         if(TEflg[119] && mapX == 23 && mapY == 6)
         {
            if(beltCheck(true,10))
            {
               textWindowOpen(1,10);
               TEflg[119] = false;
               break;
            }
            textWindowOpen(0,10);
            break;
         }
         if(TEflg[120] && _loc3_ == 47 && _loc2_ == 21 && _loc4_ == 8)
         {
            if(beltCheck(true,218))
            {
               textWindowOpen(1,218);
               map[3][8][21] = 48;
               mapDisplay();
               TEflg[120] = false;
               break;
            }
            textWindowOpen(0,218);
            break;
         }
         if(TEflg[122] && !TEflg[313] && mapX == 18 && mapY == 6)
         {
            if(beltCheck(true,221))
            {
               textWindowOpen(1,221);
               TEflg[122] = false;
               break;
            }
            textWindowOpen(0,221);
         }
         break;
      case 4:
         if(TEflg[225] && _loc3_ == 45 && _loc2_ == 16 && _loc4_ == 12)
         {
            if(beltCheck(true,178))
            {
               textWindowOpen(1,178);
               map[4][12][16] = 46;
               mapDisplay();
               TEflg[225] = false;
               break;
            }
            textWindowOpen(0,178);
            break;
         }
         if(TEflg[226] && _loc3_ == 45 && _loc2_ == 17 && _loc4_ == 12)
         {
            if(beltCheck(true,3,1000))
            {
               textWindowOpen(1,3,1000);
               map[4][12][17] = 46;
               mapDisplay();
               TEflg[226] = false;
            }
            break;
         }
         if(TEflg[227] && _loc3_ == 45 && _loc2_ == 18 && _loc4_ == 12)
         {
            TEflg[227] = false;
            BFpriRunaway = true;
            miniEV.flg = true;
            _root.miniEV.no = 3;
            miniEV.enemyNo = 33;
            textWindowOpen(10,66);
            break;
         }
         if(TEflg[228] && _loc3_ == 45 && _loc2_ == 19 && _loc4_ == 12)
         {
            if(beltCheck(true,192))
            {
               textWindowOpen(1,192);
               map[4][12][19] = 46;
               mapDisplay();
               TEflg[228] = false;
               break;
            }
            textWindowOpen(0,192);
            break;
         }
         if(TEflg[229] && _loc3_ == 45 && _loc2_ == 20 && _loc4_ == 12)
         {
            if(beltCheck(true,177))
            {
               textWindowOpen(1,177);
               map[4][12][20] = 46;
               mapDisplay();
               TEflg[229] = false;
               break;
            }
            textWindowOpen(0,177);
            break;
         }
         if(TEflg[230] && _loc3_ == 45 && _loc2_ == 21 && _loc4_ == 12)
         {
            if(beltCheck(true,179))
            {
               textWindowOpen(1,179);
               map[4][12][21] = 46;
               mapDisplay();
               TEflg[230] = false;
               break;
            }
            textWindowOpen(0,179);
            break;
         }
         if(TEflg[231] && _loc3_ == 47 && _loc2_ == 20 && _loc4_ == 14)
         {
            textWindowOpen(10,5);
            map[4][14][20] = 48;
            mapDisplay();
            TEflg[231] = false;
            break;
         }
         if(TEflg[232] && _loc3_ == 47 && _loc2_ == 16 && _loc4_ == 16)
         {
            if(beltCheck(true,180))
            {
               textWindowOpen(1,180);
               map[4][16][16] = 48;
               mapDisplay();
               TEflg[232] = false;
               break;
            }
            textWindowOpen(0,180);
            break;
         }
         if(BTEflg[5] && TEflg[224] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 5)
         {
            if(beltCheck(true,147))
            {
               textWindowOpen(1,147);
               map[4][5][3] = 48;
               mapDisplay();
               TEflg[224] = false;
               break;
            }
            textWindowOpen(0,147);
         }
         break;
      case 5:
         if(TEflg[234] && mapX == 17 && mapY == 17)
         {
            if(beltCheck(true,7))
            {
               textWindowOpen(1,7);
               TEflg[234] = false;
               break;
            }
            textWindowOpen(0,7);
            break;
         }
         if(TEflg[235] && mapX == 3 && mapY == 10)
         {
            if(beltCheck(true,138))
            {
               textWindowOpen(1,138);
               TEflg[235] = false;
               break;
            }
            textWindowOpen(0,138);
            break;
         }
         if(TEflg[236] && mapX == 23 && mapY == 23)
         {
            if(beltCheck(true,139))
            {
               textWindowOpen(1,139);
               TEflg[236] = false;
               break;
            }
            textWindowOpen(0,139);
         }
         break;
      case 6:
         if(TEflg[287] && mapX == 8 && mapY == 4)
         {
            if(beltCheck(true,146))
            {
               textWindowOpen(1,146);
               TEflg[287] = false;
               break;
            }
            textWindowOpen(0,146);
            break;
         }
         if(TEflg[286] && mapX == 6 && mapY == 12)
         {
            if(beltCheck(true,70))
            {
               textWindowOpen(1,70);
               TEflg[286] = false;
               break;
            }
            textWindowOpen(0,70);
         }
         break;
      case 20:
         if(!TEflg[187])
         {
            if(TEflg[184] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 3)
            {
               if(beltCheck(true,113))
               {
                  textWindowOpen(1,113);
                  map[20][3][3] = 48;
                  mapDisplay();
                  TEflg[184] = false;
                  break;
               }
               textWindowOpen(0,113);
               break;
            }
            if(TEflg[185] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 4)
            {
               if(beltCheck(true,209))
               {
                  textWindowOpen(1,209);
                  map[20][4][3] = 48;
                  mapDisplay();
                  TEflg[185] = false;
                  break;
               }
               textWindowOpen(0,209);
            }
         }
         break;
      case 21:
         if(TEflg[186] && !TEflg[188] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 5)
         {
            if(beltCheck(true,127))
            {
               textWindowOpen(1,127);
               map[21][5][3] = 48;
               mapDisplay();
               TEflg[186] = false;
               break;
            }
            textWindowOpen(0,127);
         }
         break;
      case 22:
         if(!TEflg[10])
         {
            if(TEflg[8] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 3)
            {
               if(beltCheck(true,103))
               {
                  textWindowOpen(1,103);
                  map[22][3][3] = 48;
                  mapDisplay();
                  TEflg[8] = false;
                  break;
               }
               textWindowOpen(0,103);
               break;
            }
            if(TEflg[9] && _loc3_ == 47 && _loc2_ == 3 && _loc4_ == 5)
            {
               if(beltCheck(true,3,500))
               {
                  textWindowOpen(1,3,500);
                  map[22][5][3] = 48;
                  mapDisplay();
                  TEflg[9] = false;
               }
            }
         }
   }
   subCheck2();
}
