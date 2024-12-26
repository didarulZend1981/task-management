@extends('layouts.app') 
@section('title', 'Create Task') 
@section('content')

<div class="p-4 mx-auto max-w-xl"> 
    
    <h1 class="text-2xl font-bold m-8 mx-auto w-full text-center ">Edit Task</h1>
    <form method="POST" action="{{ route('tasks.update', $task->id) }}" class="mt-8 space-y-4">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="title" class="block w-full px-3 py-2" >Task Title</label>
            <input type="text" name="title" id="title" class="form-control w-full rounded-md py-3 px-4 text-gray-800 bg-gray-100
            focus:bg-transparent text-sm outline-blue-500" value="{{ $task->title }}" required>
        </div>
        <div class="form-group">
            <label for="description" class="block w-full px-3 py-2" >description</label>

            
            <textarea name="description" id="description"  placeholder='Message' rows="6"
                    class="w-full rounded-md px-4 text-gray-800 bg-gray-100 focus:bg-transparent text-sm pt-3 outline-blue-500">{{ $task->description }}</textarea>
        </div>
        <div class="form-group">
            <label for="status" class="block w-full px-3 py-2" >Status</label>
            <select name="status" id="status" class="block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm" required>
                <option value="Pending" {{ $task->status == 'Pending' ? 'selected' : '' }}>Pending</option>
                <option value="In Progress" {{ $task->status == 'In Progress' ? 'selected' : '' }}>In Progress</option>
                <option value="Completed" {{ $task->status == 'Completed' ? 'selected' : '' }}>Completed</option>
            </select>
        </div>
        <div class="form-group">
            <label for="due_date" class="block w-full px-3 py-2" >Due Date</label>
            <input type="date" name="due_date" id="due_date" class="form-control" value="{{ $task->due_date }}" required>
        </div>
        <button type="submit" class="btn btn-primary btn-success text-white bg-blue-500 hover:bg-blue-600 tracking-wide rounded-md text-sm px-4 py-3 w-full">Update</button>
        
    </form>
</div>
@endsection
