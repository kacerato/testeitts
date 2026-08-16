package eg;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class s1 implements Mf.l<Throwable, nf.P0> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85777e = AtomicIntegerFieldUpdater.newUpdater(s1.class, "_state");

    @Lf.x
    private volatile int _state;

    @NotNull
    public final K0 f85778b;

    public final Thread f85779c = Thread.currentThread();

    @Nullable
    public InterfaceC13128m0 f85780d;

    public s1(@NotNull K0 k02) {
        this.f85778b = k02;
    }

    private final void i(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Mf.l<? super Integer, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    public final void b() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85777e;
        while (true) {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        d(i10);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f85777e.compareAndSet(this, i10, 1)) {
                InterfaceC13128m0 interfaceC13128m0 = this.f85780d;
                if (interfaceC13128m0 != null) {
                    interfaceC13128m0.dispose();
                    return;
                }
                return;
            }
        }
    }

    public final Void d(int i10) {
        throw new IllegalStateException(("Illegal state " + i10).toString());
    }

    public void h(@Nullable Throwable th2) {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = f85777e;
        do {
            i10 = atomicIntegerFieldUpdater2.get(this);
            if (i10 != 0) {
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    return;
                }
                d(i10);
                throw new KotlinNothingValueException();
            }
            atomicIntegerFieldUpdater = f85777e;
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 2));
        this.f85779c.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        h(th2);
        return nf.P0.f98194a;
    }

    public final void k() {
        int i10;
        this.f85780d = this.f85778b.S(true, true, this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f85777e;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2 || i10 == 3) {
                    return;
                }
                d(i10);
                throw new KotlinNothingValueException();
            }
        } while (!f85777e.compareAndSet(this, i10, 0));
    }
}
