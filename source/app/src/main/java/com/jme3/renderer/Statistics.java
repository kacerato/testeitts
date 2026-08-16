package com.jme3.renderer;

import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.jme3.scene.Mesh;
import com.jme3.shader.Shader;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.util.IntMap;

public class Statistics {
    static final boolean $assertionsDisabled = false;
    protected int memoryFrameBuffers;
    protected int memoryShaders;
    protected int memoryTextures;
    protected int numFboSwitches;
    protected int numObjects;
    protected int numShaderSwitches;
    protected int numTextureBinds;
    protected int numTriangles;
    protected int numUniformsSet;
    protected int numVertices;
    protected boolean enabled = false;
    protected IntMap<Void> shadersUsed = new IntMap<>();
    protected IntMap<Void> texturesUsed = new IntMap<>();
    protected IntMap<Void> fbosUsed = new IntMap<>();
    protected int lastShader = -1;

    public void clearFrame() {
        this.shadersUsed.clear();
        this.texturesUsed.clear();
        this.fbosUsed.clear();
        this.numObjects = 0;
        this.numTriangles = 0;
        this.numVertices = 0;
        this.numShaderSwitches = 0;
        this.numTextureBinds = 0;
        this.numFboSwitches = 0;
        this.numUniformsSet = 0;
        this.lastShader = -1;
    }

    public void clearMemory() {
        this.memoryFrameBuffers = 0;
        this.memoryShaders = 0;
        this.memoryTextures = 0;
    }

    public void getData(int[] iArr) {
        iArr[0] = this.numVertices;
        iArr[1] = this.numTriangles;
        iArr[2] = this.numUniformsSet;
        iArr[3] = this.numObjects;
        iArr[4] = this.numShaderSwitches;
        iArr[5] = this.shadersUsed.size();
        iArr[6] = this.memoryShaders;
        iArr[7] = this.numTextureBinds;
        iArr[8] = this.texturesUsed.size();
        iArr[9] = this.memoryTextures;
        iArr[10] = this.numFboSwitches;
        iArr[11] = this.fbosUsed.size();
        iArr[12] = this.memoryFrameBuffers;
    }

    public String[] getLabels() {
        return new String[]{"Vertices", "Triangles", "Uniforms", ObjectsPanel.f71767d0, "Shaders (S)", "Shaders (F)", "Shaders (M)", "Textures (S)", "Textures (F)", "Textures (M)", "FrameBuffers (S)", "FrameBuffers (F)", "FrameBuffers (M)"};
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void onDeleteFrameBuffer() {
        if (this.enabled) {
            this.memoryFrameBuffers--;
        }
    }

    public void onDeleteShader() {
        if (this.enabled) {
            this.memoryShaders--;
        }
    }

    public void onDeleteTexture() {
        if (this.enabled) {
            this.memoryTextures--;
        }
    }

    public void onFrameBufferUse(FrameBuffer frameBuffer, boolean z10) {
        if (this.enabled) {
            if (frameBuffer != null && !this.fbosUsed.containsKey(frameBuffer.getId())) {
                this.fbosUsed.put(frameBuffer.getId(), null);
            }
            if (z10) {
                this.numFboSwitches++;
            }
        }
    }

    public void onMeshDrawn(Mesh mesh, int i10, int i11) {
        if (this.enabled) {
            this.numObjects++;
            this.numTriangles += mesh.getTriangleCount(i10) * i11;
            this.numVertices += mesh.getVertexCount() * i11;
        }
    }

    public void onNewFrameBuffer() {
        if (this.enabled) {
            this.memoryFrameBuffers++;
        }
    }

    public void onNewShader() {
        if (this.enabled) {
            this.memoryShaders++;
        }
    }

    public void onNewTexture() {
        if (this.enabled) {
            this.memoryTextures++;
        }
    }

    public void onShaderUse(Shader shader, boolean z10) {
        if (this.enabled) {
            if (this.lastShader != shader.getId()) {
                this.lastShader = shader.getId();
                if (!this.shadersUsed.containsKey(shader.getId())) {
                    this.shadersUsed.put(shader.getId(), null);
                }
            }
            if (z10) {
                this.numShaderSwitches++;
            }
        }
    }

    public void onTextureUse(Image image, boolean z10) {
        if (this.enabled) {
            if (!this.texturesUsed.containsKey(image.getId())) {
                this.texturesUsed.put(image.getId(), null);
            }
            if (z10) {
                this.numTextureBinds++;
            }
        }
    }

    public void onUniformSet() {
        if (this.enabled) {
            this.numUniformsSet++;
        }
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void onMeshDrawn(Mesh mesh, int i10) {
        onMeshDrawn(mesh, i10, 1);
    }
}
