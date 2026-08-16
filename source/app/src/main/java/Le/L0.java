package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

public final class L0<T> extends AbstractC2692a<T, T> {

    public final int f12031d;

    public final boolean f12032e;

    public final boolean f12033f;

    public final Fe.a f12034g;

    public static final class a<T> extends Ue.c<T> implements InterfaceC2367q<T> {

        public static final long f12035m = -2514538129242366402L;

        public final hn.c<? super T> f12036c;

        public final Ie.n<T> f12037d;

        public final boolean f12038e;

        public final Fe.a f12039f;

        public hn.d f12040g;

        public volatile boolean f12041h;

        public volatile boolean f12042i;

        public Throwable f12043j;

        public final AtomicLong f12044k = new AtomicLong();

        public boolean f12045l;

        public a(hn.c<? super T> cVar, int i10, boolean z10, boolean z11, Fe.a aVar) {
            this.f12036c = cVar;
            this.f12039f = aVar;
            this.f12038e = z11;
            this.f12037d = z10 ? new Re.c<>(i10) : new Re.b<>(i10);
        }

        @Override
        public void a() {
            this.f12042i = true;
            if (this.f12045l) {
                this.f12036c.a();
            } else {
                f();
            }
        }

        @Override
        public void cancel() {
            if (this.f12041h) {
                return;
            }
            this.f12041h = true;
            this.f12040g.cancel();
            if (getAndIncrement() == 0) {
                this.f12037d.clear();
            }
        }

        @Override
        public void clear() {
            this.f12037d.clear();
        }

        public boolean d(boolean z10, boolean z11, hn.c<? super T> cVar) {
            if (this.f12041h) {
                this.f12037d.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.f12038e) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.f12043j;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                return true;
            }
            Throwable th3 = this.f12043j;
            if (th3 != null) {
                this.f12037d.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.a();
            return true;
        }

        public void f() {
            if (getAndIncrement() == 0) {
                Ie.n<T> nVar = this.f12037d;
                hn.c<? super T> cVar = this.f12036c;
                int i10 = 1;
                while (!d(this.f12042i, nVar.isEmpty(), cVar)) {
                    long j10 = this.f12044k.get();
                    long j11 = 0;
                    while (j11 != j10) {
                        boolean z10 = this.f12042i;
                        T poll = nVar.poll();
                        boolean z11 = poll == null;
                        if (d(z10, z11, cVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        cVar.h(poll);
                        j11++;
                    }
                    if (j11 == j10 && d(this.f12042i, nVar.isEmpty(), cVar)) {
                        return;
                    }
                    if (j11 != 0 && j10 != Long.MAX_VALUE) {
                        this.f12044k.addAndGet(-j11);
                    }
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12037d.offer(t10)) {
                if (this.f12045l) {
                    this.f12036c.h(null);
                    return;
                } else {
                    f();
                    return;
                }
            }
            this.f12040g.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.f12039f.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                missingBackpressureException.initCause(th2);
            }
            onError(missingBackpressureException);
        }

        @Override
        public void i(long j10) {
            if (this.f12045l || !Ue.j.m(j10)) {
                return;
            }
            io.reactivex.internal.util.d.a(this.f12044k, j10);
            f();
        }

        @Override
        public boolean isEmpty() {
            return this.f12037d.isEmpty();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12040g, dVar)) {
                this.f12040g = dVar;
                this.f12036c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f12045l = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f12043j = th2;
            this.f12042i = true;
            if (this.f12045l) {
                this.f12036c.onError(th2);
            } else {
                f();
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            return this.f12037d.poll();
        }
    }

    public L0(AbstractC2362l<T> abstractC2362l, int i10, boolean z10, boolean z11, Fe.a aVar) {
        super(abstractC2362l);
        this.f12031d = i10;
        this.f12032e = z10;
        this.f12033f = z11;
        this.f12034g = aVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12031d, this.f12032e, this.f12033f, this.f12034g));
    }
}
