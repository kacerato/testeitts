package com.android.tools.r8.internal;

import java.util.Arrays;

public abstract class PC {

    public Object[] f43164a;

    public int f43165b;

    public PC(int i10) {
        this.f43164a = new Object[i10];
        this.f43165b = 0;
    }

    public abstract PC a(Object obj);

    public abstract QC a();

    public abstract PC b();

    public final void b(Object obj) {
        int i10 = this.f43165b + 1;
        Object[] objArr = this.f43164a;
        if (i10 > objArr.length) {
            this.f43164a = Arrays.copyOf(this.f43164a, WB.a(objArr.length, i10));
        }
        Object[] objArr2 = this.f43164a;
        int i11 = this.f43165b;
        this.f43165b = i11 + 1;
        objArr2[i11] = obj;
    }

    public PC c() {
        return this;
    }

    public PC(PC pc2) {
        Object[] objArr = pc2.f43164a;
        this.f43164a = Arrays.copyOf(objArr, objArr.length);
        this.f43165b = pc2.f43165b;
    }
}
