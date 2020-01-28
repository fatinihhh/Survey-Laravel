<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">  
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Profile Survey</div>

                <div class="card-body">
                    <?php if(session('status')): ?>
                        <div class="alert alert-success" role="alert">
                            <?php echo e(session('status')); ?>

                        </div>
                    <?php endif; ?>

                    <ul class="list-group">
                       <?php $__currentLoopData = $questionnaires; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $questionnaire): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class="list-group-item">
                                 
                                 <div class="mt-2">
                                     <h6><strong>Answer your survey here :</strong></h6>

                                     <p>
                                         <a href="<?php echo e($questionnaire->publicPath()); ?>">
                                             <?php echo e($questionnaire->publicPath()); ?>

                                         </a>
                                     </p>
                                 </div>

                                 <a href="<?php echo e($questionnaire->path()); ?>">Result Survey</a>

                            </li>
                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                   </ul>
                </div>
            </div>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\public-survey\resources\views/home.blade.php ENDPATH**/ ?>