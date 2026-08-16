package org.tukaani.xz;

import java.util.ArrayList;
import java.util.List;

public class ResettableArrayCache extends ArrayCache {
    private final ArrayCache arrayCache;
    private final List<byte[]> byteArrays;
    private final List<int[]> intArrays;

    public ResettableArrayCache(ArrayCache arrayCache) {
        ArrayList arrayList;
        this.arrayCache = arrayCache;
        if (arrayCache == ArrayCache.getDummyCache()) {
            arrayList = null;
            this.byteArrays = null;
        } else {
            this.byteArrays = new ArrayList();
            arrayList = new ArrayList();
        }
        this.intArrays = arrayList;
    }

    @Override
    public byte[] getByteArray(int i10, boolean z10) {
        byte[] byteArray = this.arrayCache.getByteArray(i10, z10);
        List<byte[]> list = this.byteArrays;
        if (list != null) {
            synchronized (list) {
                this.byteArrays.add(byteArray);
            }
        }
        return byteArray;
    }

    @Override
    public int[] getIntArray(int i10, boolean z10) {
        int[] intArray = this.arrayCache.getIntArray(i10, z10);
        List<int[]> list = this.intArrays;
        if (list != null) {
            synchronized (list) {
                this.intArrays.add(intArray);
            }
        }
        return intArray;
    }

    @Override
    public void putArray(byte[] bArr) {
        List<byte[]> list = this.byteArrays;
        if (list != null) {
            synchronized (list) {
                try {
                    int lastIndexOf = this.byteArrays.lastIndexOf(bArr);
                    if (lastIndexOf != -1) {
                        this.byteArrays.remove(lastIndexOf);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.arrayCache.putArray(bArr);
        }
    }

    public void reset() {
        List<byte[]> list = this.byteArrays;
        if (list != null) {
            synchronized (list) {
                try {
                    for (int size = this.byteArrays.size() - 1; size >= 0; size--) {
                        this.arrayCache.putArray(this.byteArrays.get(size));
                    }
                    this.byteArrays.clear();
                } finally {
                }
            }
            synchronized (this.intArrays) {
                try {
                    for (int size2 = this.intArrays.size() - 1; size2 >= 0; size2--) {
                        this.arrayCache.putArray(this.intArrays.get(size2));
                    }
                    this.intArrays.clear();
                } finally {
                }
            }
        }
    }

    @Override
    public void putArray(int[] iArr) {
        List<int[]> list = this.intArrays;
        if (list != null) {
            synchronized (list) {
                try {
                    int lastIndexOf = this.intArrays.lastIndexOf(iArr);
                    if (lastIndexOf != -1) {
                        this.intArrays.remove(lastIndexOf);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.arrayCache.putArray(iArr);
        }
    }
}
