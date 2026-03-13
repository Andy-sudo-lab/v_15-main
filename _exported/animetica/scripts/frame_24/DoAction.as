function TOcheck(no, fg)
{
   var _loc1_ = new Array();
   _loc1_[0] = true;
   _loc1_[1] = _loc1_[5] = !pf[0];
   _loc1_[2] = !pf[0] && !pf[1];
   _loc1_[3] = !pf[0] && !pf[1] && !pf[2];
   _loc1_[4] = !pf[0] && !pf[1] && !pf[2] && !pf[3];
   _loc1_[6] = _loc1_[7] = !pf[0] && !pf[5];
   _loc1_[8] = _loc1_[9] = !pf[0] && !pf[5] && !pf[7];
   _loc1_[10] = !pf[0] && !pf[5] && !pf[7] && !pf[9];
   _loc1_[11] = !pf[4] && _loc1_[4];
   _loc1_[12] = !pf[10] && _loc1_[9];
   if(fg)
   {
      if(_loc1_[no] && pf[no])
      {
         return true;
      }
      return false;
   }
   if(_loc1_[no])
   {
      return true;
   }
   return false;
}
function aCompletionPro(fg, no)
{
   var _loc2_;
   if(fg)
   {
      if(no != undefined)
      {
         _loc2_ = "partsFlg" + no;
         enemy[eneNo][_loc2_] = false;
      }
      BFatkNo = 0;
   }
   if(BFattackSort != 0)
   {
      attackSortPro();
      BFattackSort = 0;
   }
   tgTr.gotoAndPlay(2);
   AstartFlg = false;
   bfAS = false;
   tejoh = false;
   BFbuf3 = false;
   normalIn = false;
   BFbufCo = 0;
   BFco = 0;
   BFcoE = 0;
   cCo++;
   transP1 = 0;
   transP2 = 0;
   _root.SVMC.S_vibMC3.gotoAndStop(1);
}
function BGMchange()
{
   if(!Key.isDown(82) && !Key.isDown(84))
   {
      return undefined;
   }
   if(Key.isDown(82) && keyWait(1))
   {
      BGMno--;
      if(BGMno <= -1)
      {
         BGMno = 7;
      }
      BGMstartPro();
   }
   else if(Key.isDown(84) && keyWait(1))
   {
      BGMno++;
      if(BGMno >= 8)
      {
         BGMno = 0;
      }
      BGMstartPro();
   }
}
function BGMstartPro(no)
{
   if(no != undefined)
   {
      BGMno = no;
   }
   var _loc1_;
   if(BGMno == 7)
   {
      _loc1_ = 0;
      while(_loc1_ <= 6)
      {
         bgm[_loc1_].stop();
         _loc1_ = _loc1_ + 1;
      }
   }
   else
   {
      _loc1_ = 0;
      while(_loc1_ <= 6)
      {
         bgm[_loc1_].stop();
         _loc1_ = _loc1_ + 1;
      }
      bgm[BGMno].setVolume(20);
      bgm[BGMno].start(0,99999);
   }
}
function musicFO()
{
   if(!BFbuf3 || BFbuf3 && !BFpriFinish && !BFeneFinish)
   {
      return undefined;
   }
   if(sVolco >= 0)
   {
      sVolco--;
   }
   var _loc3_ = Math.round(sVolco);
   if(mVolco >= 0)
   {
      mVolco -= 0.2;
   }
   var _loc2_ = Math.round(mVolco);
   var _loc1_ = 0;
   while(_loc1_ <= 6)
   {
      bgm[_loc1_].setVolume(_loc2_);
      _loc1_ = _loc1_ + 1;
   }
}
function backChange()
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
   _root.backMC.gotoAndStop(SBBno[SBback]);
}
function eneLoadPro(e)
{
   var _loc2_;
   if(!BFstartFlg)
   {
      BFstartFlg = true;
      EloadFlg = true;
      enemySet(e);
      textWindowClose();
      enemyTaget();
      tgS._x = 750;
      tgFio.loadingMC._visible = true;
      _loc2_ = myMC.loadClip(Sname,_root.stageMC.stageBMC);
   }
   if(EloadFlg)
   {
      tgFio.stop();
   }
   else
   {
      enemyTaget();
      _root.gotoAndStop(40);
   }
}
