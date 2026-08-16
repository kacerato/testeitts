package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class K1<T> extends AbstractC2692a<T, T> {

    public final long f12007d;

    public final TimeUnit f12008e;

    public final Be.J f12009f;

    public final boolean f12010g;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12011p = -8296689127439125014L;

        public final hn.c<? super T> f12012b;

        public final long f12013c;

        public final TimeUnit f12014d;

        public final J.c f12015e;

        public final boolean f12016f;

        public final AtomicReference<T> f12017g = new AtomicReference<>();

        public final AtomicLong f12018h = new AtomicLong();

        public hn.d f12019i;

        public volatile boolean f12020j;

        public Throwable f12021k;

        public volatile boolean f12022l;

        public volatile boolean f12023m;

        public long f12024n;

        public boolean f12025o;

        public a(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2, boolean z10) {
            this.f12012b = cVar;
            this.f12013c = j10;
            this.f12014d = timeUnit;
            this.f12015e = cVar2;
            this.f12016f = z10;
        }

        @Override
        public void a() {
            this.f12020j = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f12017g;
            AtomicLong atomicLong = this.f12018h;
            hn.c<? super T> cVar = this.f12012b;
            int i10 = 1;
            while (!this.f12022l) {
                boolean z10 = this.f12020j;
                if (z10 && this.f12021k != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(this.f12021k);
                    this.f12015e.dispose();
                    return;
                }
                boolean z11 = atomicReference.get() == null;
                if (z10) {
                    if (z11 || !this.f12016f) {
                        atomicReference.lazySet(null);
                        cVar.a();
                    } else {
                        T andSet = atomicReference.getAndSet(null);
                        long j10 = this.f12024n;
                        if (j10 != atomicLong.get()) {
                            this.f12024n = j10 + 1;
                            cVar.h(andSet);
                            cVar.a();
                        } else {
                            cVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                        }
                    }
                    this.f12015e.dispose();
                    return;
                }
                if (z11) {
                    if (this.f12023m) {
                        this.f12025o = false;
                        this.f12023m = false;
                    }
                } else if (!this.f12025o || this.f12023m) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j11 = this.f12024n;
                    if (j11 == atomicLong.get()) {
                        this.f12019i.cancel();
                        cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                        this.f12015e.dispose();
                        return;
                    } else {
                        cVar.h(andSet2);
                        this.f12024n = j11 + 1;
                        this.f12023m = false;
                        this.f12025o = true;
                        this.f12015e.c(this, this.f12013c, this.f12014d);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override
        public void cancel() {
            this.f12022l = true;
            this.f12019i.cancel();
            this.f12015e.dispose();
            if (getAndIncrement() == 0) {
                this.f12017g.lazySet(null);
            }
        }

        @Override
        public void h(T t10) {
            this.f12017g.set(t10);
            b();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12018h, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12019i, dVar)) {
                this.f12019i = dVar;
                this.f12012b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12021k = th2;
            this.f12020j = true;
            b();
        }

        @Override
        public void run() {
            this.f12023m = true;
            b();
        }
    }

    public K1(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(abstractC2362l);
        this.f12007d = j10;
        this.f12008e = timeUnit;
        this.f12009f = j11;
        this.f12010g = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12007d, this.f12008e, this.f12009f.c(), this.f12010g));
    }
}
