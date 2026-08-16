package eg;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import mg.C14252m;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public final class C13114f0<T> extends mg.O<T> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85722f = AtomicIntegerFieldUpdater.newUpdater(C13114f0.class, "_decision");

    @Lf.x
    @Lf.g
    private volatile int _decision;

    public C13114f0(@NotNull yf.j jVar, @NotNull yf.f<? super T> fVar) {
        super(jVar, fVar);
    }

    @NotNull
    public static final AtomicIntegerFieldUpdater D1() {
        return f85722f;
    }

    @Nullable
    public final Object C1() {
        if (G1()) {
            return Af.d.l();
        }
        Object h10 = S0.h(J0());
        if (h10 instanceof C13091D) {
            throw ((C13091D) h10).f85604a;
        }
        return h10;
    }

    public final void E1(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    public final boolean F1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85722f;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f85722f.compareAndSet(this, 0, 2));
        return true;
    }

    public final boolean G1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85722f;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f85722f.compareAndSet(this, 0, 1));
        return true;
    }

    @Override
    public void g0(@Nullable Object obj) {
        x1(obj);
    }

    @Override
    public void x1(@Nullable Object obj) {
        if (F1()) {
            return;
        }
        C14252m.e(Af.c.e(this.f97032e), C13096I.a(obj, this.f97032e), null, 2, null);
    }
}
