@extends('layouts.app') 
@section('title', 'Task Details') 
@section('content')

<div class="container mx-auto px-4"> 
    <h1 class="text-3xl font-bold mt-8 text-center text-gray-800">Task Details</h1>

    <div class="max-w-2xl mx-auto bg-gray-50 shadow-lg rounded-lg p-8 mt-6">
        <h2 class="text-2xl font-semibold mb-6 text-gray-900">{{ $task->title }}</h2>
        
        <div class="mb-4">
            <p class="text-gray-600"><span class="font-medium text-gray-800">Description:</span> {{ $task->description }}</p>
        </div>
        
        <div class="mb-4">
            <p class="text-gray-600"><span class="font-medium text-gray-800">Status:</span> {{ $task->status }}</p>
        </div>
        
        <div class="mb-4">
            <p class="text-gray-600"><span class="font-medium text-gray-800">Due Date:</span> {{ $task->due_date }}</p>
        </div>

        <div class="flex justify-between items-center mt-8">
            <a href="{{ route('tasks.edit', $task->id) }}" class="text-white bg-blue-500 hover:bg-blue-600 font-medium rounded-md px-4 py-2">
                Edit
            </a>
            <form action="{{ route('tasks.destroy', $task->id) }}" method="POST" class="inline-block">
                @csrf
                @method('DELETE')
                <button type="submit" class="text-white bg-red-500 hover:bg-red-600 font-medium rounded-md px-4 py-2">
                    Delete
                </button>
            </form>
        </div>
    </div>

    <div class="mt-8 text-center">
        <a href="{{ route('tasks.index') }}" class="text-blue-600 hover:text-blue-700 font-medium">
            &larr; Back to Task List
        </a>
    </div>
</div> 

@endsection
