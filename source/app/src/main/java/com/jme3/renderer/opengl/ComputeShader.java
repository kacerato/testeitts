package com.jme3.renderer.opengl;

import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.renderer.RendererException;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class ComputeShader extends NativeObject {

    private final GL4 f81621gl;
    private final String source;

    public ComputeShader(GL4 gl4, String str) {
        this.f81621gl = gl4;
        this.source = str;
        createComputeShader();
    }

    private String addDefines(String str, String[][] strArr) {
        String[] split = str.split("\\r?\\n", 2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(split[0] + "\n");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            String[] strArr2 = strArr[i10];
            sb2.append("#define " + strArr2[0] + " " + strArr2[1] + "\n");
        }
        sb2.append(split[1] + "\n");
        return sb2.toString();
    }

    private void createComputeShader() {
        int glCreateShader = this.f81621gl.glCreateShader(37305);
        if (glCreateShader <= 0) {
            throw new RendererException("Failed to create compute shader");
        }
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(1);
        createIntBuffer.clear();
        createIntBuffer.put(0, this.source.length());
        this.f81621gl.glShaderSource(glCreateShader, new String[]{this.source}, createIntBuffer);
        this.f81621gl.glCompileShader(glCreateShader);
        this.f81621gl.glGetShader(glCreateShader, 35713, createIntBuffer);
        if (createIntBuffer.get(0) != 1) {
            this.f81621gl.glGetShader(glCreateShader, 35716, createIntBuffer);
            String glGetShaderInfoLog = this.f81621gl.glGetShaderInfoLog(glCreateShader, createIntBuffer.get(0));
            this.f81621gl.glDeleteShader(glCreateShader);
            throw new RendererException("Compute shader compilation failed: " + glGetShaderInfoLog);
        }
        int glCreateProgram = this.f81621gl.glCreateProgram();
        this.f81661id = glCreateProgram;
        if (glCreateProgram <= 0) {
            this.f81621gl.glDeleteShader(glCreateShader);
            throw new RendererException("Failed to create shader program");
        }
        this.f81621gl.glAttachShader(glCreateProgram, glCreateShader);
        this.f81621gl.glLinkProgram(this.f81661id);
        this.f81621gl.glGetProgram(this.f81661id, 35714, createIntBuffer);
        if (createIntBuffer.get(0) == 1) {
            this.f81621gl.glDeleteShader(glCreateShader);
            clearUpdateNeeded();
            return;
        }
        this.f81621gl.glGetProgram(this.f81661id, 35716, createIntBuffer);
        String glGetProgramInfoLog = this.f81621gl.glGetProgramInfoLog(this.f81661id, createIntBuffer.get(0));
        this.f81621gl.glDeleteShader(glCreateShader);
        this.f81621gl.glDeleteProgram(this.f81661id);
        throw new RendererException("Compute shader program linking failed: " + glGetProgramInfoLog);
    }

    public void bindShaderStorageBuffer(int i10, ShaderStorageBufferObject shaderStorageBufferObject) {
        this.f81621gl.glBindBufferBase(37074, i10, shaderStorageBufferObject.getId());
    }

    @Override
    public NativeObject createDestructableClone() {
        return new ComputeShader(this);
    }

    @Override
    public void deleteObject(Object obj) {
        int i10 = this.f81661id;
        if (i10 != -1) {
            this.f81621gl.glDeleteProgram(i10);
        }
        resetObject();
    }

    public void dispatch(int i10, int i11, int i12) {
        this.f81621gl.glDispatchCompute(i10, i11, i12);
    }

    public int getUniformLocation(String str) {
        return this.f81621gl.glGetUniformLocation(this.f81661id, str);
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 17179869184L;
    }

    public void makeActive() {
        if (isUpdateNeeded()) {
            createComputeShader();
        }
        this.f81621gl.glUseProgram(this.f81661id);
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        setUpdateNeeded();
    }

    public void setUniform(int i10, int i11) {
        this.f81621gl.glUniform1i(i10, i11);
    }

    public void setUniform(int i10, float f10) {
        this.f81621gl.glUniform1f(i10, f10);
    }

    public void setUniform(int i10, Vector2f vector2f) {
        this.f81621gl.glUniform2f(i10, vector2f.f81609x, vector2f.f81610y);
    }

    public void setUniform(int i10, Vector3f vector3f) {
        this.f81621gl.glUniform3f(i10, vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    public ComputeShader(GL4 gl4, String str, String[][] strArr) {
        this.f81621gl = gl4;
        this.source = addDefines(str, strArr);
        createComputeShader();
    }

    public void setUniform(int i10, Vector4f vector4f) {
        this.f81621gl.glUniform4f(i10, vector4f.f81615x, vector4f.f81616y, vector4f.f81617z, vector4f.f81614w);
    }

    public void setUniform(int i10, Matrix4f matrix4f) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(16);
        matrix4f.fillFloatBuffer(createFloatBuffer, true);
        createFloatBuffer.clear();
        this.f81621gl.glUniformMatrix4(i10, false, createFloatBuffer);
    }

    private ComputeShader(ComputeShader computeShader) {
        this.f81621gl = computeShader.f81621gl;
        this.f81661id = computeShader.f81661id;
        this.source = null;
    }
}
