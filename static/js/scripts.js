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