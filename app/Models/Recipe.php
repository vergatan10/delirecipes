<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class Recipe extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name',
        'slug',
        'thumbnail',
        'about',
        'url_file',
        'url_video',
        'category_id',
        'recipe_author_id',
    ];

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }

    // hanya dimiliki oleh satu category (oneToMany: singular)
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    // Recipe punya banyak RecipePhoto (hasMany:plural)
    public function photos(): HasMany
    {
        return $this->hasMany(RecipePhoto::class);
    }

    // Recipe punya banyak tutorial (hasMany:plural)
    public function tutorials(): HasMany
    {
        return $this->hasMany(RecipeTutorial::class);
    }

    // Recipe dimiliki 1 RecipeAuthor (belongsTo:singular)
    public function author(): BelongsTo
    {
        return $this->belongsTo(RecipeAuthor::class, 'recipe_author_id');
    }

    // Recipe punya banyak RecipeIngredient (hasMany:plural)
    public function recipeIngredients(): HasMany
    {
        return $this->hasMany(RecipeIngredient::class);
    }
}
