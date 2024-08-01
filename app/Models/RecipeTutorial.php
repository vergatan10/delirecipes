<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class RecipeTutorial extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name',
        'recipe_id',
    ];

    // RecipeTutorial dimiliki 1 Recipe (belongsTo:singular)
    public function recipe(): BelongsTo
    {
        return $this->belongsTo(Recipe::class);
    }
}
