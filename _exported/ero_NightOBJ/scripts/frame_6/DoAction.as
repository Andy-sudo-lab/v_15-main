map = new Array();
mBU = new Array();
trg = new Array();
var i = 0;
while(i <= 40)
{
   map[i] = new Array();
   mBU[i] = new Array();
   i++;
}
var y = 0;
while(y <= 99)
{
   map[0][y] = new Array();
   mBU[0][y] = new Array();
   trg[y] = new Array();
   y++;
}
var i = 1;
while(i <= 6)
{
   var y = 0;
   while(y <= 26)
   {
      map[i][y] = new Array();
      mBU[i][y] = new Array();
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
      map[i][y] = new Array();
      mBU[i][y] = new Array();
      y++;
   }
   i++;
}
var i = 31;
while(i <= 40)
{
   var y = 0;
   while(y <= 26)
   {
      map[i][y] = new Array();
      mBU[i][y] = new Array();
      y++;
   }
   i++;
}
