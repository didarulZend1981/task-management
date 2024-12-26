@extends('layouts.app') 
@section('title', 'Create Task') 
@section('content')

<div class="container mx-auto px-4"> 
    <h1 class="text-2xl font-bold m-8 mx-auto w-full text-center ">Tasks Managment</h1>

    <div class="flex justify-content-between align-items-center mb-3 gap-3">
        <!-- Create Task Button -->
        <a href="{{ route('tasks.create') }}" class="btn btn-primary py-2 px-4 border-2 bg-red-100 uppercase ">Create Task</a>

        <!-- Filter Dropdown -->
        <form method="GET" action="{{ route('tasks.index') }}" class="form-inline flex lg:grid-cols-2 sm:grid-cols-1">
           <div>
            <label for="status" class="mr-2 ml-1">Filter by Status:</label>
            <select name="status" id="status" class="form-control mr-2" onchange="this.form.submit()">
                <option value="">All</option>
                <option value="Pending" {{ request('status') == 'Pending' ? 'selected' : '' }}>Pending</option>
                <option value="In Progress" {{ request('status') == 'In Progress' ? 'selected' : '' }}>In Progress</option>
                <option value="Completed" {{ request('status') == 'Completed' ? 'selected' : '' }}>Completed</option>
            </select>
            </div>
            <div>
            <label for="sort ml-1">Sort by Due Date:</label>
            <select name="sort" id="sort" onchange="this.form.submit()">
                <option value="asc" {{ request('sort') == 'asc' ? 'selected' : '' }}>Ascending</option>
                <option value="desc" {{ request('sort') == 'desc' ? 'selected' : '' }}>Descending</option>
            </select>
            </div>
        </form>
    </div>

    <!-- Task Table -->
    <table class="min-w-full bg-white border border-gray-200"> 
        <thead> 
              <tr> 
                <th class="py-2 px-4 border-b">Title</th> 
                <th class="py-2 px-4 border-b">Description</th> 
                <th class="py-2 px-4 border-b">Status</th> 
                <th class="py-2 px-4 border-b">Due Date</th> 
                <th class="py-2 px-4 border-b">Actions</th> 
            </tr> 
        </thead> 
        <tbody>
            @forelse($tasks as $task)
            <tr>
            <td class="py-2 px-4 border-b">{{ $task->title }}</td>
            <td class="py-2 px-4 border-b">{{ $task->description }}</td>
            <td class="py-2 px-4 border-b">{{ $task->status }}</td>
            <td class="py-2 px-4 border-b">{{ $task->due_date }}</td>
            <td class="py-2 px-4 border-b">
            <a href="{{ route('tasks.show', $task->id) }}" class="text-blue-500 hover:underline">show</a>
            <a href="{{ route('tasks.edit', $task->id) }}" class="text-blue-500 hover:underline">Edit</a> 
            <form action="{{ route('tasks.destroy', $task->id) }}" method="POST" style="display:inline;"> 
                @csrf @method('DELETE') <button type="submit" class="text-red-500 hover:underline">Delete</button> 
            </form>
                        

                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="4" class="text-center">No tasks found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
    <!-- Display pagination links --> {{ $tasks->links() }} </div> @endsection