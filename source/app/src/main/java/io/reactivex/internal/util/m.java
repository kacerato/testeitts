package io.reactivex.internal.util;

import java.util.ArrayList;

public class m {

    public final int f92442a;

    public Object[] f92443b;

    public Object[] f92444c;

    public volatile int f92445d;

    public int f92446e;

    public m(int i10) {
        this.f92442a = i10;
    }

    public void a(Object obj) {
        if (this.f92445d == 0) {
            Object[] objArr = new Object[this.f92442a + 1];
            this.f92443b = objArr;
            this.f92444c = objArr;
            objArr[0] = obj;
            this.f92446e = 1;
            this.f92445d = 1;
            return;
        }
        int i10 = this.f92446e;
        int i11 = this.f92442a;
        if (i10 != i11) {
            this.f92444c[i10] = obj;
            this.f92446e = i10 + 1;
            this.f92445d++;
        } else {
            Object[] objArr2 = new Object[i11 + 1];
            objArr2[0] = obj;
            this.f92444c[i11] = objArr2;
            this.f92444c = objArr2;
            this.f92446e = 1;
            this.f92445d++;
        }
    }

    public Object[] b() {
        return this.f92443b;
    }

    public int c() {
        return this.f92445d;
    }

    public String toString() {
        int i10 = this.f92442a;
        int i11 = this.f92445d;
        ArrayList arrayList = new ArrayList(i11 + 1);
        Object[] b10 = b();
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            arrayList.add(b10[i13]);
            i12++;
            i13++;
            if (i13 == i10) {
                b10 = (Object[]) b10[i10];
                i13 = 0;
            }
        }
        return arrayList.toString();
    }
}
