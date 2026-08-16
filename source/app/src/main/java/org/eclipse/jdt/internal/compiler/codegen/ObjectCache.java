package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;

public class ObjectCache {
    int elementSize;
    public Object[] keyTable;
    int threshold;
    public int[] valueTable;

    public ObjectCache() {
        this(13);
    }

    private void rehash() {
        ObjectCache objectCache = new ObjectCache(this.keyTable.length * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = objectCache.keyTable;
                this.valueTable = objectCache.valueTable;
                this.threshold = objectCache.threshold;
                return;
            } else {
                Object obj = this.keyTable[length];
                if (obj != null) {
                    objectCache.put(obj, this.valueTable[length]);
                }
            }
        }
    }

    public void clear() {
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            } else {
                this.keyTable[length] = null;
                this.valueTable[length] = 0;
            }
        }
    }

    public boolean containsKey(Object obj) {
        int hashCode = hashCode(obj);
        int length = this.keyTable.length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return false;
            }
            if (obj2 == obj) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int get(Object obj) {
        int hashCode = hashCode(obj);
        int length = this.keyTable.length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return -1;
            }
            if (obj2 == obj) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int hashCode(Object obj) {
        return (obj.hashCode() & Integer.MAX_VALUE) % this.keyTable.length;
    }

    public int put(Object obj, int i10) {
        int hashCode = hashCode(obj);
        int length = this.keyTable.length;
        while (true) {
            Object[] objArr = this.keyTable;
            Object obj2 = objArr[hashCode];
            if (obj2 == null) {
                objArr[hashCode] = obj;
                this.valueTable[hashCode] = i10;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return i10;
            }
            if (obj2 == obj) {
                this.valueTable[hashCode] = i10;
                return i10;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int size = size();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = this.keyTable[i10];
            if (obj != null) {
                stringBuffer.append(obj);
                stringBuffer.append("->");
                stringBuffer.append(this.valueTable[i10]);
            }
            if (i10 < size) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public ObjectCache(int i10) {
        this.elementSize = 0;
        this.threshold = (int) (i10 * 0.66f);
        this.keyTable = new Object[i10];
        this.valueTable = new int[i10];
    }
}
