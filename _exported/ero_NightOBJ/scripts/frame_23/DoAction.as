function mapDisplay()
{
   var _loc7_ = 480;
   var _loc6_ = 190;
   var _loc2_ = 100;
   var _loc5_ = mapY - 3;
   var _loc3_;
   var _loc4_;
   while(_loc5_ <= mapY + 3)
   {
      _loc7_ -= 240;
      _loc6_ -= 60;
      _loc3_ = mapX - 3;
      while(_loc3_ <= mapX + 3)
      {
         _loc4_ = "bl" + map[mapNo][_loc5_][_loc3_];
         tgSm.attachMovie(_loc4_,_loc2_,_loc2_);
         tgSm[_loc2_]._x = _loc7_;
         tgSm[_loc2_]._y = _loc6_;
         _loc2_ += 2;
         _loc7_ += 30;
         _loc6_ += 10;
         _loc3_ = _loc3_ + 1;
      }
      _loc2_ += 2;
      _loc5_ = _loc5_ + 1;
   }
   bigEventCheck(0);
   _root.backMC.gotoAndStop(mapNo + 1);
}
function mapDisplayAll()
{
   var _loc5_ = _root.mapAllMC;
   var _loc8_ = 1260;
   var _loc7_ = 390;
   var _loc3_ = 100;
   var _loc4_ = mapY - 13;
   var _loc2_;
   var _loc6_;
   while(_loc4_ <= mapY + 13)
   {
      _loc8_ -= 840;
      _loc7_ -= 260;
      _loc2_ = mapX - 13;
      while(_loc2_ <= mapX + 13)
      {
         if(map[mapNo][_loc4_][_loc2_] == undefined)
         {
            _loc6_ = "m9";
         }
         else
         {
            _loc6_ = "m" + map[mapNo][_loc4_][_loc2_];
         }
         if(_loc2_ == mapX && _loc4_ == mapY)
         {
            _loc6_ = "m44";
         }
         _loc5_.attachMovie(_loc6_,_loc3_,_loc3_);
         _loc5_[_loc3_]._x = _loc8_;
         _loc5_[_loc3_]._y = _loc7_;
         _loc3_ += 2;
         _loc8_ += 30;
         _loc7_ += 10;
         _loc2_ = _loc2_ + 1;
      }
      _loc3_ += 2;
      _loc4_ = _loc4_ + 1;
   }
   _root.backMC.gotoAndStop(mapNo + 1);
   _loc5_._xscale = 28;
   _loc5_._yscale = 40;
   _loc5_._x = 116;
   _loc5_._y = 0;
}
function mapPreparation()
{
   if(moveFlg)
   {
      return undefined;
   }
   moveFlg = true;
   var _loc6_ = new Array(210,270,450,30);
   var _loc5_ = new Array(120,120,200,200);
   var _loc9_ = new Array(mapX - 3,0,mapX + 3,0);
   var _loc8_ = new Array(0,mapY - 3,0,mapY + 3);
   var _loc2_ = new Array(98,84,114,212);
   var _loc10_ = new Array(-30,30,-30,30);
   var _loc7_ = new Array(16,2,16,2);
   var _loc4_ = new Array(mapY,mapX,mapY,mapX);
   var _loc1_ = _loc4_[pHo] - 3;
   var _loc3_;
   while(_loc1_ <= _loc4_[pHo] + 3)
   {
      if(pHo == 0 || pHo == 2)
      {
         _loc3_ = "bl" + map[mapNo][_loc1_][_loc9_[pHo]];
      }
      if(pHo == 1 || pHo == 3)
      {
         _loc3_ = "bl" + map[mapNo][_loc8_[pHo]][_loc1_];
      }
      tgSm.attachMovie(_loc3_,_loc2_[pHo],_loc2_[pHo]);
      tgSm[_loc2_[pHo]]._x = _loc6_[pHo];
      tgSm[_loc2_[pHo]]._y = _loc5_[pHo];
      _loc6_[pHo] += _loc10_[pHo];
      _loc5_[pHo] += 10;
      _loc2_[pHo] += _loc7_[pHo];
      _loc1_ = _loc1_ + 1;
   }
}
function mapMove()
{
   var _loc3_ = new Array(3,-3,-3,3);
   var _loc2_ = new Array(1,1,-1,-1);
   var _loc4_ = new Array(155,155,157,171);
   tgPri.swapDepths(_loc4_[pHo]);
   tgSm._x += _loc3_[pHo] * speed;
   tgSm._y += _loc2_[pHo] * speed;
   tgPri._x -= _loc3_[pHo] * speed;
   tgPri._y -= _loc2_[pHo] * speed;
   mCo++;
   var _loc1_;
   if(mCo == 10 / speed)
   {
      mCo = 0;
      moveFlg = false;
      tgSm._x = 0;
      tgSm._y = 0;
      tgPri._x = 240;
      tgPri._y = mBuf0;
      mapDisplay();
      _loc1_ = 84;
      while(_loc1_ <= 96)
      {
         tgSm[_loc1_].removeMovieClip();
         _loc1_ += 2;
      }
      _loc1_ = 212;
      while(_loc1_ <= 224)
      {
         tgSm[_loc1_].removeMovieClip();
         _loc1_ += 2;
      }
      _loc1_ = 98;
      while(_loc1_ <= 210)
      {
         tgSm[_loc1_].removeMovieClip();
         _loc1_ += 16;
      }
      _loc1_ = 114;
      while(_loc1_ <= 210)
      {
         tgSm[_loc1_].removeMovieClip();
         _loc1_ += 16;
      }
      tgPri.swapDepths(155);
      stateCheckPro();
      enemyAppearProcessing();
   }
}
function mapClear()
{
   var _loc2_ = 100;
   var _loc3_ = mapY - 3;
   var _loc1_;
   while(_loc3_ <= mapY + 3)
   {
      _loc1_ = mapX - 3;
      while(_loc1_ <= mapX + 3)
      {
         tgSm[_loc2_].removeMovieClip();
         _loc2_ += 2;
         _loc1_ = _loc1_ + 1;
      }
      _loc2_ += 2;
      _loc3_ = _loc3_ + 1;
   }
   tgPri.removeMovieClip();
}
function mapResetPro()
{
   var _loc2_ = 0;
   var _loc1_;
   while(_loc2_ <= 99)
   {
      _loc1_ = 0;
      while(_loc1_ <= 99)
      {
         map[0][_loc2_][_loc1_] = mBU[0][_loc2_][_loc1_];
         _loc1_ = _loc1_ + 1;
      }
      _loc2_ = _loc2_ + 1;
   }
   var _loc3_ = 1;
   while(_loc3_ <= 6)
   {
      _loc2_ = 0;
      while(_loc2_ <= 26)
      {
         _loc1_ = 0;
         while(_loc1_ <= 26)
         {
            map[_loc3_][_loc2_][_loc1_] = mBU[_loc3_][_loc2_][_loc1_];
            _loc1_ = _loc1_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc3_ = _loc3_ + 1;
   }
   _loc3_ = 10;
   while(_loc3_ <= 29)
   {
      _loc2_ = 0;
      while(_loc2_ <= 8)
      {
         _loc1_ = 0;
         while(_loc1_ <= 10)
         {
            map[_loc3_][_loc2_][_loc1_] = mBU[_loc3_][_loc2_][_loc1_];
            _loc1_ = _loc1_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc3_ = _loc3_ + 1;
   }
   _loc3_ = 31;
   while(_loc3_ <= 40)
   {
      _loc2_ = 0;
      while(_loc2_ <= 26)
      {
         _loc1_ = 0;
         while(_loc1_ <= 26)
         {
            map[_loc3_][_loc2_][_loc1_] = mBU[_loc3_][_loc2_][_loc1_];
            _loc1_ = _loc1_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc3_ = _loc3_ + 1;
   }
   if(TAIKEN)
   {
      map[0][3][4] = 7;
   }
}
