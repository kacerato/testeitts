package com.jme3.renderer.opengl;

import com.jme3.renderer.RendererException;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import java.nio.IntBuffer;

public class ShaderStorageBufferObject extends NativeObject {

    private final GL4 f81624gl;

    public ShaderStorageBufferObject(GL4 gl4) {
        this.f81624gl = gl4;
        ensureBufferReady();
    }

    private void ensureBufferReady() {
        if (isUpdateNeeded()) {
            IntBuffer createIntBuffer = BufferUtils.createIntBuffer(1);
            this.f81624gl.glGenBuffers(createIntBuffer);
            this.f81661id = createIntBuffer.get(0);
            clearUpdateNeeded();
        }
    }

    @Override
    public NativeObject createDestructableClone() {
        return new ShaderStorageBufferObject(this);
    }

    @Override
    public void deleteObject(Object obj) {
        if (this.f81661id != -1) {
            IntBuffer createIntBuffer = BufferUtils.createIntBuffer(1);
            createIntBuffer.put(this.f81661id);
            createIntBuffer.flip();
            this.f81624gl.glDeleteBuffers(createIntBuffer);
        }
        resetObject();
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 38654705664L;
    }

    public void initialize(int[] iArr) {
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(iArr.length);
        createIntBuffer.put(iArr);
        createIntBuffer.flip();
        initialize(createIntBuffer);
    }

    public int[] read(int i10) {
        int[] iArr = new int[i10];
        read(iArr);
        return iArr;
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        setUpdateNeeded();
    }

    public void read(int[] iArr) {
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(iArr.length);
        read(createIntBuffer);
        createIntBuffer.get(iArr);
    }

    private ShaderStorageBufferObject(ShaderStorageBufferObject shaderStorageBufferObject) {
        this.f81624gl = shaderStorageBufferObject.f81624gl;
        this.f81661id = shaderStorageBufferObject.f81661id;
    }

    public void initialize(IntBuffer intBuffer) {
        ensureBufferReady();
        this.f81624gl.glBindBuffer(37074, this.f81661id);
        this.f81624gl.glBufferData(37074, intBuffer, 35050);
    }

    public void read(IntBuffer intBuffer) {
        if (!isUpdateNeeded()) {
            this.f81624gl.glBindBuffer(37074, this.f81661id);
            this.f81624gl.glGetBufferSubData(37074, 0L, intBuffer);
            this.f81624gl.glBindBuffer(37074, 0);
            return;
        }
        throw new RendererException("SSBO was not ready for read");
    }
}
