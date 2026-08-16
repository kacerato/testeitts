package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.function.ToIntFunction;

public abstract class AbstractC6981dp extends AbstractC9811un {

    public static final boolean f47525i = true;

    public final byte f47526f;

    public final byte f47527g;

    public short f47528h;

    public AbstractC6981dp(int i10, C5693Op c5693Op) {
        super(c5693Op);
        this.f47526f = (byte) (i10 & 15);
        this.f47527g = (byte) ((i10 >> 4) & 15);
        this.f47528h = (short) c5693Op.b();
    }

    @Override
    public final int[] A() {
        return new int[]{this.f47528h, 2};
    }

    public abstract EnumC5592Mw0 O();

    public abstract NB P();

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final int hashCode() {
        return (((this.f47528h << 8) | (this.f47527g << 4)) | this.f47526f) ^ getClass().hashCode();
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C6545b91().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6981dp) obj).f47526f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6981dp) obj).f47527g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6981dp) obj).f47528h;
                return i10;
            }
        });
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f47527g, this.f47526f, shortBuffer, v());
        shortBuffer.put(this.f47528h);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        byte b10 = this.f47526f;
        byte b11 = this.f47527g;
        return b("v" + ((int) b10) + ", v" + ((int) b11) + ", " + b(this.f47528h));
    }

    public AbstractC6981dp(int i10, int i11, int i12) {
        boolean z10 = f47525i;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (-32768 > i12 || i12 > 32767)) {
            throw new AssertionError();
        }
        this.f47526f = (byte) i10;
        this.f47527g = (byte) i11;
        this.f47528h = (short) i12;
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6981dp) abstractC5635Np, new C6545b91());
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int u10 = u();
        NB P10 = P();
        EnumC5592Mw0 O10 = O();
        byte b10 = this.f47526f;
        byte b11 = this.f47527g;
        int i10 = this.f47528h + u10;
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
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(c6382aB.b(b10, O10));
        arrayList.add(c6382aB.b(b11, O10));
        EB eb2 = new EB(P10, arrayList);
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
        byte b10 = this.f47526f;
        byte b11 = this.f47527g;
        return a("v" + ((int) b10) + ", v" + ((int) b11) + ", :label_" + (u() + this.f47528h));
    }
}
