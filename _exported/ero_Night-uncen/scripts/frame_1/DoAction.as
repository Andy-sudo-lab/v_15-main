var ero = new MovieClipLoader();
var myLis1 = new Object();
myLis1.onLoadStart = function(tgS)
{
};
myLis1.onLoadProgress = function(tgS, bytesLoaded, bytesTotal)
{
};
myLis1.onLoadComplete = function(tgS)
{
};
myLis1.onLoadInit = function(tgS)
{
};
myLis1.onLoadError = function(target_mc, errorCode)
{
};
ero.addListener(myLis1);
ero.loadClip("./ero_NightOBJ.swf",objMC);
