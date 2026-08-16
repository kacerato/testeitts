package org.eclipse.jdt.internal.compiler.util;

public final class SimpleSet implements Cloneable {
    public int elementSize;
    public int threshold;
    public Object[] values;

    public SimpleSet() {
        this(13);
    }

    private void rehash() {
        SimpleSet simpleSet = new SimpleSet(this.elementSize * 2);
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.values = simpleSet.values;
                this.elementSize = simpleSet.elementSize;
                this.threshold = simpleSet.threshold;
                return;
            } else {
                Object obj = this.values[length];
                if (obj != null) {
                    simpleSet.add(obj);
                }
            }
        }
    }

    public Object add(Object obj) {
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object[] objArr = this.values;
            Object obj2 = objArr[hashCode];
            if (obj2 == null) {
                objArr[hashCode] = obj;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (obj2.equals(obj)) {
                this.values[hashCode] = obj;
                return obj;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object addIfNotIncluded(Object obj) {
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object[] objArr = this.values;
            Object obj2 = objArr[hashCode];
            if (obj2 == null) {
                objArr[hashCode] = obj;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (obj2.equals(obj)) {
                return null;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void asArray(Object[] objArr) {
        int i10 = this.elementSize;
        if (i10 != objArr.length) {
            throw new IllegalArgumentException();
        }
        int length = this.values.length;
        for (int i11 = 0; i11 < length && i10 > 0; i11++) {
            Object obj = this.values[i11];
            if (obj != null) {
                i10--;
                objArr[i10] = obj;
            }
        }
    }

    public void clear() {
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            }
            this.values[length] = null;
        }
    }

    public Object clone() throws CloneNotSupportedException {
        SimpleSet simpleSet = (SimpleSet) super.clone();
        simpleSet.elementSize = this.elementSize;
        simpleSet.threshold = this.threshold;
        int length = this.values.length;
        Object[] objArr = new Object[length];
        simpleSet.values = objArr;
        System.arraycopy(this.values, 0, objArr, 0, length);
        return simpleSet;
    }

    public boolean includes(Object obj) {
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.values[hashCode];
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

    public Object remove(Object obj) {
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.values[hashCode];
            if (obj2 == null) {
                return null;
            }
            if (obj2.equals(obj)) {
                this.elementSize--;
                Object[] objArr = this.values;
                Object obj3 = objArr[hashCode];
                objArr[hashCode] = null;
                int i10 = hashCode + 1;
                if (objArr[i10 != length ? i10 : 0] != null) {
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

    public String toString() {
        int length = this.values.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.values[i10];
            if (obj != null) {
                str = String.valueOf(str) + obj.toString() + "\n";
            }
        }
        return str;
    }

    public SimpleSet(int i10) {
        i10 = i10 < 3 ? 3 : i10;
        this.elementSize = 0;
        this.threshold = i10 + 1;
        this.values = new Object[(i10 * 2) + 1];
    }
}
