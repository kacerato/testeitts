package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.e3;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@A
@v2.b
public abstract class AbstractC12617j<InputT, OutputT> extends AbstractC12619k<OutputT> {

    public static final Logger f67475q = Logger.getLogger(AbstractC12617j.class.getName());

    @CheckForNull
    public AbstractC12505c1<? extends Z<? extends InputT>> f67476n;

    public final boolean f67477o;

    public final boolean f67478p;

    public enum a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public AbstractC12617j(AbstractC12505c1<? extends Z<? extends InputT>> abstractC12505c1, boolean z10, boolean z11) {
        super(abstractC12505c1.size());
        this.f67476n = (AbstractC12505c1) w2.H.E(abstractC12505c1);
        this.f67477o = z10;
        this.f67478p = z11;
    }

    public static boolean P(Set<Throwable> set, Throwable th2) {
        while (th2 != null) {
            if (!set.add(th2)) {
                return false;
            }
            th2 = th2.getCause();
        }
        return true;
    }

    public static void Z(Throwable th2) {
        f67475q.log(Level.SEVERE, th2 instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th2);
    }

    @Override
    public final void J(Set<Throwable> set) {
        w2.H.E(set);
        if (isCancelled()) {
            return;
        }
        Throwable a10 = a();
        Objects.requireNonNull(a10);
        P(set, a10);
    }

    public abstract void Q(int i10, @InterfaceC12618j0 InputT inputt);

    /* JADX WARN: Multi-variable type inference failed */
    public final void S(int i10, Future<? extends InputT> future) {
        try {
            Q(i10, Q.h(future));
        } catch (ExecutionException e10) {
            V(e10.getCause());
        } catch (Throwable th2) {
            V(th2);
        }
    }

    public final void Y(@CheckForNull AbstractC12505c1<? extends Future<? extends InputT>> abstractC12505c1) {
        int L10 = L();
        w2.H.h0(L10 >= 0, "Less than 0 remaining futures");
        if (L10 == 0) {
            a0(abstractC12505c1);
        }
    }

    public abstract void U();

    public final void V(Throwable th2) {
        w2.H.E(th2);
        if (this.f67477o && !D(th2) && P(M(), th2)) {
            Z(th2);
        } else if (th2 instanceof Error) {
            Z(th2);
        }
    }

    public final void W() {
        Objects.requireNonNull(this.f67476n);
        if (this.f67476n.isEmpty()) {
            U();
            return;
        }
        if (!this.f67477o) {
            final AbstractC12505c1<? extends Z<? extends InputT>> abstractC12505c1 = this.f67478p ? this.f67476n : null;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    AbstractC12617j.this.Y(abstractC12505c1);
                }
            };
            e3<? extends Z<? extends InputT>> it = this.f67476n.iterator();
            while (it.hasNext()) {
                it.next().addListener(runnable, C12612g0.c());
            }
            return;
        }
        e3<? extends Z<? extends InputT>> it2 = this.f67476n.iterator();
        final int i10 = 0;
        while (it2.hasNext()) {
            final Z<? extends InputT> next = it2.next();
            next.addListener(new Runnable() {
                @Override
                public final void run() {
                    AbstractC12617j.this.X(next, i10);
                }
            }, C12612g0.c());
            i10++;
        }
    }

    public final void X(Z z10, int i10) {
        try {
            if (z10.isCancelled()) {
                this.f67476n = null;
                cancel(false);
            } else {
                S(i10, z10);
            }
            Y(null);
        } catch (Throwable th2) {
            Y(null);
            throw th2;
        }
    }

    public final void a0(@CheckForNull AbstractC12505c1<? extends Future<? extends InputT>> abstractC12505c1) {
        if (abstractC12505c1 != null) {
            e3<? extends Future<? extends InputT>> it = abstractC12505c1.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Future<? extends InputT> next = it.next();
                if (!next.isCancelled()) {
                    S(i10, next);
                }
                i10++;
            }
        }
        K();
        U();
        b0(a.ALL_INPUT_FUTURES_PROCESSED);
    }

    @I2.g
    @I2.r
    public void b0(a aVar) {
        w2.H.E(aVar);
        this.f67476n = null;
    }

    @Override
    public final void n() {
        super.n();
        AbstractC12505c1<? extends Z<? extends InputT>> abstractC12505c1 = this.f67476n;
        b0(a.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (abstractC12505c1 != null)) {
            boolean F10 = F();
            e3<? extends Z<? extends InputT>> it = abstractC12505c1.iterator();
            while (it.hasNext()) {
                it.next().cancel(F10);
            }
        }
    }

    @Override
    @CheckForNull
    public final String z() {
        AbstractC12505c1<? extends Z<? extends InputT>> abstractC12505c1 = this.f67476n;
        if (abstractC12505c1 == null) {
            return super.z();
        }
        String valueOf = String.valueOf(abstractC12505c1);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 8);
        sb2.append("futures=");
        sb2.append(valueOf);
        return sb2.toString();
    }
}
