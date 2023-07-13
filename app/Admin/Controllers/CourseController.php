<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Models\CourseType;
use App\Models\Course;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Layout\Content;
use Encore\Admin\Tree;

class CourseController extends AdminController
{



    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('email', __('Email'));
        $grid->column('email_verified_at', __('Email verified at'));
        $grid->column('password', __('Password'));
        $grid->column('avatar', __('Avatar'));
        $grid->column('type', __('Type'));
        $grid->column('open_id', __('Open id'));
        $grid->column('token', __('Token'));
        $grid->column('access_token', __('Access token'));
        $grid->column('deleted_at', __('Deleted at'));
        $grid->column('phone', __('Phone'));
        $grid->column('remember_token', __('Remember token'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }
    // just for view
    protected function detail($id)
    {
        $show = new Show(CourseType::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Category'));
        $show->field('descriiption', __('Description'));
        $show->field('order', __('Order'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        //   $show->disableActions();
        //   $show->disableCreateButton();
        //   $show->disableExport();
        //   $show->disableFilter();

        return $show;
    }

    // its get called when you create a new form or edit a row
    protected function form()
    {
        $form = new Form(new Course());
        $form->text('name', __('Name'));
        // get our category, pluck method returns information in key values pair.
        $result = CourseType::pluck( 'title','id');
        // select helps you to get on of the options returnded from the result
        $form->select('type_id', __('Category'))->options($result);

        $form->image('thumbnail',__('Thumbnail'))->uniqueName();

        $form->file('video',__('Video'))->uniqueName();
        $form->text('description',__('Description'));
        $form->decimal('price',__('Price'));
        $form->number('lesson_num',__('Lesson Number'));
        $form->number('video_length',__('Video Length'));

        $result = User::pluck('name', 'token');

       $form->select('user_token', __('Teacher'))->options($result);
       $form->display('created_at', __('Created at'));
       $form->display('updated_at',__('Updated at'));

       return $form;
        // $form->select('parent_id', __('Parent Categoryy'))->options((new CourseType())::selectOptions());
        // $form->textarea('title', __('Title'));


        // $form->textarea('description', __('Description'));
        // $form->number('order', __('Order'));

        return $form;
    }
}
