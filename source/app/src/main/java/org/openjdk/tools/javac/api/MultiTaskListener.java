package org.openjdk.tools.javac.api;

import java.util.Arrays;
import java.util.Collection;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.javac.util.Context;

public class MultiTaskListener implements TaskListener {
    ClientCodeWrapper ccw;
    TaskListener[] listeners = EMPTY_LISTENERS;
    public static final Context.Key<MultiTaskListener> taskListenerKey = new Context.Key<>();
    private static final TaskListener[] EMPTY_LISTENERS = new TaskListener[0];

    public MultiTaskListener(Context context) {
        context.put((Context.Key<Context.Key<MultiTaskListener>>) taskListenerKey, (Context.Key<MultiTaskListener>) this);
        this.ccw = ClientCodeWrapper.instance(context);
    }

    public static MultiTaskListener instance(Context context) {
        MultiTaskListener multiTaskListener = (MultiTaskListener) context.get(taskListenerKey);
        return multiTaskListener == null ? new MultiTaskListener(context) : multiTaskListener;
    }

    public void add(TaskListener taskListener) {
        for (TaskListener taskListener2 : this.listeners) {
            if (this.ccw.unwrap(taskListener2) == taskListener) {
                throw new IllegalStateException();
            }
        }
        TaskListener[] taskListenerArr = this.listeners;
        TaskListener[] taskListenerArr2 = (TaskListener[]) Arrays.copyOf(taskListenerArr, taskListenerArr.length + 1);
        this.listeners = taskListenerArr2;
        taskListenerArr2[taskListenerArr2.length - 1] = this.ccw.wrap(taskListener);
    }

    public void clear() {
        this.listeners = EMPTY_LISTENERS;
    }

    @Override
    public void finished(TaskEvent taskEvent) {
        for (TaskListener taskListener : this.listeners) {
            taskListener.finished(taskEvent);
        }
    }

    public Collection<TaskListener> getTaskListeners() {
        return Arrays.asList(this.listeners);
    }

    public boolean isEmpty() {
        return this.listeners == EMPTY_LISTENERS;
    }

    public void remove(TaskListener taskListener) {
        int i10 = 0;
        while (true) {
            TaskListener[] taskListenerArr = this.listeners;
            if (i10 >= taskListenerArr.length) {
                return;
            }
            if (this.ccw.unwrap(taskListenerArr[i10]) == taskListener) {
                TaskListener[] taskListenerArr2 = this.listeners;
                if (taskListenerArr2.length == 1) {
                    this.listeners = EMPTY_LISTENERS;
                    return;
                }
                int length = taskListenerArr2.length - 1;
                TaskListener[] taskListenerArr3 = new TaskListener[length];
                System.arraycopy(taskListenerArr2, 0, taskListenerArr3, 0, i10);
                System.arraycopy(this.listeners, i10 + 1, taskListenerArr3, i10, length - i10);
                this.listeners = taskListenerArr3;
                return;
            }
            i10++;
        }
    }

    @Override
    public void started(TaskEvent taskEvent) {
        for (TaskListener taskListener : this.listeners) {
            taskListener.started(taskEvent);
        }
    }

    public String toString() {
        return Arrays.toString(this.listeners);
    }
}
