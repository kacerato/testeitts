package com.jme3.shader;

import com.jme3.shader.bufferobject.BufferObject;
import java.lang.ref.WeakReference;

public class ShaderBufferBlock extends ShaderVariable {
    protected BufferObject bufferObject;
    protected WeakReference<BufferObject> bufferObjectRef;
    protected BufferType type;

    public enum BufferType {
        UniformBufferObject,
        ShaderStorageBufferObject
    }

    public void clearUpdateNeeded() {
        this.updateNeeded = false;
    }

    public BufferObject getBufferObject() {
        return this.bufferObject;
    }

    public WeakReference<BufferObject> getBufferObjectRef() {
        return this.bufferObjectRef;
    }

    public BufferType getType() {
        return this.type;
    }

    public boolean isUpdateNeeded() {
        return this.updateNeeded;
    }

    public void reset() {
        this.location = -1;
        this.updateNeeded = true;
    }

    public void setBufferObject(BufferType bufferType, BufferObject bufferObject) {
        if (bufferObject == null) {
            throw new IllegalArgumentException("for storage block " + this.name + ": storageData cannot be null");
        }
        if (bufferObject == this.bufferObject && bufferType == this.type) {
            return;
        }
        this.bufferObject = bufferObject;
        this.bufferObjectRef = new WeakReference<>(bufferObject);
        this.type = bufferType;
        this.updateNeeded = true;
    }

    public void setBufferObjectRef(WeakReference<BufferObject> weakReference) {
        this.bufferObjectRef = weakReference;
    }
}
