package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.nio.ShortBuffer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class C7485gq extends AbstractC10145wn {

    public static final boolean f48367j = true;

    public final short f48368f;

    public final char f48369g;

    public final com.android.tools.r8.graph.A2 f48370h;

    public final com.android.tools.r8.graph.I2 f48371i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7485gq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(c5693Op);
        com.android.tools.r8.graph.A2[] b10 = c4785x5.b();
        if (!C4785x5.f38371i && c4785x5.f38374c == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.I2[] i2Arr = c4785x5.f38374c;
        this.f48368f = (short) i10;
        this.f48370h = b10[(char) (c5693Op.b() & 65535)];
        this.f48369g = (char) (c5693Op.b() & 65535);
        this.f48371i = i2Arr[(char) (c5693Op.b() & 65535)];
    }

    @Override
    public final int hashCode() {
        return ((((this.f48369g << 24) | (this.f48371i.hashCode() << 12)) | (this.f48370h.hashCode() << 4)) | this.f48368f) ^ getClass().hashCode();
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "InvokePolymorphicRange";
    }

    @Override
    public final int v() {
        return 251;
    }

    @Override
    public final String z() {
        return "invoke-polymorphic/range";
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7485gq) obj).f48368f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C7485gq) obj).f48369g;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.A2 a22;
                a22 = ((C7485gq) obj).f48370h;
                return a22;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.I2 i22;
                i22 = ((C7485gq) obj).f48371i;
                return i22;
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.A2 b() {
        return this.f48370h;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(this.f48370h);
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C7944jc1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49587k, this.f48370h, this.f48371i, this.f48368f, this.f48369g);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ v");
        char c10 = this.f48369g;
        sb2.append((int) c10);
        if (this.f48368f != 1) {
            sb2.append(" .. v");
            sb2.append((c10 + this.f48368f) - 1);
        }
        sb2.append(" } ");
        sb2.append(c9970vk0.b(this.f48370h));
        sb2.append(c9970vk0.a(this.f48371i));
        return b(sb2.toString());
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.A2 a22;
        boolean z10 = f48367j;
        if (!z10 && !rr.f43897a.b().f38015b5.a(this.f48370h)) {
            throw new AssertionError();
        }
        if (!z10 && (a22 = this.f48370h) != abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49587k, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.I2 a10 = rr.a(this.f48371i);
        AbstractC5635Np.a(this.f48368f, 251, shortBuffer);
        AbstractC5635Np.a(this.f48370h, shortBuffer, c4766w5);
        shortBuffer.put((short) this.f48369g);
        AbstractC5635Np.a(a10, shortBuffer, c4766w5);
    }

    public C7485gq(int i10, int i11, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22) {
        boolean z10 = f48367j;
        if (!z10 && (i10 < 0 || i10 > 65535)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 255)) {
            throw new AssertionError();
        }
        this.f48369g = (char) i10;
        this.f48368f = (short) i11;
        this.f48370h = a22;
        this.f48371i = i22;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C7485gq) abstractC5635Np, new C7944jc1());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ v");
        char c10 = this.f48369g;
        sb2.append((int) c10);
        if (this.f48368f != 1) {
            sb2.append(" .. v");
            sb2.append((c10 + this.f48368f) - 1);
        }
        sb2.append(" }, ");
        sb2.append(this.f48370h.i0());
        sb2.append(", ");
        com.android.tools.r8.graph.I2 i22 = this.f48371i;
        i22.getClass();
        sb2.append(i22.a(AbstractC10992r0.a()));
        return a(sb2.toString());
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        AbstractC5308Hz v10 = c4798y.v();
        com.android.tools.r8.graph.A2 a22 = this.f48370h;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49587k;
        NW a10 = v10.a(a22, reference, enumC8071kK, abstractC5308Hz, AbstractC9530t40.f52519c);
        if (!f48367j && a10.f42623d != enumC8071kK) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) a10.f41111a;
        if (a23.b(c4798y, m10)) {
            com.android.tools.r8.graph.L2 a11 = c4798y.s().a(a23);
            a11.getClass();
            m10.a(a11);
        }
        com.android.tools.r8.graph.I2 a12 = rr.a(this.f48371i);
        a12.getClass();
        if (m10.a(a12)) {
            a12.f36440e.a(c4798y, m10);
            a12.f36441f.a(c4798y, m10);
        }
    }
}
