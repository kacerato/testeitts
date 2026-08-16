package org.eclipse.jdt.internal.core.util;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;

public final class HashSetOfCharArrayArray implements Cloneable {
    public int elementSize;
    public char[][][] set;
    int threshold;

    public HashSetOfCharArrayArray() {
        this(13);
    }

    private int hashCode(char[][] cArr) {
        return hashCode(cArr, cArr.length);
    }

    private void rehash() {
        HashSetOfCharArrayArray hashSetOfCharArrayArray = new HashSetOfCharArrayArray(this.elementSize * 2);
        int length = this.set.length;
        while (true) {
            length--;
            if (length < 0) {
                this.set = hashSetOfCharArrayArray.set;
                this.threshold = hashSetOfCharArrayArray.threshold;
                return;
            } else {
                char[][] cArr = this.set[length];
                if (cArr != null) {
                    hashSetOfCharArrayArray.add(cArr);
                }
            }
        }
    }

    public char[][] add(char[][] cArr) {
        int length = this.set.length;
        int hashCode = hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][][] cArr2 = this.set;
            char[][] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return cArr;
            }
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                this.set[hashCode] = cArr;
                return cArr;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashSetOfCharArrayArray hashSetOfCharArrayArray = (HashSetOfCharArrayArray) super.clone();
        hashSetOfCharArrayArray.elementSize = this.elementSize;
        hashSetOfCharArrayArray.threshold = this.threshold;
        int length = this.set.length;
        char[][][] cArr = new char[length][];
        hashSetOfCharArrayArray.set = cArr;
        System.arraycopy(this.set, 0, cArr, 0, length);
        return hashSetOfCharArrayArray;
    }

    public boolean contains(char[][] cArr) {
        int length = this.set.length;
        int hashCode = hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.set[hashCode];
            if (cArr2 == null) {
                return false;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public char[][] remove(char[][] cArr) {
        int length = this.set.length;
        int hashCode = hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.set[hashCode];
            if (cArr2 == null) {
                return null;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                char[][][] cArr3 = this.set;
                char[][] cArr4 = cArr3[hashCode];
                this.elementSize--;
                cArr3[hashCode] = null;
                rehash();
                return cArr4;
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
            char[][] cArr = this.set[i10];
            if (cArr != null) {
                stringBuffer.append("{");
                int length2 = cArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    char[] cArr2 = cArr[i11];
                    stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                    int length3 = cArr2.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        stringBuffer.append(JavaElement.JEM_MODULAR_CLASSFILE);
                        stringBuffer.append(cArr2[i12]);
                        stringBuffer.append(JavaElement.JEM_MODULAR_CLASSFILE);
                        if (i12 != length3 - 1) {
                            stringBuffer.append(", ");
                        }
                    }
                    stringBuffer.append(JavaElement.JEM_ANNOTATION);
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

    public HashSetOfCharArrayArray(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        this.set = new char[i10 == i11 ? i11 + 1 : i11][];
    }

    private int hashCode(char[][] cArr, int i10) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 = Util.combineHashCodes(i11, CharOperation.hashCode(cArr[i12]));
        }
        return Integer.MAX_VALUE & i11;
    }
}
