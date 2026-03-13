on(release){
   _root.keyWait(2);
   var cf = this._currentframe;
   if(cf == 2)
   {
      this.gotoAndStop(3);
   }
   else if(cf == 3)
   {
      this.gotoAndStop(2);
   }
}
