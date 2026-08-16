package org.eclipse.jdt.internal.compiler.util;

public final class SimpleLookupTable implements Cloneable {
    public int elementSize;
    public Object[] keyTable;
    public int threshold;
    public Object[] valueTable;

    public SimpleLookupTable() {
        this(13);
    }

    private void rehash() {
        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = simpleLookupTable.keyTable;
                this.valueTable = simpleLookupTable.valueTable;
                this.elementSize = simpleLookupTable.elementSize;
                this.threshold = simpleLookupTable.threshold;
                return;
            }
            Object obj = this.keyTable[length];
            if (obj != null) {
                simpleLookupTable.put(obj, this.valueTable[length]);
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        SimpleLookupTable simpleLookupTable = (SimpleLookupTable) super.clone();
        simpleLookupTable.elementSize = this.elementSize;
        simpleLookupTable.threshold = this.threshold;
        int length = this.keyTable.length;
        Object[] objArr = new Object[length];
        simpleLookupTable.keyTable = objArr;
        System.arraycopy(this.keyTable, 0, objArr, 0, length);
        int length2 = this.valueTable.length;
        Object[] objArr2 = new Object[length2];
        simpleLookupTable.valueTable = objArr2;
        System.arraycopy(this.valueTable, 0, objArr2, 0, length2);
        return simpleLookupTable;
    }

    public boolean containsKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object get(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return null;
            }
            if (obj2.equals(obj)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object getKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return obj;
            }
            if (obj2.equals(obj)) {
                return obj2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object keyForValue(Object obj) {
        if (obj == null) {
            return null;
        }
        int length = this.keyTable.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.keyTable[i10] != null && obj.equals(this.valueTable[i10])) {
                return this.keyTable[i10];
            }
        }
        return null;
    }

    public Object put(Object obj, Object obj2) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object[] objArr = this.keyTable;
            Object obj3 = objArr[hashCode];
            if (obj3 == null) {
                objArr[hashCode] = obj;
                this.valueTable[hashCode] = obj2;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj2;
            }
            if (obj3.equals(obj)) {
                this.valueTable[hashCode] = obj2;
                return obj2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object removeKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return null;
            }
            if (obj2.equals(obj)) {
                this.elementSize--;
                Object[] objArr = this.valueTable;
                Object obj3 = objArr[hashCode];
                Object[] objArr2 = this.keyTable;
                objArr2[hashCode] = null;
                objArr[hashCode] = null;
                int i10 = hashCode + 1;
                if (objArr2[i10 != length ? i10 : 0] != null) {
                    rehash();
                }
                return obj3;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void removeValue(Object obj) {
        int length = this.valueTable.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj2 = this.valueTable[i10];
            if (obj2 != null && obj2.equals(obj)) {
                this.elementSize--;
                Object[] objArr = this.keyTable;
                objArr[i10] = null;
                this.valueTable[i10] = null;
                if (!z10) {
                    int i11 = i10 + 1;
                    if (i11 == length) {
                        i11 = 0;
                    }
                    if (objArr[i11] != null) {
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            rehash();
        }
    }

    public String toString() {
        int length = this.valueTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.valueTable[i10];
            if (obj != null) {
                str = String.valueOf(str) + this.keyTable[i10].toString() + " -> " + obj.toString() + "\n";
            }
        }
        return str;
    }

    public SimpleLookupTable(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.5f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new Object[i11];
        this.valueTable = new Object[i11];
    }
}
