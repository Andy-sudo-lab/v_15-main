this.stop();
var i = 31;
while(i <= 40)
{
   var y = 0;
   while(y <= 26)
   {
      var x = 0;
      while(x <= 26)
      {
         map[i][y][x] = mBU[i][y][x] = _root.mapMC.map[i][y][x];
         x++;
      }
      y++;
   }
   i++;
}
