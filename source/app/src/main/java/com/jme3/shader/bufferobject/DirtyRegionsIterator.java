package com.jme3.shader.bufferobject;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public class DirtyRegionsIterator implements Iterator<BufferRegion> {
    private BufferObject bufferObject;
    private final DirtyRegion dirtyRegion = new DirtyRegion();
    private int pos = 0;

    public static class DirtyRegion extends BufferRegion {
        List<BufferRegion> regions;

        private DirtyRegion() {
            this.regions = new ArrayList();
        }

        @Override
        public void clearDirty() {
            this.regions.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((BufferRegion) obj).clearDirty();
                }
            });
            super.clearDirty();
        }

        @Override
        public ByteBuffer getData() {
            ByteBuffer data = this.bo.getData();
            ByteBuffer duplicate = data.duplicate();
            duplicate.position(this.start);
            duplicate.limit(this.end + 1);
            return duplicate.slice().order(data.order());
        }
    }

    public DirtyRegionsIterator(BufferObject bufferObject) {
        this.bufferObject = bufferObject;
    }

    @Override
    public boolean hasNext() {
        return this.bufferObject.regions.size() == 0 ? this.pos == 0 && this.bufferObject.isUpdateNeeded() : this.pos < this.bufferObject.regions.size();
    }

    public void rewind() {
        this.pos = 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public BufferRegion next() {
        DirtyRegion dirtyRegion = this.dirtyRegion;
        dirtyRegion.bo = this.bufferObject;
        dirtyRegion.regions.clear();
        if (this.bufferObject.regions.size() == 0) {
            if (!this.bufferObject.isUpdateNeeded()) {
                return null;
            }
            DirtyRegion dirtyRegion2 = this.dirtyRegion;
            dirtyRegion2.fullBufferRegion = true;
            dirtyRegion2.end = this.bufferObject.getData().limit() - 1;
            DirtyRegion dirtyRegion3 = this.dirtyRegion;
            dirtyRegion3.start = 0;
            this.pos = 1;
            return dirtyRegion3;
        }
        while (this.pos < this.bufferObject.regions.size()) {
            ArrayList<BufferRegion> arrayList = this.bufferObject.regions;
            int i10 = this.pos;
            this.pos = i10 + 1;
            BufferRegion bufferRegion = arrayList.get(i10);
            if (bufferRegion.isDirty()) {
                if (this.dirtyRegion.regions.size() == 0) {
                    this.dirtyRegion.start = bufferRegion.start;
                }
                DirtyRegion dirtyRegion4 = this.dirtyRegion;
                dirtyRegion4.end = bufferRegion.end;
                dirtyRegion4.regions.add(bufferRegion);
            } else if (this.dirtyRegion.regions.size() != 0) {
                break;
            }
        }
        if (this.dirtyRegion.regions.size() == 0) {
            return null;
        }
        DirtyRegion dirtyRegion5 = this.dirtyRegion;
        dirtyRegion5.fullBufferRegion = dirtyRegion5.regions.size() == this.bufferObject.regions.size();
        this.dirtyRegion.markDirty();
        return this.dirtyRegion;
    }
}
