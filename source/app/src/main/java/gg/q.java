package gg;

import com.google.common.util.concurrent.C0;
import eg.y1;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import mg.J;
import mg.P;
import mg.T;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n1#2:3056\n*E\n"})
public final class q<E> extends P<q<E>> {

    @Nullable
    public final j<E> f89699f;

    @NotNull
    public final AtomicReferenceArray f89700g;

    public q(long j10, @Nullable q<E> qVar, @Nullable j<E> jVar, int i10) {
        super(j10, qVar, i10);
        this.f89699f = jVar;
        this.f89700g = new AtomicReferenceArray(k.f89650b * 2);
    }

    public final E A(int i10) {
        E x10 = x(i10);
        u(i10);
        return x10;
    }

    public final void B(int i10, Object obj) {
        this.f89700g.lazySet(i10 * 2, obj);
    }

    public final void C(int i10, @Nullable Object obj) {
        this.f89700g.set((i10 * 2) + 1, obj);
    }

    public final void D(int i10, E e10) {
        B(i10, e10);
    }

    @Override
    public int p() {
        return k.f89650b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0063, code lost:
    
        u(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0066, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0068, code lost:
    
        r4 = w().f89609c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006e, code lost:
    
        if (r4 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0070, code lost:
    
        mg.J.b(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q(int i10, @Nullable Throwable th2, @NotNull yf.j jVar) {
        Mf.l<E, P0> lVar;
        T t10;
        T t11;
        T t12;
        T t13;
        T t14;
        int i11 = k.f89650b;
        boolean z10 = i10 >= i11;
        if (z10) {
            i10 -= i11;
        }
        E x10 = x(i10);
        while (true) {
            Object y10 = y(i10);
            if (!(y10 instanceof y1) && !(y10 instanceof H)) {
                t10 = k.f89660l;
                if (y10 == t10) {
                    break;
                }
                t11 = k.f89661m;
                if (y10 == t11) {
                    break;
                }
                t12 = k.f89657i;
                if (y10 != t12) {
                    t13 = k.f89656h;
                    if (y10 != t13) {
                        t14 = k.f89659k;
                        if (y10 == t14 || y10 == k.f89654f || y10 == k.z()) {
                            return;
                        }
                        throw new IllegalStateException(("unexpected state: " + y10).toString());
                    }
                } else {
                    continue;
                }
            } else {
                if (t(i10, y10, z10 ? k.f89660l : k.f89661m)) {
                    u(i10);
                    z(i10, !z10);
                    if (!z10 || (lVar = w().f89609c) == null) {
                        return;
                    }
                    J.b(lVar, x10, jVar);
                    return;
                }
            }
        }
    }

    public final boolean t(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return C0.a(this.f89700g, (i10 * 2) + 1, obj, obj2);
    }

    public final void u(int i10) {
        B(i10, null);
    }

    @Nullable
    public final Object v(int i10, @Nullable Object obj) {
        return this.f89700g.getAndSet((i10 * 2) + 1, obj);
    }

    @NotNull
    public final j<E> w() {
        j<E> jVar = this.f89699f;
        M.m(jVar);
        return jVar;
    }

    public final E x(int i10) {
        return (E) this.f89700g.get(i10 * 2);
    }

    @Nullable
    public final Object y(int i10) {
        return this.f89700g.get((i10 * 2) + 1);
    }

    public final void z(int i10, boolean z10) {
        if (z10) {
            w().G1((this.f97034d * k.f89650b) + i10);
        }
        r();
    }
}
