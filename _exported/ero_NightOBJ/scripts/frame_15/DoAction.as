this.stop();
var i = 1;
while(i <= 6)
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
var i = 10;
while(i <= 29)
{
   var y = 0;
   while(y <= 8)
   {
      var x = 0;
      while(x <= 10)
      {
         map[i][y][x] = mBU[i][y][x] = _root.mapMC.map[i][y][x];
         x++;
      }
      y++;
   }
   i++;
}
