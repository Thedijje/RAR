<section class="text-center offline">
    <p class="bg-warning"><i class="fa fa-unlink"></i> Your device is offline, Call our emergancy service directory</p>
    <h1 class="text-center"><i class="fa fa-unlink fa-3x"></i></h1>
    <br><br>
    <br><br>
    <br><br>
    <div class="button_nav">
    <?php foreach($services as $service):?>

        <a href="call:<?php echo $service->service_phone;?>">
        
        <button class="btn btn-warning btn-lg btn-block">
                <i class="fa fa-fw <?php echo $service->service_icon;?>"></i> Call <?php echo $service->service_name;?>
            </button>
            <br>
            <div class="clearfix"></div>

        </a>

        <?php endforeach;?>
    </div>

</section>
