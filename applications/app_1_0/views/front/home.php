
        <section class="camera text-center">
            <input type="file" accept="image/*" class="d-none" capture="environment" id="click_pic" onchange="readURL(this,'cam_preview')">
            <img src="<?php echo base_url('static/images/camera.png');?>" alt="Click image" id="cam_preview" onclick="$('#click_pic').click();">

            <p class="text-center step_2">
                
                <a href="<?php echo base_url('select')?>" class="btn-lg btn-block proceed_select d-none"><button class="btn btn-warning btn-block"><i class="fa fa-arrow-right fa-fw"></i> Proceed</button></a>
            </p>
           
        </section>
    
       