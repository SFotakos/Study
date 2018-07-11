package sfotakos.todo;

import java.io.Serializable;

public class Task implements Serializable{

    private int taskId;
    private String taskName;
    private boolean isTaskDone;

    public Task(int taskId, String taskName, boolean isTaskDone) {
        this.taskId = taskId;
        this.taskName = taskName;
        this.isTaskDone = isTaskDone;
    }

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public boolean isTaskDone() {
        return isTaskDone;
    }

    public void setTaskDone(boolean taskDone) {
        isTaskDone = taskDone;
    }
}
