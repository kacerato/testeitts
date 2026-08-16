package com.jme3.terrain.geomipmap;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class UpdatedTerrainPatch {
    private int bottomLod;
    private boolean fixEdges = false;
    private int leftLod;
    private Buffer newIndexBuffer;
    private int newLod;
    private int previousLod;
    private int rightLod;
    private int topLod;
    private TerrainPatch updatedPatch;

    public UpdatedTerrainPatch(TerrainPatch terrainPatch) {
        this.updatedPatch = terrainPatch;
    }

    public int getBottomLod() {
        return this.bottomLod;
    }

    public int getLeftLod() {
        return this.leftLod;
    }

    public String getName() {
        return this.updatedPatch.getName();
    }

    public int getNewLod() {
        return this.newLod;
    }

    public int getRightLod() {
        return this.rightLod;
    }

    public int getTopLod() {
        return this.topLod;
    }

    public TerrainPatch getUpdatedPatch() {
        return this.updatedPatch;
    }

    public boolean isFixEdges() {
        return this.fixEdges;
    }

    public boolean isReIndexNeeded() {
        return lodChanged() || isFixEdges();
    }

    public boolean lodChanged() {
        return this.previousLod != this.newLod;
    }

    public void setBottomLod(int i10) {
        this.bottomLod = i10;
    }

    public void setFixEdges(boolean z10) {
        this.fixEdges = z10;
    }

    public void setLeftLod(int i10) {
        this.leftLod = i10;
    }

    public void setNewIndexBuffer(Buffer buffer) {
        this.newIndexBuffer = buffer;
    }

    public void setNewLod(int i10) {
        this.newLod = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException("newLod cannot be less than zero, was: " + i10);
    }

    public void setPreviousLod(int i10) {
        this.previousLod = i10;
    }

    public void setRightLod(int i10) {
        this.rightLod = i10;
    }

    public void setTopLod(int i10) {
        this.topLod = i10;
    }

    public void setUpdatedPatch(TerrainPatch terrainPatch) {
        this.updatedPatch = terrainPatch;
    }

    public void updateAll() {
        this.updatedPatch.setLod(this.newLod);
        this.updatedPatch.setLodRight(this.rightLod);
        this.updatedPatch.setLodTop(this.topLod);
        this.updatedPatch.setLodLeft(this.leftLod);
        this.updatedPatch.setLodBottom(this.bottomLod);
        if (this.newIndexBuffer == null || !isReIndexNeeded()) {
            return;
        }
        this.updatedPatch.setPreviousLod(this.previousLod);
        Mesh mesh = this.updatedPatch.getMesh();
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        mesh.clearBuffer(type);
        Buffer buffer = this.newIndexBuffer;
        if (buffer instanceof IntBuffer) {
            this.updatedPatch.getMesh().setBuffer(type, 3, (IntBuffer) this.newIndexBuffer);
        } else if (buffer instanceof ShortBuffer) {
            this.updatedPatch.getMesh().setBuffer(type, 3, (ShortBuffer) this.newIndexBuffer);
        } else {
            this.updatedPatch.getMesh().setBuffer(type, 3, (ByteBuffer) this.newIndexBuffer);
        }
    }

    public UpdatedTerrainPatch(TerrainPatch terrainPatch, int i10) {
        this.updatedPatch = terrainPatch;
        this.newLod = i10;
    }
}
