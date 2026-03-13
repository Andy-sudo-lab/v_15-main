on(release){
   if(this.txt.text == "" || this.txt.text == " " || this.txt.text == "  " || this.txt.text == "   " || this.txt.text == "　" || this.txt.text == "　　" || this.txt.text == "　　　")
   {
      _root.cName = "名無し";
   }
   else
   {
      _root.cName = this.txt.text;
   }
   _root.initialSet(1);
   _root.mapResetPro();
   _root.textDataSet();
   _root.bigEventCheck(1);
   _root.movieNo = 1;
   _root.ngStartFlg = 1;
   _root.feedInOutMC.play();
}
