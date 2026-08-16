package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.AbstractC4183b;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class U1<T, B> extends AbstractC2692a<T, AbstractC2362l<T>> {

    public final hn.b<B> f12329d;

    public final int f12330e;

    public static final class a<T, B> extends AbstractC4183b<B> {

        public final b<T, B> f12331c;

        public boolean f12332d;

        public a(b<T, B> bVar) {
            this.f12331c = bVar;
        }

        @Override
        public void a() {
            if (this.f12332d) {
                return;
            }
            this.f12332d = true;
            this.f12331c.c();
        }

        @Override
        public void h(B b10) {
            if (this.f12332d) {
                return;
            }
            this.f12331c.e();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12332d) {
                Ye.a.Y(th2);
            } else {
                this.f12332d = true;
                this.f12331c.d(th2);
            }
        }
    }

    public static final class b<T, B> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12333n = 2233020065421370272L;

        public static final Object f12334o = new Object();

        public final hn.c<? super AbstractC2362l<T>> f12335b;

        public final int f12336c;

        public final a<T, B> f12337d = new a<>(this);

        public final AtomicReference<hn.d> f12338e = new AtomicReference<>();

        public final AtomicInteger f12339f = new AtomicInteger(1);

        public final Re.a<Object> f12340g = new Re.a<>();

        public final io.reactivex.internal.util.c f12341h = new io.reactivex.internal.util.c();

        public final AtomicBoolean f12342i = new AtomicBoolean();

        public final AtomicLong f12343j = new AtomicLong();

        public volatile boolean f12344k;

        public Ze.h<T> f12345l;

        public long f12346m;

        public b(hn.c<? super AbstractC2362l<T>> cVar, int i10) {
            this.f12335b = cVar;
            this.f12336c = i10;
        }

        @Override
        public void a() {
            this.f12337d.dispose();
            this.f12344k = true;
            b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super AbstractC2362l<T>> cVar = this.f12335b;
            Re.a<Object> aVar = this.f12340g;
            io.reactivex.internal.util.c cVar2 = this.f12341h;
            long j10 = this.f12346m;
            int i10 = 1;
            while (this.f12339f.get() != 0) {
                Ze.h<T> hVar = this.f12345l;
                boolean z10 = this.f12344k;
                if (z10 && cVar2.get() != null) {
                    aVar.clear();
                    Throwable c10 = cVar2.c();
                    if (hVar != 0) {
                        this.f12345l = null;
                        hVar.onError(c10);
                    }
                    cVar.onError(c10);
                    return;
                }
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable c11 = cVar2.c();
                    if (c11 == null) {
                        if (hVar != 0) {
                            this.f12345l = null;
                            hVar.a();
                        }
                        cVar.a();
                        return;
                    }
                    if (hVar != 0) {
                        this.f12345l = null;
                        hVar.onError(c11);
                    }
                    cVar.onError(c11);
                    return;
                }
                if (z11) {
                    this.f12346m = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else if (poll != f12334o) {
                    hVar.h(poll);
                } else {
                    if (hVar != 0) {
                        this.f12345l = null;
                        hVar.a();
                    }
                    if (!this.f12342i.get()) {
                        Ze.h<T> W82 = Ze.h.W8(this.f12336c, this);
                        this.f12345l = W82;
                        this.f12339f.getAndIncrement();
                        if (j10 != this.f12343j.get()) {
                            j10++;
                            cVar.h(W82);
                        } else {
                            Ue.j.a(this.f12338e);
                            this.f12337d.dispose();
                            cVar2.a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f12344k = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f12345l = null;
        }

        public void c() {
            Ue.j.a(this.f12338e);
            this.f12344k = true;
            b();
        }

        @Override
        public void cancel() {
            if (this.f12342i.compareAndSet(false, true)) {
                this.f12337d.dispose();
                if (this.f12339f.decrementAndGet() == 0) {
                    Ue.j.a(this.f12338e);
                }
            }
        }

        public void d(Throwable th2) {
            Ue.j.a(this.f12338e);
            if (!this.f12341h.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12344k = true;
                b();
            }
        }

        public void e() {
            this.f12340g.offer(f12334o);
            b();
        }

        @Override
        public void h(T t10) {
            this.f12340g.offer(t10);
            b();
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f12343j, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this.f12338e, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12337d.dispose();
            if (!this.f12341h.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12344k = true;
                b();
            }
        }

        @Override
        public void run() {
            if (this.f12339f.decrementAndGet() == 0) {
                Ue.j.a(this.f12338e);
            }
        }
    }

    public U1(AbstractC2362l<T> abstractC2362l, hn.b<B> bVar, int i10) {
        super(abstractC2362l);
        this.f12329d = bVar;
        this.f12330e = i10;
    }

    @Override
    public void m6(hn.c<? super AbstractC2362l<T>> cVar) {
        b bVar = new b(cVar, this.f12330e);
        cVar.j(bVar);
        bVar.e();
        this.f12329d.l(bVar.f12337d);
        this.f12507c.l6(bVar);
    }
}
