package com.android.dx.util;

import java.util.Arrays;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class FixedSizeList extends MutabilityControl implements ToHuman {
    private Object[] arr;

    public FixedSizeList(int i10) {
        super(i10 != 0);
        try {
            this.arr = new Object[i10];
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    private Object throwIndex(int i10) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("n < 0");
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    private String toString0(String str, String str2, String str3, boolean z10) {
        int length = this.arr.length;
        StringBuffer stringBuffer = new StringBuffer((length * 10) + 10);
        if (str != null) {
            stringBuffer.append(str);
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0 && str2 != null) {
                stringBuffer.append(str2);
            }
            if (z10) {
                stringBuffer.append(((ToHuman) this.arr[i10]).toHuman());
            } else {
                stringBuffer.append(this.arr[i10]);
            }
        }
        if (str3 != null) {
            stringBuffer.append(str3);
        }
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.arr, ((FixedSizeList) obj).arr);
    }

    public final Object get0(int i10) {
        try {
            Object obj = this.arr[i10];
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException("unset: " + i10);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return throwIndex(i10);
        }
    }

    public final Object getOrNull0(int i10) {
        return this.arr[i10];
    }

    public int hashCode() {
        return Arrays.hashCode(this.arr);
    }

    public final void set0(int i10, Object obj) {
        throwIfImmutable();
        try {
            this.arr[i10] = obj;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throwIndex(i10);
        }
    }

    public void shrinkToFit() {
        int length = this.arr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.arr[i11] != null) {
                i10++;
            }
        }
        if (length == i10) {
            return;
        }
        throwIfImmutable();
        Object[] objArr = new Object[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            Object obj = this.arr[i13];
            if (obj != null) {
                objArr[i12] = obj;
                i12++;
            }
        }
        this.arr = objArr;
        if (i10 == 0) {
            setImmutable();
        }
    }

    public final int size() {
        return this.arr.length;
    }

    public String toHuman() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + JavaElement.JEM_COMPILATIONUNIT, ", ", VectorFormat.DEFAULT_SUFFIX, true);
    }

    public String toString() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + JavaElement.JEM_COMPILATIONUNIT, ", ", VectorFormat.DEFAULT_SUFFIX, false);
    }

    public String toHuman(String str, String str2, String str3) {
        return toString0(str, str2, str3, true);
    }

    public String toString(String str, String str2, String str3) {
        return toString0(str, str2, str3, false);
    }
}
