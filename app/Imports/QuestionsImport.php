<?php

namespace App\Imports;

use App\Question;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\WithValidation;

class QuestionsImport implements ToModel, WithValidation
{
    use Importable;

    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Question([
            'exam_id' => $row[1],
            'name' => $row[2],
            'answer_1' => $row[3],
            'answer_2' => $row[4],
            'answer_3' => $row[5],
            'answer_4' => $row[6],
            'answer_right' => $row[7],
            'level' => $row[8],
        ]);
    }

    public function rules() : array
    {
        return [
            '1' => 'required',
            '2' => 'required',
            '3' => 'required',
            '4' => 'required',
            '5' => 'required',
            '6' => 'required',
            '7' => 'required',
            '8' => 'required',
        ];
    }
}
