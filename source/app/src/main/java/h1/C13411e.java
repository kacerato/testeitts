package h1;

import java.util.Arrays;

public class C13411e extends C13412f {

    public Object[] f90196a = new Object[4];

    public int f90197b = 0;

    public boolean f90198c;

    public C13411e(int i10) {
    }

    public final C13411e a(Object obj) {
        int i10;
        obj.getClass();
        int length = this.f90196a.length;
        int i11 = this.f90197b;
        int i12 = i11 + 1;
        if (i12 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i12 <= length) {
            i10 = length;
        } else {
            i10 = (length >> 1) + length + 1;
            if (i10 < i12) {
                int highestOneBit = Integer.highestOneBit(i11);
                i10 = highestOneBit + highestOneBit;
            }
            if (i10 < 0) {
                i10 = Integer.MAX_VALUE;
            }
        }
        if (i10 > length || this.f90198c) {
            this.f90196a = Arrays.copyOf(this.f90196a, i10);
            this.f90198c = false;
        }
        Object[] objArr = this.f90196a;
        int i13 = this.f90197b;
        this.f90197b = i13 + 1;
        objArr[i13] = obj;
        return this;
    }
}
