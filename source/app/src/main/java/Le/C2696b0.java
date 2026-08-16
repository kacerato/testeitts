package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class C2696b0<T> extends AbstractC2692a<T, T> {

    public final Fe.o<? super T, ? extends InterfaceC2359i> f12591d;

    public final int f12592e;

    public final boolean f12593f;

    public static final class a<T> extends Ue.c<T> implements InterfaceC2367q<T> {

        public static final long f12594k = 8443155186132538303L;

        public final hn.c<? super T> f12595c;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f12597e;

        public final boolean f12598f;

        public final int f12600h;

        public hn.d f12601i;

        public volatile boolean f12602j;

        public final io.reactivex.internal.util.c f12596d = new io.reactivex.internal.util.c();

        public final De.b f12599g = new De.b();

        public final class C0392a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

            public static final long f12603c = 8606673141535671828L;

            public C0392a() {
            }

            @Override
            public void a() {
                a.this.d(this);
            }

            @Override
            public boolean d() {
                return Ge.d.b(get());
            }

            @Override
            public void dispose() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.n(this, th2);
            }
        }

        public a(hn.c<? super T> cVar, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
            this.f12595c = cVar;
            this.f12597e = oVar;
            this.f12598f = z10;
            this.f12600h = i10;
            lazySet(1);
        }

        @Override
        public void a() {
            if (decrementAndGet() != 0) {
                if (this.f12600h != Integer.MAX_VALUE) {
                    this.f12601i.i(1L);
                }
            } else {
                Throwable c10 = this.f12596d.c();
                if (c10 != null) {
                    this.f12595c.onError(c10);
                } else {
                    this.f12595c.a();
                }
            }
        }

        @Override
        public void cancel() {
            this.f12602j = true;
            this.f12601i.cancel();
            this.f12599g.dispose();
        }

        @Override
        public void clear() {
        }

        public void d(a<T>.C0392a c0392a) {
            this.f12599g.b(c0392a);
            a();
        }

        @Override
        public void h(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f12597e.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0392a c0392a = new C0392a();
                if (this.f12602j || !this.f12599g.a(c0392a)) {
                    return;
                }
                interfaceC2359i.b(c0392a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12601i.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
        }

        @Override
        public boolean isEmpty() {
            return true;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12601i, dVar)) {
                this.f12601i = dVar;
                this.f12595c.j(this);
                int i10 = this.f12600h;
                if (i10 == Integer.MAX_VALUE) {
                    dVar.i(Long.MAX_VALUE);
                } else {
                    dVar.i(i10);
                }
            }
        }

        @Override
        public int m(int i10) {
            return i10 & 2;
        }

        public void n(a<T>.C0392a c0392a, Throwable th2) {
            this.f12599g.b(c0392a);
            onError(th2);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f12596d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f12598f) {
                cancel();
                if (getAndSet(0) > 0) {
                    this.f12595c.onError(this.f12596d.c());
                    return;
                }
                return;
            }
            if (decrementAndGet() == 0) {
                this.f12595c.onError(this.f12596d.c());
            } else if (this.f12600h != Integer.MAX_VALUE) {
                this.f12601i.i(1L);
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            return null;
        }
    }

    public C2696b0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
        super(abstractC2362l);
        this.f12591d = oVar;
        this.f12593f = z10;
        this.f12592e = i10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12591d, this.f12593f, this.f12592e));
    }
}
