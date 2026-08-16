package org.eclipse.jdt.internal.core.util;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public final class HashSetOfArray implements Cloneable {
    public int elementSize;
    public Object[][] set;
    int threshold;

    public HashSetOfArray() {
        this(13);
    }

    private int hashCode(Object[] objArr) {
        return hashCode(objArr, objArr.length);
    }

    private void rehash() {
        HashSetOfArray hashSetOfArray = new HashSetOfArray(this.elementSize * 2);
        int length = this.set.length;
        while (true) {
            length--;
            if (length < 0) {
                this.set = hashSetOfArray.set;
                this.threshold = hashSetOfArray.threshold;
                return;
            } else {
                Object[] objArr = this.set[length];
                if (objArr != null) {
                    hashSetOfArray.add(objArr);
                }
            }
        }
    }

    public Object add(Object[] objArr) {
        int length = this.set.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[][] objArr2 = this.set;
            Object[] objArr3 = objArr2[hashCode];
            if (objArr3 == null) {
                objArr2[hashCode] = objArr;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return objArr;
            }
            if (objArr3.length == length2 && Util.equalArraysOrNull(objArr3, objArr)) {
                this.set[hashCode] = objArr;
                return objArr;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashSetOfArray hashSetOfArray = (HashSetOfArray) super.clone();
        hashSetOfArray.elementSize = this.elementSize;
        hashSetOfArray.threshold = this.threshold;
        int length = this.set.length;
        Object[][] objArr = new Object[length];
        hashSetOfArray.set = objArr;
        System.arraycopy(this.set, 0, objArr, 0, length);
        return hashSetOfArray;
    }

    public boolean contains(Object[] objArr) {
        int length = this.set.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.set[hashCode];
            if (objArr2 == null) {
                return false;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object remove(Object[] objArr) {
        int length = this.set.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.set[hashCode];
            if (objArr2 == null) {
                return null;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                Object[][] objArr3 = this.set;
                Object[] objArr4 = objArr3[hashCode];
                this.elementSize--;
                objArr3[hashCode] = null;
                rehash();
                return objArr4;
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
        StringBuffer stringBuffer = new StringBuffer();
        int length = this.set.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object[] objArr = this.set[i10];
            if (objArr != null) {
                stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                int length2 = objArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append(objArr[i11]);
                    if (i11 != length2 - 1) {
                        stringBuffer.append(", ");
                    }
                }
                stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
                if (i10 != length - 1) {
                    stringBuffer.append('\n');
                }
            }
        }
        return stringBuffer.toString();
    }

    public HashSetOfArray(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        this.set = new Object[i10 == i11 ? i11 + 1 : i11];
    }

    private int hashCode(Object[] objArr, int i10) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 = Util.combineHashCodes(i11, objArr[i12].hashCode());
        }
        return Integer.MAX_VALUE & i11;
    }
}
