<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    

    public function index(Request $request){
        $status = $request->query('status');
        // $tasks = Task::where('user_id', auth()->id())
        // Retrieve tasks based on the status or get all tasks if no status is specified
        // $tasks = Task::where('user_id', 1)
           $tasks = Task::where('user_id', auth()->id())
            ->when($status, function ($query, $status) {
                return $query->where('status', $status);
            })
            ->orderBy('due_date', $request->sort === 'asc' ? 'asc' : 'desc')
            ->paginate(10);

            // Check if the request wants JSON 
            if ($request->wantsJson()) { 
                return response()->json([ 
                    'tasks' => $tasks, 
                    'status' => $status 
                ]); 
            }
            
            // return response()->json([ 
            //     'tasks' => $tasks, 
            //     'status' => $status 
            // ]); 
            
         return view('tasks.index', compact('tasks', 'status'));

    }


    public function create(){
        // Check if the request wants JSON
        if (request()->wantsJson()) { 
            return response()->json(['message' => 'Provide data to create a new task']);
         }


        return view('tasks.create');

    }

    public function store(Request $request){
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'required|in:Pending,In Progress,Completed',
            'due_date' => 'nullable|date',
        ]);

        $task=Task::create([
            'title' => $request->title,
            'description' => $request->description,
            'status' => $request->status,
            'due_date' => $request->due_date,
            'user_id' => auth()->id(),
            // 'user_id' => 1,
        ]);

        if ($request->wantsJson()) { 
            return response()->json([
                'message' => 'Task created successfully', 
                'task' => $task
            ]); }

        return redirect()->route('tasks.index')->with('success', 'Task created successfully.');

    }

    public function edit(Task $task){

        if (request()->wantsJson()) { 
            return response()->json(['task' => $task]); 
        }

        return view('tasks.edit', compact('task'));
    }

    public function update(Request $request, Task $task){
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'required|in:Pending,In Progress,Completed',
            'due_date' => 'nullable|date',
        ]);

        $task->update($request->all());
        if ($request->wantsJson()) { 
            return response()->json([
                'message' => 'Task updated successfully', 
                'task' => $task
            ]); 
        }

        return redirect()->route('tasks.index')->with('success', 'Task updated successfully.');
    }

    public function destroy(Task $task){
        $task->delete();
        if (request()->wantsJson()) { return response()->json(
            ['message' => 'Task deleted successfully'
        ]); }

        return redirect()->route('tasks.index')->with('success', 'Task deleted successfully.');
    }



    

}
