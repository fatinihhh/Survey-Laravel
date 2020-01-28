<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <!-- <form action="/surveys/<?php echo e($questionnaire->id); ?>-<?php echo e(Str::slug($questionnaire->title)); ?>" method="post"> --> 
            <!-- <div class="card">
                <div class="card-header"><?php echo e($questionnaire->title); ?></div>

                <div class="card-body">

                    <a class="btn btn-dark" href="/questionnaires/<?php echo e($questionnaire->id); ?>/questions/create">Add New Question</a>
                	<a class="btn btn-dark" href="/surveys/<?php echo e($questionnaire->id); ?>-<?php echo e(Str::slug($questionnaire->title)); ?>">Take Survey</a>

                </div>
            </div> -->

            <?php $__currentLoopData = $questionnaire->questions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="card mt-4">
                    <div class="card-header"><strong><?php echo e($key + 1); ?></strong>. <?php echo e($question->question); ?></div>

                    <div class="card-body">

                        <ul class="list-group">
                          
                          <?php $__currentLoopData = $question->answers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $answer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class="list-group-item d-flex justify-content-between">
                                <div><?php echo e($answer->answer); ?></div>
                                <div>( Total : <?php echo e($answer->responses->count()); ?> )</div>
                                <!--<div><?php echo e(($answer->responses->count() * 100) / $question->responses->count()); ?>%</div>-->
                            </li>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          
                        </ul>

                </div>

              <!--   <div class="card-footer">
                    <form action="/questionnaires/<?php echo e($questionnaire->id); ?>/questions/<?php echo e($question->id); ?>" method="post">
                        <?php echo method_field('DELETE'); ?>
                        <?php echo csrf_field(); ?>

                        <button type="submit" class="btn btn-sm btn-outline-danger">Delete Question</button>
                    </form>
                    
                </div> -->
                            
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                             <!-- <div >
                                <button type="submit" class="btn btn-primary mt-4">Take Another Survey</button>
                            </div> -->

                           <!--  </form> -->

                           <!-- <a href="surveys/1-profile-survey" class="btn btn-dark">Take Another Survey</a> -->
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\public-survey\resources\views/questionnaire/show.blade.php ENDPATH**/ ?>