<!DOCTYPE html>
<html>
    <head>
        <title>Survey</title>
       

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

    <body>
      <div class="container">
          <div class="row" style="padding-top:10px;">
              <div class="center-align">
                <a class="btn blue waves-effect waves-light lighten-1 white-text" href="/"> Home </a>
                   <?php if(Route::has('login')): ?>
                        <div class="top-right links">
                    <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(url('/home')); ?>">Home</a>
                    <?php else: ?>
                        <a href="<?php echo e(route('login')); ?>">Login</a>

                        <?php if(Route::has('register')): ?>
                            <a href="<?php echo e(route('register')); ?>">Register</a>
                        <?php endif; ?>
                    <?php endif; ?>
                        </div>
                   <?php endif; ?>
              </div>
          </div>
          <div class="row">
              <div class="col s12 m10 offset-m1 l8 offset-l2" style="margin-top:10px;">
                <?php echo $__env->yieldContent('content'); ?>
              </div>
          </div>
      </div>
    </body>
    <script src="<?php echo e(URL::asset('jquery.min.js')); ?>"></script>
     <!-- Scripts -->
    <script src="<?php echo e(asset('js/app.js')); ?>" defer></script>
    <script src="<?php echo e(URL::asset('init.js')); ?>"></script>

</html>
<?php /**PATH C:\laragon\www\public-survey\resources\views/layout.blade.php ENDPATH**/ ?>