function interval()
{
   frame = frameCo;
   frameCo = 0;
   tTime++;
}
unloadMovie("mapMC");
ALLCLEARflg = false;
setInterval(function()
{
   interval();
}
,1000);
