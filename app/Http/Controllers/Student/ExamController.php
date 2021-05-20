<?php

namespace App\Http\Controllers\Student;

use App\Exam;
use App\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ExamController extends Controller
{
    public function index()
    {
        return view('dashboard-user.exams.index');
    }

    public function quiz(Exam $exam)
    {
        foreach(Auth::guard('web')->user()->classes as $class)
        {
            if($class->course == $exam->course)
            {
                return view('dashboard-user.exams.quiz',compact('exam'));
            }
        }

        return redirect()->route('student.exam.index');
    }

    public function getQuestion(Exam $exam)
    {
        foreach(Auth::guard('web')->user()->classes as $class)
        {
            if($class->course == $exam->course)
            {
                $questions = DB::select("( select questions.id,questions.name,questions.answer_1,questions.answer_2,questions.answer_3,questions.answer_4 from courseonline.questions where questions.level = 'Easy' and questions.exam_id = ". $exam->id ." ORDER BY RAND() LIMIT 4)
                union
                ( select questions.id,questions.name,questions.answer_1,questions.answer_2,questions.answer_3,questions.answer_4 from courseonline.questions where questions.level = 'Medium' and questions.exam_id = ". $exam->id ." ORDER BY RAND() LIMIT 3)
                union
                ( select questions.id,questions.name,questions.answer_1,questions.answer_2,questions.answer_3,questions.answer_4 from courseonline.questions where questions.level = 'Hard' and questions.exam_id = ". $exam->id ." ORDER BY RAND() LIMIT 3);");

                return response()->json($questions, 200);
            }
        }

        return response()->json([], 200);
    }

    public function checkQuiz(Request $request,Exam $exam)
    {
        $listAnswer = $request->except('_token');   
        $countCorrectAnswer = 0;
        
        foreach($listAnswer as $key => $value)
        {
            $id = \explode("id",$key)[1];
            if(Question::find($id)->answer_right == $value)
            {
                $countCorrectAnswer++;
            }
        }

        Auth::guard('web')->user()->scores()->attach($exam->id,array('score' => $countCorrectAnswer));

        return view('dashboard-user.exams.result-exam',compact('exam','countCorrectAnswer'));
    }
}

