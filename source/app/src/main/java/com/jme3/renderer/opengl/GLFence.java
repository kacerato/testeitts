package com.jme3.renderer.opengl;

import com.jme3.renderer.Renderer;
import com.jme3.util.NativeObject;
import java.util.concurrent.atomic.AtomicInteger;

public class GLFence extends NativeObject {
    private static final AtomicInteger nextUniqueId = new AtomicInteger(1);
    private final long fenceId;
    private Object nativeSync;

    public GLFence(long j10, Object obj) {
        this.fenceId = j10;
        this.f81661id = nextUniqueId.getAndIncrement();
        this.nativeSync = obj;
        clearUpdateNeeded();
    }

    @Override
    public NativeObject createDestructableClone() {
        return new GLFence(this);
    }

    @Override
    public void deleteObject(Object obj) {
        ((Renderer) obj).deleteFence(this);
    }

    public long getFenceId() {
        return this.fenceId;
    }

    public Object getNativeSync() {
        return this.nativeSync;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 42949672960L;
    }

    @Override
    public void resetObject() {
        this.nativeSync = null;
        this.f81661id = -1;
        setUpdateNeeded();
    }

    private GLFence(GLFence gLFence) {
        this.fenceId = gLFence.fenceId;
        this.nativeSync = gLFence.nativeSync;
        this.f81661id = gLFence.f81661id;
    }
}
