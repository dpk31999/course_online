<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = ['exam_id','name','level'];

    /**
     * Get the exam that owns the Question
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }

    /**
     * Get all of the questionChoices for the Question
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function questionChoices()
    {
        return $this->hasMany(QuestionChoice::class);
    }
}
