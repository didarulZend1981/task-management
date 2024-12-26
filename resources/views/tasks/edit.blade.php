
<div class="container">
    <h1>Edit Task</h1>
    <form method="POST" action="{{ route('tasks.update', $task->id) }}">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="title">Task Title</label>
            <input type="text" name="title" id="title" class="form-control" value="{{ $task->title }}" required>
        </div>
        <div class="form-group">
            <label for="description">description</label>
            <input type="text" name="description" id="description" class="form-control" value="{{ $task->description }}">
        </div>
        <div class="form-group">
            <label for="status">Status</label>
            <select name="status" id="status" class="form-control" required>
                <option value="Pending" {{ $task->status == 'Pending' ? 'selected' : '' }}>Pending</option>
                <option value="In Progress" {{ $task->status == 'In Progress' ? 'selected' : '' }}>In Progress</option>
                <option value="Completed" {{ $task->status == 'Completed' ? 'selected' : '' }}>Completed</option>
            </select>
        </div>
        <div class="form-group">
            <label for="due_date">Due Date</label>
            <input type="date" name="due_date" id="due_date" class="form-control" value="{{ $task->due_date }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

