<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuestionnaireController extends Controller
{

	public function create()
    {
    	return view('questionnaire.create');
    }

    public function store()
    {
    	$data = request()->validate
    	([
    		'title' => 'required',
    		'purpose' => 'required', 
    	]);

        
        $questionnaire = user()->questionnaires()->create($data);

    	//$questionnaire = auth()->user()->questionnaires()->create($data);

    	return redirect('questionnaires/'.$questionnaire->id);
    }

    public function show(\App\Questionnaire $questionnaire)
    {
        $questionnaire->load('questions.answers.responses');


    	return view('questionnaire.show', compact('questionnaire'));
    }
}
