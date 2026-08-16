package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.internal.core.util.LRUCache;

public class BufferCache<K> extends OverflowingLRUCache<K, IBuffer> {
    private ThreadLocal<List<IBuffer>> buffersToClose;

    public BufferCache(int i10) {
        super(i10);
        this.buffersToClose = new ThreadLocal<>();
    }

    @Override
    public boolean close(LRUCache.LRUCacheEntry<K, IBuffer> lRUCacheEntry) {
        IBuffer iBuffer = lRUCacheEntry.value;
        if (!((Openable) iBuffer.getOwner()).canBufferBeRemovedFromCache(iBuffer)) {
            return false;
        }
        List<IBuffer> list = this.buffersToClose.get();
        if (list == null) {
            list = new ArrayList<>();
            this.buffersToClose.set(list);
        }
        list.add(iBuffer);
        return true;
    }

    public void closeBuffers() {
        List<IBuffer> list = this.buffersToClose.get();
        if (list == null) {
            return;
        }
        this.buffersToClose.set(null);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).close();
        }
    }

    @Override
    public LRUCache<K, IBuffer> newInstance(int i10, int i11) {
        return new BufferCache(i10, i11);
    }

    public BufferCache(int i10, int i11) {
        super(i10, i11);
        this.buffersToClose = new ThreadLocal<>();
    }
}
