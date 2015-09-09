# DemoObjcTryCatch
Try Objc Try Catch
</br>
參考 : http://www.awnlab.com/archives/2616.html

1、因為try catch無法捕獲UncaughtException，而OC中大部分crash如：內存溢出、野指針等都是無法捕獲的，而能捕獲的只是像數組越界之類（這真心需要catch麼？註：完全可以通過代碼判斷避免），所以try catch對於OC來說，比較雞肋。</br>
2、簡單的來說，Apple雖然同時提供了錯誤處理（NSError）和異常處理（exception）兩種機制，但是Apple更加提倡開發者使用NSError來處理程序運行中可恢復的錯誤。而異常被推薦用來處理不可恢復的錯誤。    原因有幾個，在非gc情況下，exception容易造成內存管理問題（文檔有描述即使是arc下，也不是安全的）；exception使用block造成額外的開銷，效率較低等等，另外這也的確是Cocoa開發者的習慣。</br>
3、很多人在編程中，錯誤了使用了Try-Catch，把異常處理機制用在了核心邏輯中。把其當成了一個變種的GOTO使用。把大量的邏輯寫在了Catch中。弱弱的說一句，這種情況幹嘛不用ifelse呢。</br>
綜上3點原因，建議大家還是在代碼中少用，可以通過判斷是否非空、判斷數組是否越界等方法進行處理。但是如果需要在代碼中處理一些異常，也是可以的。
