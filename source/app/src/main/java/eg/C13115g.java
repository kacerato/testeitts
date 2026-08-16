package eg;

import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"})
public final class C13115g<T> extends AbstractC13102a<T> {

    @NotNull
    public final Thread f85724e;

    @Nullable
    public final AbstractC13136q0 f85725f;

    public C13115g(@NotNull yf.j jVar, @NotNull Thread thread, @Nullable AbstractC13136q0 abstractC13136q0) {
        super(jVar, true, true);
        this.f85724e = thread;
        this.f85725f = abstractC13136q0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T C1() {
        nf.P0 p02;
        AbstractC13105b b10 = C13107c.b();
        if (b10 != null) {
            b10.d();
        }
        try {
            AbstractC13136q0 abstractC13136q0 = this.f85725f;
            if (abstractC13136q0 != null) {
                AbstractC13136q0.B(abstractC13136q0, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    AbstractC13136q0 abstractC13136q02 = this.f85725f;
                    long g02 = abstractC13136q02 != null ? abstractC13136q02.g0() : Long.MAX_VALUE;
                    if (d()) {
                        AbstractC13136q0 abstractC13136q03 = this.f85725f;
                        if (abstractC13136q03 != null) {
                            AbstractC13136q0.t(abstractC13136q03, false, 1, null);
                        }
                        T t10 = (T) S0.h(J0());
                        C13091D c13091d = t10 instanceof C13091D ? (C13091D) t10 : null;
                        if (c13091d == null) {
                            return t10;
                        }
                        throw c13091d.f85604a;
                    }
                    AbstractC13105b b11 = C13107c.b();
                    if (b11 != null) {
                        b11.c(this, g02);
                        p02 = nf.P0.f98194a;
                    } else {
                        p02 = null;
                    }
                    if (p02 == null) {
                        LockSupport.parkNanos(this, g02);
                    }
                } catch (Throwable th2) {
                    AbstractC13136q0 abstractC13136q04 = this.f85725f;
                    if (abstractC13136q04 != null) {
                        AbstractC13136q0.t(abstractC13136q04, false, 1, null);
                    }
                    throw th2;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            j0(interruptedException);
            throw interruptedException;
        } finally {
            AbstractC13105b b12 = C13107c.b();
            if (b12 != null) {
                b12.h();
            }
        }
    }

    @Override
    public boolean P0() {
        return true;
    }

    @Override
    public void g0(@Nullable Object obj) {
        nf.P0 p02;
        if (kotlin.jvm.internal.M.g(Thread.currentThread(), this.f85724e)) {
            return;
        }
        Thread thread = this.f85724e;
        AbstractC13105b b10 = C13107c.b();
        if (b10 != null) {
            b10.g(thread);
            p02 = nf.P0.f98194a;
        } else {
            p02 = null;
        }
        if (p02 == null) {
            LockSupport.unpark(thread);
        }
    }
}
