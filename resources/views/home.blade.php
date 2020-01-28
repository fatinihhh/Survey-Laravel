@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">  
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Profile Survey</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <ul class="list-group">
                       @foreach($questionnaires as $questionnaire)
                            <li class="list-group-item">
                                 
                                 <div class="mt-2">
                                     <h6><strong>Answer your survey here :</strong></h6>

                                     <p>
                                         <a href="{{ $questionnaire->publicPath() }}">
                                             {{ $questionnaire->publicPath() }}
                                         </a>
                                     </p>
                                 </div>

                                 <a href="{{ $questionnaire->path() }}">Result Survey</a>

                            </li>
                       @endforeach
                   </ul>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
