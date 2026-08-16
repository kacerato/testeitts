package org.tukaani.xz;

public class ArrayCache {
    private static volatile ArrayCache defaultCache;
    private static final ArrayCache dummyCache;

    static {
        ArrayCache arrayCache = new ArrayCache();
        dummyCache = arrayCache;
        defaultCache = arrayCache;
    }

    public static ArrayCache getDefaultCache() {
        return defaultCache;
    }

    public static ArrayCache getDummyCache() {
        return dummyCache;
    }

    public static void setDefaultCache(ArrayCache arrayCache) {
        arrayCache.getClass();
        defaultCache = arrayCache;
    }

    public byte[] getByteArray(int i10, boolean z10) {
        return new byte[i10];
    }

    public int[] getIntArray(int i10, boolean z10) {
        return new int[i10];
    }

    public void putArray(byte[] bArr) {
    }

    public void putArray(int[] iArr) {
    }
}
