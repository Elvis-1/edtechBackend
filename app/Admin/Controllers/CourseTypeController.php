<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Models\CourseType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Layout\Content;
use Encore\Admin\Tree;

class CourseTypeController extends AdminController
{

    // for showing tree form of the menu (drag and drop)
    public function index(Content $content)
    {
        $tree = new Tree(new CourseType);
        return $content->header('Course Types')
        ->body($tree);
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
        $form = new Form(new CourseType());
        $form->select('parent_id', __('Parent Categoryy'))->options((new CourseType())::selectOptions());
        $form->textarea('title', __('Title'));
        $form->textarea('description', __('Description'));
        $form->number('order', __('Order'));

        return $form;
    }
}
