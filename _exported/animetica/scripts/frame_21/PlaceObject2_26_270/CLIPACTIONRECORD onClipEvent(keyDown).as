onClipEvent(keyDown){
   var cfR = _root._currentframe - 20;
   switch(cfR)
   {
      case 10:
      case 15:
      case 20:
   }
   var _loc0_;
   if(_root.initSetMC.lv != "patternSet")
   {
      if(Key.getCode() == 65 && _root.keyWait(0))
      {
         _root._quality = "LOW";
      }
      else if(Key.getCode() == 83 && _root.keyWait(0))
      {
         _root._quality = "MEDIUM";
      }
      else if(Key.getCode() == 68 && _root.keyWait(0))
      {
         _root._quality = "HIGH";
      }
      if(Key.getCode() == 69 && _root.keyWait(0))
      {
         if(_root.winAlpha)
         {
            _root.winAlpha = false;
            _root.messageMC._alpha = 1;
            _root.panelMC._alpha = 1;
            _root.tgS.gaugeMC2._alpha = _loc0_ = 1;
            _root.tgS.gaugeMC._alpha = _loc0_;
         }
         else
         {
            _root.winAlpha = true;
            _root.messageMC._alpha = 100;
            _root.panelMC._alpha = 100;
            _root.tgS.gaugeMC2._alpha = _loc0_ = 100;
            _root.tgS.gaugeMC._alpha = _loc0_;
         }
      }
   }
}
