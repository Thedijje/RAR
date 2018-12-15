function readURL(input,preview) {
    if (input.files && input.files[0]){
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#'+preview).attr('src', e.target.result);
            $('#'+preview).parent().removeClass("hidden");
            $('#'+preview).parent().addClass("visible");
        }
        reader.readAsDataURL(input.files[0]);
    }
}


$(document).on('change','#click_pic',function(){
    $('.proceed_select').removeClass('d-none');
});

$(document).on('change','#click_pic',function(){
    if(this.files.length==0){
        $('this').attr('src',base_url+'static/images/camera.png');
        return true;
    }
});


button.onclick = function() {
    var startPos;
    var nudge = document.getElementById("nudge");
  
    var showNudgeBanner = function() {
      nudge.style.display = "block";
    };
  
    var hideNudgeBanner = function() {
      nudge.style.display = "none";
    };
  
    var nudgeTimeoutId = setTimeout(showNudgeBanner, 5000);
  
    var geoSuccess = function(position) {
      hideNudgeBanner();
      // We have the location, don't display banner
      clearTimeout(nudgeTimeoutId);
  
      // Do magic with location
      startPos = position;
      document.getElementById('startLat').innerHTML = startPos.coords.latitude;
      document.getElementById('startLon').innerHTML = startPos.coords.longitude;
    };
    var geoError = function(error) {
      switch(error.code) {
        case error.TIMEOUT:
          // The user didn't accept the callout
          showNudgeBanner();
          break;
      }
    };
  
    navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
  };