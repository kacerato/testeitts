package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.ToIntFunction;

public abstract class AbstractC6324Zo extends AbstractC9811un {

    public static final boolean f46351h = true;

    public final short f46352f;

    public short f46353g;

    public AbstractC6324Zo(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f46352f = (short) i10;
        this.f46353g = (short) c5693Op.b();
    }

    @Override
    public int[] A() {
        return new int[]{this.f46353g, 2};
    }

    public abstract EnumC5592Mw0 O();

    public abstract NB P();

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return ((this.f46353g << 8) | this.f46352f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C10199x41().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6324Zo) obj).f46352f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6324Zo) obj).f46353g;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f46352f, v(), shortBuffer);
        shortBuffer.put(this.f46353g);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f46352f;
        return b("v" + ((int) s10) + ", " + b(this.f46353g));
    }

    public AbstractC6324Zo(int i10, int i11) {
        boolean z10 = f46351h;
        if (!z10 && (-32768 > i11 || i11 > 32767)) {
            throw new AssertionError();
        }
        if (!z10 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f46352f = (short) i10;
        this.f46353g = (short) i11;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6324Zo) abstractC5635Np, new C10199x41());
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int u10 = u();
        NB P10 = P();
        EnumC5592Mw0 O10 = O();
        short s10 = this.f46352f;
        int i10 = this.f46353g + u10;
        int i11 = u10 + 2;
        c6382aB.getClass();
        if (i10 == i11) {
            if (!C6382aB.f46438D && i10 != i11) {
                throw new AssertionError();
            }
            W5 w52 = ((VA) c6382aB.f46442a.get(i10)).f44991a;
            w52.d();
            c6382aB.f46451j.g(w52);
            c6382aB.a(w52, c6382aB.f46462u.c(i10));
            c6382aB.a((AbstractC9408sL) new C4960Bz());
            return;
        }
        EB eb2 = new EB(P10, c6382aB.b(s10, O10));
        W5 w53 = ((VA) c6382aB.f46442a.get(i10)).f44991a;
        W5 w54 = ((VA) c6382aB.f46442a.get(i11)).f44991a;
        c6382aB.f46451j.g(w53);
        c6382aB.f46451j.g(w54);
        c6382aB.a(w54, c6382aB.f46462u.c(i11));
        c6382aB.a(w53, c6382aB.f46462u.c(i10));
        c6382aB.a((AbstractC9408sL) eb2);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f46352f;
        return a("v" + ((int) s10) + ", :label_" + (u() + this.f46353g));
    }
}
