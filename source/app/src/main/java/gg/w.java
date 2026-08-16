package gg;

import eg.y1;
import gg.p;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.internal.UndeliveredElementException;
import mg.J;
import nf.C14436t;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,119:1\n548#2,5:120\n514#2,6:125\n514#2,6:212\n548#2,5:218\n244#3:131\n269#3,10:132\n280#3,68:143\n3038#4:142\n269#5:211\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n41#1:120,5\n53#1:125,6\n106#1:212,6\n109#1:218,5\n80#1:131\n80#1:132,10\n80#1:143,68\n80#1:142\n80#1:211\n*E\n"})
public class w<E> extends j<E> {

    public final int f89917n;

    @NotNull
    public final i f89918o;

    public w(int i10, i iVar, Mf.l lVar, int i11, C14026x c14026x) {
        this(i10, iVar, (i11 & 4) != 0 ? null : lVar);
    }

    public static <E> Object H1(w<E> wVar, E e10, yf.f<? super P0> fVar) {
        UndeliveredElementException d10;
        Object L12 = wVar.L1(e10, true);
        if (!(L12 instanceof p.a)) {
            return P0.f98194a;
        }
        p.f(L12);
        Mf.l<E, P0> lVar = wVar.f89609c;
        if (lVar == null || (d10 = J.d(lVar, e10, null, 2, null)) == null) {
            throw wVar.n0();
        }
        C14436t.a(d10, wVar.n0());
        throw d10;
    }

    public static <E> Object I1(w<E> wVar, E e10, yf.f<? super Boolean> fVar) {
        Object L12 = wVar.L1(e10, true);
        if (L12 instanceof p.c) {
            return Bf.b.a(false);
        }
        return Bf.b.a(true);
    }

    public final Object J1(E e10, boolean z10) {
        Mf.l<E, P0> lVar;
        UndeliveredElementException d10;
        Object p10 = super.p(e10);
        if (p.m(p10) || p.k(p10)) {
            return p10;
        }
        if (!z10 || (lVar = this.f89609c) == null || (d10 = J.d(lVar, e10, null, 2, null)) == null) {
            return p.f89695b.c(P0.f98194a);
        }
        throw d10;
    }

    public final Object K1(E e10) {
        q qVar;
        Object obj = k.f89654f;
        q qVar2 = (q) j.f89603i.get(this);
        while (true) {
            long andIncrement = j.f89599e.getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean y02 = y0(andIncrement);
            int i10 = k.f89650b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (qVar2.f97034d != j11) {
                q c02 = c0(j11, qVar2);
                if (c02 != null) {
                    qVar = c02;
                } else if (y02) {
                    return p.f89695b.a(n0());
                }
            } else {
                qVar = qVar2;
            }
            int C12 = C1(qVar, i11, e10, j10, obj, y02);
            if (C12 == 0) {
                qVar.b();
                return p.f89695b.c(P0.f98194a);
            }
            if (C12 == 1) {
                return p.f89695b.c(P0.f98194a);
            }
            if (C12 == 2) {
                if (y02) {
                    qVar.r();
                    return p.f89695b.a(n0());
                }
                y1 y1Var = obj instanceof y1 ? (y1) obj : null;
                if (y1Var != null) {
                    T0(y1Var, qVar, i11);
                }
                Y((qVar.f97034d * i10) + i11);
                return p.f89695b.c(P0.f98194a);
            }
            if (C12 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (C12 == 4) {
                if (j10 < m0()) {
                    qVar.b();
                }
                return p.f89695b.a(n0());
            }
            if (C12 == 5) {
                qVar.b();
            }
            qVar2 = qVar;
        }
    }

    public final Object L1(E e10, boolean z10) {
        return this.f89918o == i.DROP_LATEST ? J1(e10, z10) : K1(e10);
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        return H1(this, e10, fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void g1(@NotNull pg.m<?> mVar, @Nullable Object obj) {
        Object p10 = p(obj);
        if (!(p10 instanceof p.c)) {
            mVar.w(P0.f98194a);
        } else {
            if (!(p10 instanceof p.a)) {
                throw new IllegalStateException("unreachable");
            }
            p.f(p10);
            mVar.w(k.z());
        }
    }

    @Override
    @Nullable
    public Object m1(E e10, @NotNull yf.f<? super Boolean> fVar) {
        return I1(this, e10, fVar);
    }

    @Override
    @NotNull
    public Object p(E e10) {
        return L1(e10, false);
    }

    @Override
    public boolean t1() {
        return false;
    }

    @Override
    public boolean z0() {
        return this.f89918o == i.DROP_OLDEST;
    }

    public w(int i10, @NotNull i iVar, @Nullable Mf.l<? super E, P0> lVar) {
        super(i10, lVar);
        this.f89917n = i10;
        this.f89918o = iVar;
        if (iVar == i.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + n0.d(j.class).getSimpleName() + " instead").toString());
        }
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
    }
}
