this.stop();
var y = 0;
while(y <= 99)
{
   var x = 0;
   while(x <= 99)
   {
      map[0][y][x] = mBU[0][y][x] = _root.mapMC.map[0][y][x];
      x++;
   }
   y++;
}
