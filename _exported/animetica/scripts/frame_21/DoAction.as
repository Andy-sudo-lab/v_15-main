var load1 = new MovieClipLoader();
var loadSound1 = new Object();
load1.addListener(loadSound1);
load1.loadClip(_global.baseUrl + "dataSV1.swf",SVMC);
loadSound1.onLoadStart = function(tg)
{
   dText.text += "ｻｳﾝﾄﾞ  ﾛｰﾄﾞ開始：\n" + tg + "\n";
};
loadSound1.onLoadProgress = function(tgS, bytesLoaded, bytesTotal)
{
   dText.text += bytesLoaded + " / " + bytesTotal + "\n";
   var _loc5_ = Math.round(bytesLoaded / bytesTotal * 100);
   var _loc6_ = _root.feedInOutMC.loadingMC.bar;
   _loc6_.gotoAndStop(_loc5_);
};
loadSound1.onLoadComplete = function(tgS)
{
   dText.text += "ｻｳﾝﾄﾞ  読み込み終了:\n" + tgS + "\n";
   var _loc3_ = _root.feedInOutMC.loadingMC;
   _loc3_._visible = false;
};
loadSound1.onLoadInit = function(tg)
{
   dText.text += "ｻｳﾝﾄﾞ  先頭ﾌﾚｰﾑ　ｱｸｼｮﾝ実行 \n" + tg + "\n ﾒｲﾝﾀｲﾑﾗｲﾝ：" + _root._currentframe;
};
loadSound1.onLoadError = function(target_mc, errorCode)
{
   dText.text += "ｴﾗｰ!!!!! ERROR CODE =　" + errorCode + "\n" + target_mc;
};
