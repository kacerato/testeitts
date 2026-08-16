package com.jme3.shader.bufferobject;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.nio.ByteBuffer;

public class BufferRegion implements Savable, Cloneable {
    static final boolean $assertionsDisabled = false;
    protected BufferObject bo;
    protected boolean dirty;
    protected int end;
    protected boolean fullBufferRegion;
    protected ByteBuffer slice;
    protected ByteBuffer source;
    protected int start;

    public BufferRegion(int i10, int i11) {
        this.dirty = true;
        this.fullBufferRegion = false;
        this.start = i10;
        this.end = i11;
    }

    public void clearDirty() {
        this.dirty = false;
    }

    public ByteBuffer getData() {
        ByteBuffer data = this.bo.getData();
        ByteBuffer duplicate = data.duplicate();
        duplicate.position(this.start);
        duplicate.limit(this.end + 1);
        return duplicate.slice().order(data.order());
    }

    public int getEnd() {
        return this.end;
    }

    public int getStart() {
        return this.start;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isFullBufferRegion() {
        return this.fullBufferRegion;
    }

    public int length() {
        return (this.end - this.start) + 1;
    }

    public void markDirty() {
        this.dirty = true;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.start = capsule.readInt("start", 0);
        this.end = capsule.readInt("end", 0);
        this.dirty = capsule.readBoolean("dirty", false);
    }

    public String toString() {
        return "Region [start=" + this.start + ", end=" + this.end + ", size=" + (this.end - this.start) + ", dirty=" + this.dirty + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.start, "start", 0);
        capsule.write(this.end, "end", 0);
        capsule.write(this.dirty, "dirty", false);
    }

    public BufferRegion m1301clone() {
        try {
            return (BufferRegion) super.clone();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public BufferRegion() {
        this.start = -1;
        this.end = -1;
        this.dirty = true;
        this.fullBufferRegion = false;
    }
}
