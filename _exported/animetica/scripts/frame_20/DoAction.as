function interval()
{
   frame = frameCo;
   frameCo = 0;
   tTime++;
}
setInterval(function()
{
   interval();
}
,1000);
