<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoPostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        switch ($this->method()) {
            case 'POST':
            {
                return [
                    'post_source' => 'required',
                    'post_title' => 'required|min:3'
                ];
            }
            case 'PUT':
                return [
                    'post_source' => 'required',
                    'post_title' => 'required|min:3'
                ];
            default: break;
        }
    }
}
