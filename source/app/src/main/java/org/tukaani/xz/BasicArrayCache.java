package org.tukaani.xz;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

public class BasicArrayCache extends ArrayCache {
    private static final int CACHEABLE_SIZE_MIN = 32768;
    private static final int ELEMENTS_PER_STACK = 512;
    private static final int STACKS_MAX = 32;
    private final CacheMap<byte[]> byteArrayCache = new CacheMap<>();
    private final CacheMap<int[]> intArrayCache = new CacheMap<>();

    public static class CacheMap<T> extends LinkedHashMap<Integer, CyclicStack<Reference<T>>> {
        private static final long serialVersionUID = 1;

        public CacheMap() {
            super(64, 0.75f, true);
        }

        @Override
        public boolean removeEldestEntry(Map.Entry<Integer, CyclicStack<Reference<T>>> entry) {
            return size() > 32;
        }
    }

    public static class CyclicStack<T> {
        private final T[] elements;
        private int pos;

        private CyclicStack() {
            this.elements = (T[]) new Object[512];
            this.pos = 0;
        }

        public synchronized T pop() {
            T t10;
            T[] tArr = this.elements;
            int i10 = this.pos;
            t10 = tArr[i10];
            tArr[i10] = null;
            this.pos = (i10 - 1) & 511;
            return t10;
        }

        public synchronized void push(T t10) {
            int i10 = (this.pos + 1) & 511;
            this.pos = i10;
            this.elements[i10] = t10;
        }
    }

    public static final class LazyHolder {
        static final BasicArrayCache INSTANCE = new BasicArrayCache();

        private LazyHolder() {
        }
    }

    private static <T> T getArray(CacheMap<T> cacheMap, int i10) {
        CyclicStack<Reference<T>> cyclicStack;
        T t10;
        if (i10 < 32768) {
            return null;
        }
        synchronized (cacheMap) {
            cyclicStack = cacheMap.get(Integer.valueOf(i10));
        }
        if (cyclicStack == null) {
            return null;
        }
        do {
            Reference<T> pop = cyclicStack.pop();
            if (pop == null) {
                return null;
            }
            t10 = pop.get();
        } while (t10 == null);
        return t10;
    }

    public static BasicArrayCache getInstance() {
        return LazyHolder.INSTANCE;
    }

    private static <T> void putArray(CacheMap<T> cacheMap, T t10, int i10) {
        CyclicStack<Reference<T>> cyclicStack;
        if (i10 < 32768) {
            return;
        }
        synchronized (cacheMap) {
            try {
                cyclicStack = cacheMap.get(Integer.valueOf(i10));
                if (cyclicStack == null) {
                    cyclicStack = new CyclicStack<>();
                    cacheMap.put(Integer.valueOf(i10), cyclicStack);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        cyclicStack.push(new SoftReference(t10));
    }

    @Override
    public byte[] getByteArray(int i10, boolean z10) {
        byte[] bArr = (byte[]) getArray(this.byteArrayCache, i10);
        if (bArr == null) {
            return new byte[i10];
        }
        if (!z10) {
            return bArr;
        }
        Arrays.fill(bArr, (byte) 0);
        return bArr;
    }

    @Override
    public int[] getIntArray(int i10, boolean z10) {
        int[] iArr = (int[]) getArray(this.intArrayCache, i10);
        if (iArr == null) {
            return new int[i10];
        }
        if (!z10) {
            return iArr;
        }
        Arrays.fill(iArr, 0);
        return iArr;
    }

    @Override
    public void putArray(byte[] bArr) {
        putArray(this.byteArrayCache, bArr, bArr.length);
    }

    @Override
    public void putArray(int[] iArr) {
        putArray(this.intArrayCache, iArr, iArr.length);
    }
}
