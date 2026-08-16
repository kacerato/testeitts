package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class E1<T> extends AbstractC2692a<T, T> {

    public final long f11800d;

    public final long f11801e;

    public final TimeUnit f11802f;

    public final Be.J f11803g;

    public final int f11804h;

    public final boolean f11805i;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11806n = -5677354903406201275L;

        public final hn.c<? super T> f11807b;

        public final long f11808c;

        public final long f11809d;

        public final TimeUnit f11810e;

        public final Be.J f11811f;

        public final Re.c<Object> f11812g;

        public final boolean f11813h;

        public hn.d f11814i;

        public final AtomicLong f11815j = new AtomicLong();

        public volatile boolean f11816k;

        public volatile boolean f11817l;

        public Throwable f11818m;

        public a(hn.c<? super T> cVar, long j10, long j11, TimeUnit timeUnit, Be.J j12, int i10, boolean z10) {
            this.f11807b = cVar;
            this.f11808c = j10;
            this.f11809d = j11;
            this.f11810e = timeUnit;
            this.f11811f = j12;
            this.f11812g = new Re.c<>(i10);
            this.f11813h = z10;
        }

        @Override
        public void a() {
            d(this.f11811f.e(this.f11810e), this.f11812g);
            this.f11817l = true;
            c();
        }

        public boolean b(boolean z10, hn.c<? super T> cVar, boolean z11) {
            if (this.f11816k) {
                this.f11812g.clear();
                return true;
            }
            if (z11) {
                if (!z10) {
                    return false;
                }
                Throwable th2 = this.f11818m;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                return true;
            }
            Throwable th3 = this.f11818m;
            if (th3 != null) {
                this.f11812g.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z10) {
                return false;
            }
            cVar.a();
            return true;
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar = this.f11807b;
            Re.c<Object> cVar2 = this.f11812g;
            boolean z10 = this.f11813h;
            int i10 = 1;
            do {
                if (this.f11817l) {
                    if (b(cVar2.isEmpty(), cVar, z10)) {
                        return;
                    }
                    long j10 = this.f11815j.get();
                    long j11 = 0;
                    while (true) {
                        if (b(cVar2.peek() == null, cVar, z10)) {
                            return;
                        }
                        if (j10 != j11) {
                            cVar2.poll();
                            cVar.h(cVar2.poll());
                            j11++;
                        } else if (j11 != 0) {
                            io.reactivex.internal.util.d.e(this.f11815j, j11);
                        }
                    }
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void cancel() {
            if (this.f11816k) {
                return;
            }
            this.f11816k = true;
            this.f11814i.cancel();
            if (getAndIncrement() == 0) {
                this.f11812g.clear();
            }
        }

        public void d(long j10, Re.c<Object> cVar) {
            long j11 = this.f11809d;
            long j12 = this.f11808c;
            boolean z10 = j12 == Long.MAX_VALUE;
            while (!cVar.isEmpty()) {
                if (((Long) cVar.peek()).longValue() >= j10 - j11 && (z10 || (cVar.p() >> 1) <= j12)) {
                    return;
                }
                cVar.poll();
                cVar.poll();
            }
        }

        @Override
        public void h(T t10) {
            Re.c<Object> cVar = this.f11812g;
            long e10 = this.f11811f.e(this.f11810e);
            cVar.o(Long.valueOf(e10), t10);
            d(e10, cVar);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f11815j, j10);
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11814i, dVar)) {
                this.f11814i = dVar;
                this.f11807b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11813h) {
                d(this.f11811f.e(this.f11810e), this.f11812g);
            }
            this.f11818m = th2;
            this.f11817l = true;
            c();
        }
    }

    public E1(AbstractC2362l<T> abstractC2362l, long j10, long j11, TimeUnit timeUnit, Be.J j12, int i10, boolean z10) {
        super(abstractC2362l);
        this.f11800d = j10;
        this.f11801e = j11;
        this.f11802f = timeUnit;
        this.f11803g = j12;
        this.f11804h = i10;
        this.f11805i = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11800d, this.f11801e, this.f11802f, this.f11803g, this.f11804h, this.f11805i));
    }
}
