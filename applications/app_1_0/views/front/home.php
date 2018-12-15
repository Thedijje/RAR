
        <section class="camera text-center">
            <form action="<?php echo base_url('home/save')?>" class="form" method="post" enctype="multipart/form-data">
                <input name="clicked_pic" type="file" accept="image/*" class="d-none" capture="environment" id="click_pic" onchange="readURL(this,'cam_preview')">
                <img src="<?php echo base_url('static/images/camera.png');?>" alt="Click image" id="cam_preview" onclick="$('#click_pic').click();">

                <p class="text-center step_2">
                    
                    <button class="btn-lg btn-block proceed_select d-none btn btn-warning"><i class="fa fa-arrow-right fa-fw"></i> Proceed</button>
                </p>
            </form>
           
        </section>
    
       