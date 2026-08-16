package com.jme3.scene.control;

import com.jme3.app.AppTask;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;

public class UpdateControl extends AbstractControl {
    private ConcurrentLinkedQueue<AppTask<?>> taskQueue = new ConcurrentLinkedQueue<>();

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        AppTask<?> poll = this.taskQueue.poll();
        while (poll != null) {
            while (poll.isCancelled()) {
                poll = this.taskQueue.poll();
                if (poll == null) {
                    return;
                }
            }
            poll.invoke();
            poll = this.taskQueue.poll();
            if (poll == null) {
                return;
            }
        }
    }

    public <V> Future<V> enqueue(Callable<V> callable) {
        AppTask<?> appTask = new AppTask<>(callable);
        this.taskQueue.add(appTask);
        return appTask;
    }

    @Override
    public Object jmeClone() {
        UpdateControl updateControl = (UpdateControl) super.jmeClone();
        ConcurrentLinkedQueue<AppTask<?>> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        updateControl.taskQueue = concurrentLinkedQueue;
        concurrentLinkedQueue.addAll(this.taskQueue);
        return updateControl;
    }
}
