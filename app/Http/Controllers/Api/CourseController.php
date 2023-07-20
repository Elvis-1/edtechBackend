<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    // return all the course list
    public function courseList(){

        try{

            $result = Course::select('name', 'thumbnail','lesson_num', 'price', 'id')->get();
            return response()->json([
                'code' => 200,
                'msg' => 'Courses are available',
                'data' => $result
            ], 200);
        }catch(\Throwable $e){
               return response()->json([
                'code'=> 500,
                'msg'=>$e->getMessage(),
                'data'=>null,
               ], 500);
        }

    }

    // return course detail
    public function courseDetail(Request $request){
$id = $request->id;
        try{

            $result = Course::where('id','=',$id)->select('name',
            'user_token',
            'description',
            'video_length',
            'thumbnail','lesson_num', 'price',
            'downloadable_res',
            'id')->first();

            return response()->json([
                'code' => 200,
                'msg' => 'Courses detail is available',
                'data' => $result
            ], 200);
        }catch(\Throwable $e){
               return response()->json([
                'code'=> 500,
                'msg'=>$e->getMessage(),
                'data'=>null,
               ], 500);
        }

    }
}
