package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.nio.ShortBuffer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public final class C7318fq extends AbstractC10145wn {

    public static final boolean f48109n = true;

    public final byte f48110f;

    public final byte f48111g;

    public final byte f48112h;

    public final byte f48113i;

    public final byte f48114j;

    public final byte f48115k;

    public final com.android.tools.r8.graph.A2 f48116l;

    public final com.android.tools.r8.graph.I2 f48117m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7318fq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(c5693Op);
        com.android.tools.r8.graph.A2[] b10 = c4785x5.b();
        if (!C4785x5.f38371i && c4785x5.f38374c == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.I2[] i2Arr = c4785x5.f38374c;
        this.f48115k = (byte) (i10 & 15);
        this.f48110f = (byte) ((i10 >> 4) & 15);
        this.f48116l = b10[(char) (c5693Op.b() & 65535)];
        short a10 = (short) c5693Op.a();
        this.f48113i = (byte) (a10 & 15);
        this.f48114j = (byte) ((a10 >> 4) & 15);
        short a11 = (short) c5693Op.a();
        this.f48111g = (byte) (a11 & 15);
        this.f48112h = (byte) ((a11 >> 4) & 15);
        this.f48117m = i2Arr[(char) (c5693Op.b() & 65535)];
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49587k, this.f48116l, this.f48117m, this.f48110f, new int[]{this.f48111g, this.f48112h, this.f48113i, this.f48114j, this.f48115k});
    }

    @Override
    public final int hashCode() {
        return ((((((((this.f48117m.hashCode() << 28) | (this.f48116l.hashCode() << 24)) | (this.f48110f << 20)) | (this.f48111g << 16)) | (this.f48112h << 12)) | (this.f48113i << 8)) | (this.f48114j << 4)) | this.f48115k) ^ C7318fq.class.hashCode();
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "InvokePolymorphic";
    }

    @Override
    public final int v() {
        return 250;
    }

    @Override
    public final String z() {
        return "invoke-polymorphic";
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C8275lb1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ ");
        int[] iArr = {this.f48111g, this.f48112h, this.f48113i, this.f48114j, this.f48115k};
        for (int i10 = 0; i10 < this.f48110f; i10++) {
            if (i10 != 0) {
                sb2.append(" ");
            }
            sb2.append("v");
            sb2.append(iArr[i10]);
        }
        sb2.append(" } ");
        sb2.append(c9970vk0.b(this.f48116l));
        sb2.append(", ");
        sb2.append(c9970vk0.a(this.f48117m));
        return b(sb2.toString());
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48110f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48111g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48112h;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48113i;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48114j;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7318fq) obj).f48115k;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.A2 a22;
                a22 = ((C7318fq) obj).f48116l;
                return a22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.I2 i22;
                i22 = ((C7318fq) obj).f48117m;
                return i22;
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.A2 b() {
        return this.f48116l;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C7318fq) abstractC5635Np, new C8275lb1());
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        AbstractC5308Hz v10 = c4798y.v();
        com.android.tools.r8.graph.A2 a22 = this.f48116l;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49587k;
        NW a10 = v10.a(a22, reference, enumC8071kK, abstractC5308Hz, AbstractC9530t40.f52519c);
        if (!f48109n && a10.f42623d != enumC8071kK) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) a10.f41111a;
        if (a23.b(c4798y, m10)) {
            com.android.tools.r8.graph.L2 a11 = c4798y.s().a(a23);
            a11.getClass();
            m10.a(a11);
        }
        com.android.tools.r8.graph.I2 a12 = rr.a(this.f48117m);
        a12.getClass();
        if (m10.a(a12)) {
            a12.f36440e.a(c4798y, m10);
            a12.f36441f.a(c4798y, m10);
        }
    }

    public C7318fq(int i10, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, int i11, int i12, int i13, int i14, int i15) {
        boolean z10 = f48109n;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i12 < 0 || i12 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i13 < 0 || i13 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i14 < 0 || i14 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i15 < 0 || i15 > 15)) {
            throw new AssertionError();
        }
        this.f48110f = (byte) i10;
        this.f48116l = a22;
        this.f48117m = i22;
        this.f48111g = (byte) i11;
        this.f48112h = (byte) i12;
        this.f48113i = (byte) i13;
        this.f48114j = (byte) i14;
        this.f48115k = (byte) i15;
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.A2 a22;
        boolean z10 = f48109n;
        if (!z10 && !rr.f43897a.b().f38015b5.a(this.f48116l)) {
            throw new AssertionError();
        }
        if (!z10 && (a22 = this.f48116l) != abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49587k, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.I2 a10 = rr.a(this.f48117m);
        AbstractC5635Np.a(this.f48110f, this.f48115k, shortBuffer, 250);
        AbstractC5635Np.a(this.f48116l, shortBuffer, c4766w5);
        shortBuffer.put(AbstractC5635Np.d(AbstractC5635Np.e(this.f48114j, this.f48113i), AbstractC5635Np.e(this.f48112h, this.f48111g)));
        AbstractC5635Np.a(a10, shortBuffer, c4766w5);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ ");
        int[] iArr = {this.f48111g, this.f48112h, this.f48113i, this.f48114j, this.f48115k};
        for (int i10 = 0; i10 < this.f48110f; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append("v");
            sb2.append(iArr[i10]);
        }
        sb2.append(" }, ");
        sb2.append(this.f48116l.i0());
        sb2.append(", ");
        com.android.tools.r8.graph.I2 i22 = this.f48117m;
        i22.getClass();
        sb2.append(i22.a(AbstractC10992r0.a()));
        return a(sb2.toString());
    }
}
