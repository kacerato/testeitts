package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.BitSet;

public final class C5786Qe0 extends AbstractC5728Pe0 {

    public static final boolean f43656g = true;

    public final int f43657a;

    public int[] f43658b = new int[16];

    public final BitSet f43659c;

    public final BitSet f43660d;

    public final BitSet f43661e;

    public final BitSet f43662f;

    public C5786Qe0(int i10) {
        this.f43657a = i10;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f43658b[i11] = Integer.MAX_VALUE;
        }
        this.f43659c = new BitSet(i10);
        this.f43660d = new BitSet(i10);
        this.f43661e = new BitSet(i10);
        this.f43662f = new BitSet(i10);
    }

    @Override
    public final boolean a(int i10, EnumC5670Oe0 enumC5670Oe0) {
        if (!f43656g && this.f43662f.get(i10)) {
            throw new AssertionError();
        }
        int ordinal = enumC5670Oe0.ordinal();
        if (ordinal == 0) {
            return this.f43660d.get(i10);
        }
        if (ordinal == 1) {
            return this.f43659c.get(i10);
        }
        if (ordinal == 2) {
            return (this.f43660d.get(i10) || this.f43659c.get(i10) || this.f43661e.get(i10)) ? false : true;
        }
        if (ordinal == 3) {
            return true;
        }
        throw new C5417Jv0("Unexpected register position type: " + ((Object) enumC5670Oe0));
    }

    @Override
    public final boolean b(int i10) {
        return this.f43662f.get(i10);
    }

    @Override
    public final void c(int i10) {
        this.f43662f.set(i10);
    }

    @Override
    public final void a(int i10, int i11, FT ft) {
        int[] iArr = this.f43658b;
        if (i10 >= iArr.length) {
            int i12 = i10 + 1;
            int length = iArr.length;
            while (length < i12) {
                length *= 2;
            }
            int min = Math.min(length, this.f43657a);
            int[] iArr2 = this.f43658b;
            this.f43658b = Arrays.copyOf(iArr2, min);
            for (int length2 = iArr2.length; length2 < min; length2++) {
                this.f43658b[length2] = Integer.MAX_VALUE;
            }
        }
        this.f43658b[i10] = i11;
        BitSet bitSet = this.f43659c;
        C10340xw0 c10340xw0 = ft.f40212b;
        boolean z10 = false;
        bitSet.set(i10, c10340xw0.f53886c != null && c10340xw0.K());
        this.f43660d.set(i10, ft.f40226p);
        BitSet bitSet2 = this.f43661e;
        AbstractC10561zE abstractC10561zE = ft.f40212b.f53886c;
        if (abstractC10561zE != null && abstractC10561zE.c2() && !ft.f40212b.f53886c.w0().f52628l) {
            z10 = true;
        }
        bitSet2.set(i10, z10);
    }

    @Override
    public final int a(int i10) {
        boolean z10 = f43656g;
        if (!z10 && this.f43662f.get(i10)) {
            throw new AssertionError();
        }
        int[] iArr = this.f43658b;
        if (i10 < iArr.length) {
            return iArr[i10];
        }
        if (z10 || i10 < this.f43657a) {
            return Integer.MAX_VALUE;
        }
        throw new AssertionError();
    }
}
