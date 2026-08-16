package com.jme3.shader.bufferobject;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.renderer.Renderer;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import ei.C13155a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

public class BufferObject extends NativeObject implements Savable {
    static final boolean $assertionsDisabled = false;
    private AccessHint accessHint;
    private transient int binding;
    protected ByteBuffer data;
    protected transient DirtyRegionsIterator dirtyRegionsIterator;
    private String name;
    private NatureHint natureHint;
    protected ArrayList<BufferRegion> regions;

    public enum AccessHint {
        Static,
        Stream,
        Dynamic,
        CpuOnly
    }

    public enum NatureHint {
        Draw,
        Read,
        Copy
    }

    public BufferObject() {
        this.accessHint = AccessHint.Dynamic;
        this.natureHint = NatureHint.Draw;
        this.binding = -1;
        this.data = null;
        this.regions = new ArrayList<>();
    }

    @Override
    public NativeObject createDestructableClone() {
        return new BufferObject(getId());
    }

    @Override
    public void deleteNativeBuffers() {
        super.deleteNativeBuffers();
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            BufferUtils.destroyDirectBuffer(byteBuffer);
        }
    }

    @Override
    public void deleteObject(Object obj) {
        if (obj instanceof Renderer) {
            ((Renderer) obj).deleteBuffer(this);
            return;
        }
        throw new IllegalArgumentException("This bo can't be deleted from " + obj);
    }

    public AccessHint getAccessHint() {
        return this.accessHint;
    }

    public int getBinding() {
        return this.binding;
    }

    public ByteBuffer getData() {
        if (this.regions.size() != 0) {
            int end = this.regions.get(r0.size() - 1).getEnd();
            ByteBuffer byteBuffer = this.data;
            if (byteBuffer == null) {
                this.data = BufferUtils.createByteBuffer(end + 1);
            } else if (byteBuffer.limit() <= end) {
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(end + 1);
                if (createByteBuffer.limit() < this.data.limit()) {
                    this.data.limit(createByteBuffer.limit());
                }
                createByteBuffer.put(this.data);
                BufferUtils.destroyDirectBuffer(this.data);
                this.data = createByteBuffer;
            }
        } else if (this.data == null) {
            this.data = BufferUtils.createByteBuffer(0);
        }
        this.data.rewind();
        return this.data;
    }

    public DirtyRegionsIterator getDirtyRegions() {
        if (this.dirtyRegionsIterator == null) {
            this.dirtyRegionsIterator = new DirtyRegionsIterator(this);
        }
        this.dirtyRegionsIterator.rewind();
        return this.dirtyRegionsIterator;
    }

    public String getName() {
        return this.name;
    }

    public NatureHint getNatureHint() {
        return this.natureHint;
    }

    public BufferRegion getRegion(int i10) {
        BufferRegion bufferRegion = this.regions.get(i10);
        bufferRegion.bo = this;
        return bufferRegion;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 38654705664L;
    }

    public void initializeEmpty(int i10) {
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            BufferUtils.destroyDirectBuffer(byteBuffer);
        }
        this.data = BufferUtils.createByteBuffer(i10);
    }

    public void markAllRegionsDirty() {
        Iterator<BufferRegion> it = this.regions.iterator();
        while (it.hasNext()) {
            it.next().markDirty();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.accessHint = AccessHint.values()[capsule.readInt("accessHint", 0)];
        this.natureHint = NatureHint.values()[capsule.readInt("natureHint", 0)];
        ArrayList readSavableArrayList = capsule.readSavableArrayList("regions", null);
        if (readSavableArrayList != null) {
            this.regions.addAll(readSavableArrayList);
        }
        this.data = capsule.readByteBuffer("data", null);
        setUpdateNeeded(true);
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
    }

    public void setAccessHint(AccessHint accessHint) {
        this.accessHint = accessHint;
        setUpdateNeeded();
    }

    public void setBinding(int i10) {
        this.binding = i10;
    }

    public void setData(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            ByteBuffer byteBuffer2 = this.data;
            if (byteBuffer2 != null) {
                BufferUtils.destroyDirectBuffer(byteBuffer2);
                this.data = null;
                return;
            }
            return;
        }
        if (byteBuffer == this.data) {
            byteBuffer = byteBuffer.duplicate();
        }
        ByteBuffer byteBuffer3 = this.data;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(byteBuffer.limit() - byteBuffer.position());
        this.data = createByteBuffer;
        createByteBuffer.put(byteBuffer);
        if (byteBuffer3 != null) {
            BufferUtils.destroyDirectBuffer(byteBuffer3);
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNatureHint(NatureHint natureHint) {
        this.natureHint = natureHint;
        setUpdateNeeded();
    }

    public void setRegions(List<BufferRegion> list) {
        this.regions.clear();
        this.regions.addAll(list);
        this.regions.trimToSize();
        setUpdateNeeded();
    }

    @Override
    public final void setUpdateNeeded() {
        setUpdateNeeded(true);
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("{\n");
        Iterator<BufferRegion> it = this.regions.iterator();
        while (it.hasNext()) {
            BufferRegion next = it.next();
            sb2.append(C13155a.f85806a);
            sb2.append((Object) next);
            sb2.append("\n");
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public void unsetRegions() {
        this.regions.clear();
        this.regions.trimToSize();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.accessHint.ordinal(), "accessHint", 0);
        capsule.write(this.natureHint.ordinal(), "natureHint", 0);
        capsule.writeSavableArrayList(this.regions, "regions", null);
        capsule.write(this.data, "data", (ByteBuffer) null);
    }

    public void setUpdateNeeded(boolean z10) {
        if (z10) {
            markAllRegionsDirty();
        }
        this.updateNeeded = true;
    }

    @Override
    public BufferObject mo1296clone() {
        BufferObject bufferObject = (BufferObject) super.mo1296clone();
        bufferObject.binding = -1;
        bufferObject.data = BufferUtils.clone(this.data);
        bufferObject.regions = new ArrayList<>();
        Iterator<BufferRegion> it = this.regions.iterator();
        while (it.hasNext()) {
            bufferObject.regions.add(it.next().m1301clone());
        }
        bufferObject.dirtyRegionsIterator = null;
        bufferObject.setUpdateNeeded();
        return bufferObject;
    }

    public BufferObject(int i10) {
        super(i10);
        this.accessHint = AccessHint.Dynamic;
        this.natureHint = NatureHint.Draw;
        this.binding = -1;
        this.data = null;
        this.regions = new ArrayList<>();
    }
}
