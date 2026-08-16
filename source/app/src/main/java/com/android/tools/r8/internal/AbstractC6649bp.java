package com.android.tools.r8.internal;

import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class AbstractC6649bp extends AbstractC9811un {

    public static final boolean f46868i = true;

    public final byte f46869f;

    public final byte f46870g;

    public final com.android.tools.r8.graph.J2 f46871h;

    public AbstractC6649bp(int i10, InterfaceC10042w8 interfaceC10042w8, com.android.tools.r8.graph.J2[] j2Arr) {
        super(interfaceC10042w8);
        this.f46869f = (byte) (i10 & 15);
        this.f46870g = (byte) ((i10 >> 4) & 15);
        this.f46871h = j2Arr[AbstractC5635Np.a(interfaceC10042w8)];
    }

    @Override
    public final int hashCode() {
        return (((this.f46871h.hashCode() << 8) | (this.f46869f << 4)) | this.f46870g) ^ getClass().hashCode();
    }

    public static void b(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6649bp) obj).f46869f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6649bp) obj).f46870g;
                return i10;
            }
        }).c(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.J2 j22;
                j22 = ((AbstractC6649bp) obj).f46871h;
                return j22;
            }
        });
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6649bp) abstractC5635Np, (InterfaceC5638Nq0<AbstractC6649bp>) new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                AbstractC6649bp.b(abstractC5754Pq0);
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                AbstractC6649bp.b(abstractC5754Pq0);
            }
        }.a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        byte b10 = this.f46869f;
        byte b11 = this.f46870g;
        return a("v" + ((int) b10) + ", v" + ((int) b11) + ", " + this.f46871h.i0());
    }

    public AbstractC6649bp(int i10, int i11, com.android.tools.r8.graph.J2 j22) {
        boolean z10 = f46868i;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        this.f46869f = (byte) i10;
        this.f46870g = (byte) i11;
        this.f46871h = j22;
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        byte b10 = this.f46869f;
        byte b11 = this.f46870g;
        return b("v" + ((int) b10) + ", v" + ((int) b11) + ", " + c9970vk0.a(this.f46871h));
    }
}
