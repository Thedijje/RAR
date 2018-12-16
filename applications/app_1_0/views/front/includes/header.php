<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="shortcut icon" href="<?php echo base_url('static/images/RAR.png')?>" type="image/x-icon">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
        crossorigin="anonymous">
    <meta name="theme-color" content="#ff5722" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta name="apple-mobile-web-app-capable" content="yes">


    <meta name="msapplication-navbutton-color" content="#003f5e">
    <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-status-bar-style" content="#003f5e">

    <link rel="manifest" href="<?php echo base_url('manifest.json')?>">
    <script>
        base_url = '<?php echo base_url()?>';
    </script>
    <script src="<?php echo base_url('static/js/app.js')?>"></script>

    <link rel="stylesheet" href="<?php echo base_url('static/css/main.css');?>">
    <title>
        <?php echo $title ?? 'RAR'?>: RAR</title>
</head>

<body>
    <div class="container">
        <div class="row">

            <div class="col-lg-8 app_area col-xs-12">
                <header>
                    <a href="<?php echo base_url();?>">
                        <h3> <img src="<?php echo base_url('static/images/RAR_wide.png')?>" alt="RAR" width="100" class="pwa_logo float-left">
                            <?php echo $heading?>
                        </h3>
                    </a>
                </header>