package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class w1<T> extends AbstractC2859a<T, T> {

    public final long f19997c;

    public final TimeUnit f19998d;

    public final Be.J f19999e;

    public final boolean f20000f;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c, Runnable {

        public static final long f20001n = -8296689127439125014L;

        public final Be.I<? super T> f20002b;

        public final long f20003c;

        public final TimeUnit f20004d;

        public final J.c f20005e;

        public final boolean f20006f;

        public final AtomicReference<T> f20007g = new AtomicReference<>();

        public De.c f20008h;

        public volatile boolean f20009i;

        public Throwable f20010j;

        public volatile boolean f20011k;

        public volatile boolean f20012l;

        public boolean f20013m;

        public a(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar, boolean z10) {
            this.f20002b = i10;
            this.f20003c = j10;
            this.f20004d = timeUnit;
            this.f20005e = cVar;
            this.f20006f = z10;
        }

        @Override
        public void a() {
            this.f20009i = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f20007g;
            Be.I<? super T> i10 = this.f20002b;
            int i11 = 1;
            while (!this.f20011k) {
                boolean z10 = this.f20009i;
                if (z10 && this.f20010j != null) {
                    atomicReference.lazySet(null);
                    i10.onError(this.f20010j);
                    this.f20005e.dispose();
                    return;
                }
                boolean z11 = atomicReference.get() == null;
                if (z10) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z11 && this.f20006f) {
                        i10.h(andSet);
                    }
                    i10.a();
                    this.f20005e.dispose();
                    return;
                }
                if (z11) {
                    if (this.f20012l) {
                        this.f20013m = false;
                        this.f20012l = false;
                    }
                } else if (!this.f20013m || this.f20012l) {
                    i10.h(atomicReference.getAndSet(null));
                    this.f20012l = false;
                    this.f20013m = true;
                    this.f20005e.c(this, this.f20003c, this.f20004d);
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override
        public boolean d() {
            return this.f20011k;
        }

        @Override
        public void dispose() {
            this.f20011k = true;
            this.f20008h.dispose();
            this.f20005e.dispose();
            if (getAndIncrement() == 0) {
                this.f20007g.lazySet(null);
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f20008h, cVar)) {
                this.f20008h = cVar;
                this.f20002b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f20007g.set(t10);
            b();
        }

        @Override
        public void onError(Throwable th2) {
            this.f20010j = th2;
            this.f20009i = true;
            b();
        }

        @Override
        public void run() {
            this.f20012l = true;
            b();
        }
    }

    public w1(Be.B<T> b10, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(b10);
        this.f19997c = j10;
        this.f19998d = timeUnit;
        this.f19999e = j11;
        this.f20000f = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19997c, this.f19998d, this.f19999e.c(), this.f20000f));
    }
}
