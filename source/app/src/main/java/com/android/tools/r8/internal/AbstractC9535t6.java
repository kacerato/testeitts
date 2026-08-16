package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractC9535t6 {

    public final int[] f52525a;

    public final int f52526b;

    public final int f52527c;

    public final int f52528d;

    public final List f52529e;

    public AbstractC9535t6(int... iArr) {
        List list;
        GJ.c(iArr, "numbers");
        this.f52525a = iArr;
        Integer valueOf = iArr.length > 0 ? Integer.valueOf(iArr[0]) : null;
        this.f52526b = valueOf != null ? valueOf.intValue() : -1;
        Integer valueOf2 = 1 < iArr.length ? Integer.valueOf(iArr[1]) : null;
        this.f52527c = valueOf2 != null ? valueOf2.intValue() : -1;
        Integer valueOf3 = 2 < iArr.length ? Integer.valueOf(iArr[2]) : null;
        this.f52528d = valueOf3 != null ? valueOf3.intValue() : -1;
        if (iArr.length <= 3) {
            list = C6049Ut.f44892b;
        } else {
            if (iArr.length > 1024) {
                throw new IllegalArgumentException("BinaryVersion with length more than 1024 are not supported. Provided length " + iArr.length + '.');
            }
            list = AbstractC6303Ze.b(new C7516h0(new Z3(iArr), 3, iArr.length));
        }
        this.f52529e = list;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        AbstractC9535t6 abstractC9535t6 = (AbstractC9535t6) obj;
        return this.f52526b == abstractC9535t6.f52526b && this.f52527c == abstractC9535t6.f52527c && this.f52528d == abstractC9535t6.f52528d && GJ.a(this.f52529e, abstractC9535t6.f52529e);
    }

    public final int hashCode() {
        int i10 = this.f52526b;
        int i11 = (i10 * 31) + this.f52527c + i10;
        int i12 = (i11 * 31) + this.f52528d + i11;
        return this.f52529e.hashCode() + (i12 * 31) + i12;
    }

    public final String toString() {
        int[] iArr = this.f52525a;
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 == -1) {
                break;
            }
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList.isEmpty() ? "unknown" : AbstractC6303Ze.a(arrayList, ".", null, null, null, 62);
    }
}
