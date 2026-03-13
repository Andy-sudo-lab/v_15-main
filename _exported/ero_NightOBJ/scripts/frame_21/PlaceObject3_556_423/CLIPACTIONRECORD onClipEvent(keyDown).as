onClipEvent(keyDown){
   var cfR = _root._currentframe - 20;
   switch(cfR)
   {
      case 10:
      case 15:
      case 20:
   }
   var cfS = _root.startGamenMC._currentframe;
   if(cfS != 3)
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
   }
}
