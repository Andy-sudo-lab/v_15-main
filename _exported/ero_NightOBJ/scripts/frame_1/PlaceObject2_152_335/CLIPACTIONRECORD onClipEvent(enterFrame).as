onClipEvent(enterFrame){
   var cf = _root._currentframe;
   if(cf == 8)
   {
      var m = _root.mapMC.map[0][99][99];
      _root.TAIKEN = _root.checkMC.m1.flg;
      if(m != undefined && _root.TAIKEN != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 9)
   {
      if(_root.map[0][99][99] != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 11)
   {
      var m = _root.mapMC.trg[99][99];
      if(m != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 12)
   {
      if(_root.trg[99][99] != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 14)
   {
      var m = _root.mapMC.map[21][8][8];
      if(m != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 15)
   {
      if(_root.map[21][8][8] != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 17)
   {
      var m = _root.mapMC.map[34][26][26];
      if(m != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 18)
   {
      if(_root.map[34][26][26] != undefined)
      {
         _root.play();
      }
   }
   else if(cf == 20)
   {
      _root.TAIKEN = _root.checkMC.m1.flg;
      var tg1 = _root.checkMC.m1.ero;
      var tg2 = _root.checkMC.m2.ero;
      if(!_root.TAIKEN)
      {
         if(_root.TAIKEN)
         {
            _root.stop();
            _root.dataCheckMC.gotoAndStop(2);
         }
         else if(tg1 == tg2 && tg1 != undefined)
         {
            _root.keyFlg1 = true;
            _root.keyFlg2 = false;
            _root.keyFlg3 = true;
         }
         else
         {
            _root.stop();
            _root.dataCheckMC.gotoAndStop(2);
         }
      }
      else if(!_root.TAIKEN)
      {
         _root.stop();
         _root.dataCheckMC.gotoAndStop(2);
      }
      else
      {
         _root.keyFlg1 = true;
         _root.keyFlg2 = false;
         _root.keyFlg3 = true;
      }
   }
}
