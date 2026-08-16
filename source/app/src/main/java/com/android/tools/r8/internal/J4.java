package com.android.tools.r8.internal;

public final class J4 {

    public int f41277a;

    public K4[] f41278b = new K4[6];

    public final void a(K4 k42) {
        while (k42 != null) {
            int i10 = 0;
            while (true) {
                int i11 = this.f41277a;
                if (i10 >= i11) {
                    K4[] k4Arr = this.f41278b;
                    if (i11 >= k4Arr.length) {
                        K4[] k4Arr2 = new K4[k4Arr.length + 6];
                        System.arraycopy(k4Arr, 0, k4Arr2, 0, i11);
                        this.f41278b = k4Arr2;
                    }
                    K4[] k4Arr3 = this.f41278b;
                    int i12 = this.f41277a;
                    this.f41277a = i12 + 1;
                    k4Arr3[i12] = k42;
                } else if (this.f41278b[i10].f41566a.equals(k42.f41566a)) {
                    break;
                } else {
                    i10++;
                }
            }
            k42 = k42.f41568c;
        }
    }
}
