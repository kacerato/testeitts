package com.jme3.util;

import java.lang.ref.WeakReference;

public abstract class NativeObject implements Cloneable {
    public static final int INVALID_ID = -1;
    protected static final int OBJTYPE_AUDIOBUFFER = 6;
    protected static final int OBJTYPE_AUDIOSTREAM = 7;
    protected static final int OBJTYPE_BO = 9;
    protected static final int OBJTYPE_FENCE = 10;
    protected static final int OBJTYPE_FILTER = 8;
    protected static final int OBJTYPE_FRAMEBUFFER = 3;
    protected static final int OBJTYPE_SHADER = 4;
    protected static final int OBJTYPE_SHADERSOURCE = 5;
    protected static final int OBJTYPE_TEXTURE = 2;
    protected static final int OBJTYPE_VERTEXBUFFER = 1;
    protected Object handleRef;

    protected int f81661id;
    protected NativeObjectManager objectManager;
    protected boolean updateNeeded;
    private WeakReference<NativeObject> weakRef;

    public NativeObject() {
        this.objectManager = null;
        this.f81661id = -1;
        this.updateNeeded = true;
        this.handleRef = new Object();
    }

    public void clearUpdateNeeded() {
        this.updateNeeded = false;
    }

    public abstract NativeObject createDestructableClone();

    public void deleteNativeBuffers() {
    }

    public void deleteNativeBuffersInternal() {
        deleteNativeBuffers();
    }

    public abstract void deleteObject(Object obj);

    public void dispose() {
        NativeObjectManager nativeObjectManager = this.objectManager;
        if (nativeObjectManager != null) {
            nativeObjectManager.enqueueUnusedObject(this);
        }
    }

    public int getId() {
        return this.f81661id;
    }

    public abstract long getUniqueId();

    public <T> WeakReference<T> getWeakRef() {
        if (this.weakRef == null) {
            this.weakRef = new WeakReference<>(this);
        }
        return (WeakReference<T>) this.weakRef;
    }

    public boolean isUpdateNeeded() {
        return this.updateNeeded;
    }

    public abstract void resetObject();

    public void setId(int i10) {
        if (this.f81661id != -1) {
            throw new IllegalStateException("ID has already been set for this GL object.");
        }
        this.f81661id = i10;
    }

    public void setNativeObjectManager(NativeObjectManager nativeObjectManager) {
        this.objectManager = nativeObjectManager;
    }

    public void setUpdateNeeded() {
        this.updateNeeded = true;
    }

    public String toString() {
        return "Native" + getClass().getSimpleName() + " " + this.f81661id;
    }

    @Override
    public NativeObject mo1296clone() {
        try {
            NativeObject nativeObject = (NativeObject) super.clone();
            nativeObject.handleRef = new Object();
            nativeObject.objectManager = null;
            nativeObject.f81661id = -1;
            nativeObject.updateNeeded = true;
            return nativeObject;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public NativeObject(int i10) {
        this.objectManager = null;
        this.handleRef = null;
        this.updateNeeded = true;
        this.f81661id = i10;
    }
}
