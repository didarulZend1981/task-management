
<div class="container">
    <h1>Create Task</h1>
    <form method="POST" action="{{ route('tasks.store') }}">
        @csrf
        <div class="form-group">
            <label for="title">Task Title</label>
            <input type="text" name="title" id="title" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="description">description</label>
            <input type="text" name="description" id="description" class="form-control">
        </div>
        
        <div class="form-group">
            <label for="status">Status</label>
            <select name="status" id="status" class="form-control" required>
                <option value="Pending">Pending</option>
                <option value="In Progress">In Progress</option>
                <option value="Completed">Completed</option>
            </select>
        </div>
        <div class="form-group">
            <label for="due_date">Due Date</label>
            <input type="date" name="due_date" id="due_date" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success">Create</button>
    </form>
</div>

