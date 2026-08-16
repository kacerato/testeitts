package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.AbstractC4183b;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class W1<T, B> extends AbstractC2692a<T, AbstractC2362l<T>> {

    public final Callable<? extends hn.b<B>> f12395d;

    public final int f12396e;

    public static final class a<T, B> extends AbstractC4183b<B> {

        public final b<T, B> f12397c;

        public boolean f12398d;

        public a(b<T, B> bVar) {
            this.f12397c = bVar;
        }

        @Override
        public void a() {
            if (this.f12398d) {
                return;
            }
            this.f12398d = true;
            this.f12397c.d();
        }

        @Override
        public void h(B b10) {
            if (this.f12398d) {
                return;
            }
            this.f12398d = true;
            dispose();
            this.f12397c.f(this);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12398d) {
                Ye.a.Y(th2);
            } else {
                this.f12398d = true;
                this.f12397c.e(th2);
            }
        }
    }

    public static final class b<T, B> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12399o = 2233020065421370272L;

        public static final a<Object, Object> f12400p = new a<>(null);

        public static final Object f12401q = new Object();

        public final hn.c<? super AbstractC2362l<T>> f12402b;

        public final int f12403c;

        public final Callable<? extends hn.b<B>> f12409i;

        public hn.d f12411k;

        public volatile boolean f12412l;

        public Ze.h<T> f12413m;

        public long f12414n;

        public final AtomicReference<a<T, B>> f12404d = new AtomicReference<>();

        public final AtomicInteger f12405e = new AtomicInteger(1);

        public final Re.a<Object> f12406f = new Re.a<>();

        public final io.reactivex.internal.util.c f12407g = new io.reactivex.internal.util.c();

        public final AtomicBoolean f12408h = new AtomicBoolean();

        public final AtomicLong f12410j = new AtomicLong();

        public b(hn.c<? super AbstractC2362l<T>> cVar, int i10, Callable<? extends hn.b<B>> callable) {
            this.f12402b = cVar;
            this.f12403c = i10;
            this.f12409i = callable;
        }

        @Override
        public void a() {
            b();
            this.f12412l = true;
            c();
        }

        public void b() {
            AtomicReference<a<T, B>> atomicReference = this.f12404d;
            a<Object, Object> aVar = f12400p;
            De.c cVar = (De.c) atomicReference.getAndSet(aVar);
            if (cVar == null || cVar == aVar) {
                return;
            }
            cVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super AbstractC2362l<T>> cVar = this.f12402b;
            Re.a<Object> aVar = this.f12406f;
            io.reactivex.internal.util.c cVar2 = this.f12407g;
            long j10 = this.f12414n;
            int i10 = 1;
            while (this.f12405e.get() != 0) {
                Ze.h<T> hVar = this.f12413m;
                boolean z10 = this.f12412l;
                if (z10 && cVar2.get() != null) {
                    aVar.clear();
                    Throwable c10 = cVar2.c();
                    if (hVar != 0) {
                        this.f12413m = null;
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
                            this.f12413m = null;
                            hVar.a();
                        }
                        cVar.a();
                        return;
                    }
                    if (hVar != 0) {
                        this.f12413m = null;
                        hVar.onError(c11);
                    }
                    cVar.onError(c11);
                    return;
                }
                if (z11) {
                    this.f12414n = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else if (poll != f12401q) {
                    hVar.h(poll);
                } else {
                    if (hVar != 0) {
                        this.f12413m = null;
                        hVar.a();
                    }
                    if (!this.f12408h.get()) {
                        if (j10 != this.f12410j.get()) {
                            Ze.h<T> W82 = Ze.h.W8(this.f12403c, this);
                            this.f12413m = W82;
                            this.f12405e.getAndIncrement();
                            try {
                                hn.b bVar = (hn.b) He.b.g(this.f12409i.call(), "The other Callable returned a null Publisher");
                                a aVar2 = new a(this);
                                if (androidx.lifecycle.c.a(this.f12404d, null, aVar2)) {
                                    bVar.l(aVar2);
                                    j10++;
                                    cVar.h(W82);
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                cVar2.a(th2);
                                this.f12412l = true;
                            }
                        } else {
                            this.f12411k.cancel();
                            b();
                            cVar2.a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f12412l = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f12413m = null;
        }

        @Override
        public void cancel() {
            if (this.f12408h.compareAndSet(false, true)) {
                b();
                if (this.f12405e.decrementAndGet() == 0) {
                    this.f12411k.cancel();
                }
            }
        }

        public void d() {
            this.f12411k.cancel();
            this.f12412l = true;
            c();
        }

        public void e(Throwable th2) {
            this.f12411k.cancel();
            if (!this.f12407g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12412l = true;
                c();
            }
        }

        public void f(a<T, B> aVar) {
            androidx.lifecycle.c.a(this.f12404d, aVar, null);
            this.f12406f.offer(f12401q);
            c();
        }

        @Override
        public void h(T t10) {
            this.f12406f.offer(t10);
            c();
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f12410j, j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12411k, dVar)) {
                this.f12411k = dVar;
                this.f12402b.j(this);
                this.f12406f.offer(f12401q);
                c();
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            b();
            if (!this.f12407g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12412l = true;
                c();
            }
        }

        @Override
        public void run() {
            if (this.f12405e.decrementAndGet() == 0) {
                this.f12411k.cancel();
            }
        }
    }

    public W1(AbstractC2362l<T> abstractC2362l, Callable<? extends hn.b<B>> callable, int i10) {
        super(abstractC2362l);
        this.f12395d = callable;
        this.f12396e = i10;
    }

    @Override
    public void m6(hn.c<? super AbstractC2362l<T>> cVar) {
        this.f12507c.l6(new b(cVar, this.f12396e, this.f12395d));
    }
}
