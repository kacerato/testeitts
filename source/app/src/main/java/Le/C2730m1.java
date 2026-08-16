package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class C2730m1<T, R> extends AbstractC2692a<T, R> {

    public final Fe.c<R, ? super T, R> f12929d;

    public final Callable<R> f12930e;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12931n = -1776795561228106469L;

        public final hn.c<? super R> f12932b;

        public final Fe.c<R, ? super T, R> f12933c;

        public final Ie.n<R> f12934d;

        public final AtomicLong f12935e;

        public final int f12936f;

        public final int f12937g;

        public volatile boolean f12938h;

        public volatile boolean f12939i;

        public Throwable f12940j;

        public hn.d f12941k;

        public R f12942l;

        public int f12943m;

        public a(hn.c<? super R> cVar, Fe.c<R, ? super T, R> cVar2, R r10, int i10) {
            this.f12932b = cVar;
            this.f12933c = cVar2;
            this.f12942l = r10;
            this.f12936f = i10;
            this.f12937g = i10 - (i10 >> 2);
            Re.b bVar = new Re.b(i10);
            this.f12934d = bVar;
            bVar.offer(r10);
            this.f12935e = new AtomicLong();
        }

        @Override
        public void a() {
            if (this.f12939i) {
                return;
            }
            this.f12939i = true;
            b();
        }

        public void b() {
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f12932b;
            Ie.n<R> nVar = this.f12934d;
            int i10 = this.f12937g;
            int i11 = this.f12943m;
            int i12 = 1;
            do {
                long j10 = this.f12935e.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (this.f12938h) {
                        nVar.clear();
                        return;
                    }
                    boolean z10 = this.f12939i;
                    if (z10 && (th2 = this.f12940j) != null) {
                        nVar.clear();
                        cVar.onError(th2);
                        return;
                    }
                    R poll = nVar.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        cVar.a();
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(poll);
                    j11++;
                    i11++;
                    if (i11 == i10) {
                        this.f12941k.i(i10);
                        i11 = 0;
                    }
                }
                if (j11 == j10 && this.f12939i) {
                    Throwable th3 = this.f12940j;
                    if (th3 != null) {
                        nVar.clear();
                        cVar.onError(th3);
                        return;
                    } else if (nVar.isEmpty()) {
                        cVar.a();
                        return;
                    }
                }
                if (j11 != 0) {
                    io.reactivex.internal.util.d.e(this.f12935e, j11);
                }
                this.f12943m = i11;
                i12 = addAndGet(-i12);
            } while (i12 != 0);
        }

        @Override
        public void cancel() {
            this.f12938h = true;
            this.f12941k.cancel();
            if (getAndIncrement() == 0) {
                this.f12934d.clear();
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12939i) {
                return;
            }
            try {
                R r10 = (R) He.b.g(this.f12933c.apply(this.f12942l, t10), "The accumulator returned a null value");
                this.f12942l = r10;
                this.f12934d.offer(r10);
                b();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12941k.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12935e, j10);
                b();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12941k, dVar)) {
                this.f12941k = dVar;
                this.f12932b.j(this);
                dVar.i(this.f12936f - 1);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12939i) {
                Ye.a.Y(th2);
                return;
            }
            this.f12940j = th2;
            this.f12939i = true;
            b();
        }
    }

    public C2730m1(AbstractC2362l<T> abstractC2362l, Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        super(abstractC2362l);
        this.f12929d = cVar;
        this.f12930e = callable;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        try {
            this.f12507c.l6(new a(cVar, this.f12929d, He.b.g(this.f12930e.call(), "The seed supplied is null"), AbstractC2362l.a0()));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
