package org.eclipse.jdt.internal.compiler.util;

public final class HashtableOfInteger {
    public int elementSize;
    public Integer[] keyTable;
    int threshold;
    public Object[] valueTable;

    public HashtableOfInteger() {
        this(13);
    }

    private void rehash() {
        HashtableOfInteger hashtableOfInteger = new HashtableOfInteger(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfInteger.keyTable;
                this.valueTable = hashtableOfInteger.valueTable;
                this.threshold = hashtableOfInteger.threshold;
                return;
            } else {
                Integer num = this.keyTable[length];
                if (num != null) {
                    hashtableOfInteger.putUnsafely(num.intValue(), this.valueTable[length]);
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
                this.valueTable[length] = null;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfInteger hashtableOfInteger = (HashtableOfInteger) super.clone();
        hashtableOfInteger.elementSize = this.elementSize;
        hashtableOfInteger.threshold = this.threshold;
        int length = this.keyTable.length;
        Integer[] numArr = new Integer[length];
        hashtableOfInteger.keyTable = numArr;
        System.arraycopy(this.keyTable, 0, numArr, 0, length);
        int length2 = this.valueTable.length;
        Object[] objArr = new Object[length2];
        hashtableOfInteger.valueTable = objArr;
        System.arraycopy(this.valueTable, 0, objArr, 0, length2);
        return hashtableOfInteger;
    }

    public boolean containsKey(int i10) {
        Integer valueOf = Integer.valueOf(i10);
        int length = this.keyTable.length;
        int hashCode = valueOf.hashCode() % length;
        while (true) {
            Integer num = this.keyTable[hashCode];
            if (num == null) {
                return false;
            }
            if (num.equals(valueOf)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object get(int i10) {
        Integer valueOf = Integer.valueOf(i10);
        int length = this.keyTable.length;
        int hashCode = valueOf.hashCode() % length;
        while (true) {
            Integer num = this.keyTable[hashCode];
            if (num == null) {
                return null;
            }
            if (num.equals(valueOf)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object put(int i10, Object obj) {
        Integer valueOf = Integer.valueOf(i10);
        int length = this.keyTable.length;
        int hashCode = valueOf.hashCode() % length;
        while (true) {
            Integer[] numArr = this.keyTable;
            Integer num = numArr[hashCode];
            if (num == null) {
                numArr[hashCode] = valueOf;
                this.valueTable[hashCode] = obj;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (num.equals(valueOf)) {
                this.valueTable[hashCode] = obj;
                return obj;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void putUnsafely(int i10, Object obj) {
        Integer[] numArr;
        Integer valueOf = Integer.valueOf(i10);
        int length = this.keyTable.length;
        int hashCode = valueOf.hashCode() % length;
        while (true) {
            numArr = this.keyTable;
            if (numArr[hashCode] == null) {
                break;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
        numArr[hashCode] = valueOf;
        this.valueTable[hashCode] = obj;
        int i11 = this.elementSize + 1;
        this.elementSize = i11;
        if (i11 > this.threshold) {
            rehash();
        }
    }

    public Object removeKey(int i10) {
        Integer valueOf = Integer.valueOf(i10);
        int length = this.keyTable.length;
        int hashCode = valueOf.hashCode() % length;
        while (true) {
            Integer num = this.keyTable[hashCode];
            if (num == null) {
                return null;
            }
            if (num.equals(valueOf)) {
                Object[] objArr = this.valueTable;
                Object obj = objArr[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
                objArr[hashCode] = null;
                rehash();
                return obj;
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
        int length = this.valueTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.valueTable[i10];
            if (obj != null) {
                str = String.valueOf(str) + ((Object) this.keyTable[i10]) + " -> " + obj.toString() + "\n";
            }
        }
        return str;
    }

    public HashtableOfInteger(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new Integer[i11];
        this.valueTable = new Object[i11];
    }
}
