<section class="text-center image_preview">
    <?php if(isset($image_preview)):?>
        <img src="<?php echo base_url($image_preview)?>" alt="Click image" id="cam_preview">
    <?php else:?>
    <h3><?php $this->lib->alert_message()?></h3>
    <?php endif;?>

    <div class="clearfix"></div>
    <br>
    <div class="form-group">
<form action="<?php echo base_url('select/save')?>" class="form button_nav save_incident" method="post">
<div class="input-group d-none">

    <input type="text" class="form-control form-control-lg" id="inlineFormInputGroup" placeholder="Your message">
    <div class="input-group-prepend">
        <div class="input-group-text"><i class="fa fa-microphone fa-lg"></i> </div>
    </div>
</div>

</div>
    
    <div class="form-group">
        <?php foreach($services as $service):
            
            ?>
            <span data-service-id="<?php echo $service->service_id;?>" class="select_service btn <?php echo $service->service_btn_class;?> btn-block btn-lg"><i class="fa <?php echo $service->service_icon;?> fa-2x fa-fw"></i> <?php echo $service->service_name;;?><span class="float-right d-none selected"><i class="fa fa-check"></i></span> </span>
        <?php endforeach;?>
    </div>
    <input type="hidden" name="selected_service" class="d-none service_input" value="">
    <div class="clearfix"></div>
</form>

</section>

<script>
    $(document).on('click','.select_service',function(){
        var service_id  =   $(this).data('service-id');
        $('.service_input').val(service_id);
        $(this).closest('.selected').removeClass('d-none');
        setTimeout(() => {
            $('.save_incident').submit();
        }, 500);
        
    });
</script>