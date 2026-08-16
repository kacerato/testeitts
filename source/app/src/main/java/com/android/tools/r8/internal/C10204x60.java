package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;

public final class C10204x60 extends B60.a {

    public static final boolean f53684j = true;

    public final C10569zH f53685h;

    public com.android.tools.r8.graph.A2 f53686i;

    public C10204x60() {
        boolean z10 = AH.f38587d;
        this.f53685h = new C10569zH();
    }

    @Override
    public final B60.a c() {
        return this;
    }

    @Override
    public final C10371y60 a() {
        boolean z10 = f53684j;
        if (!z10 && !this.f38817f && this.f38812a < 0) {
            throw new AssertionError();
        }
        if (!z10 && !this.f38818g && this.f38813b == null) {
            throw new AssertionError();
        }
        int i10 = this.f38812a;
        com.android.tools.r8.graph.A2 a22 = this.f38813b;
        B60 b60 = this.f38814c;
        boolean z11 = this.f38815d;
        boolean z12 = this.f38816e;
        C10569zH c10569zH = this.f53685h;
        c10569zH.getClass();
        Object[] array = c10569zH.f54344a.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            Object obj = array[i11];
            obj.getClass();
            iArr[i11] = ((Number) obj).intValue();
        }
        return new C10371y60(i10, a22, b60, z11, z12, new AH(iArr, c10569zH.f54345b.a()), this.f53686i);
    }

    public final C10204x60 a(int i10, B60 b60) {
        C10569zH c10569zH = this.f53685h;
        c10569zH.f54344a.add(Integer.valueOf(i10));
        c10569zH.f54345b.a(b60);
        return this;
    }
}
