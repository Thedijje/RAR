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
    }else{
        $('.click_msg').html('<i class="fa fa-camera"></i> Tab above to take snap');
    }
});





function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
          return [position.coords.latitude,position.coords.longitude];

        //console.log( "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude);
      });
    } else { 
      console.log( "Geolocation is not supported by this browser.");
    }
  }

  function windowClose() {
    window.open('','_parent','');
    window.close();
    }