package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.AbstractC4183b;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class G<T, U> extends AbstractC2692a<T, T> {

    public final Fe.o<? super T, ? extends hn.b<U>> f11847d;

    public static final class a<T, U> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f11848h = 6725975399620862591L;

        public final hn.c<? super T> f11849b;

        public final Fe.o<? super T, ? extends hn.b<U>> f11850c;

        public hn.d f11851d;

        public final AtomicReference<De.c> f11852e = new AtomicReference<>();

        public volatile long f11853f;

        public boolean f11854g;

        public static final class C0383a<T, U> extends AbstractC4183b<U> {

            public final a<T, U> f11855c;

            public final long f11856d;

            public final T f11857e;

            public boolean f11858f;

            public final AtomicBoolean f11859g = new AtomicBoolean();

            public C0383a(a<T, U> aVar, long j10, T t10) {
                this.f11855c = aVar;
                this.f11856d = j10;
                this.f11857e = t10;
            }

            @Override
            public void a() {
                if (this.f11858f) {
                    return;
                }
                this.f11858f = true;
                g();
            }

            public void g() {
                if (this.f11859g.compareAndSet(false, true)) {
                    this.f11855c.b(this.f11856d, this.f11857e);
                }
            }

            @Override
            public void h(U u10) {
                if (this.f11858f) {
                    return;
                }
                this.f11858f = true;
                b();
                g();
            }

            @Override
            public void onError(Throwable th2) {
                if (this.f11858f) {
                    Ye.a.Y(th2);
                } else {
                    this.f11858f = true;
                    this.f11855c.onError(th2);
                }
            }
        }

        public a(hn.c<? super T> cVar, Fe.o<? super T, ? extends hn.b<U>> oVar) {
            this.f11849b = cVar;
            this.f11850c = oVar;
        }

        @Override
        public void a() {
            if (this.f11854g) {
                return;
            }
            this.f11854g = true;
            De.c cVar = this.f11852e.get();
            if (Ge.d.b(cVar)) {
                return;
            }
            ((C0383a) cVar).g();
            Ge.d.a(this.f11852e);
            this.f11849b.a();
        }

        public void b(long j10, T t10) {
            if (j10 == this.f11853f) {
                if (get() != 0) {
                    this.f11849b.h(t10);
                    io.reactivex.internal.util.d.e(this, 1L);
                } else {
                    cancel();
                    this.f11849b.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                }
            }
        }

        @Override
        public void cancel() {
            this.f11851d.cancel();
            Ge.d.a(this.f11852e);
        }

        @Override
        public void h(T t10) {
            if (this.f11854g) {
                return;
            }
            long j10 = this.f11853f + 1;
            this.f11853f = j10;
            De.c cVar = this.f11852e.get();
            if (cVar != null) {
                cVar.dispose();
            }
            try {
                hn.b bVar = (hn.b) He.b.g(this.f11850c.apply(t10), "The publisher supplied is null");
                C0383a c0383a = new C0383a(this, j10, t10);
                if (androidx.lifecycle.c.a(this.f11852e, cVar, c0383a)) {
                    bVar.l(c0383a);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                this.f11849b.onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11851d, dVar)) {
                this.f11851d = dVar;
                this.f11849b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f11852e);
            this.f11849b.onError(th2);
        }
    }

    public G(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends hn.b<U>> oVar) {
        super(abstractC2362l);
        this.f11847d = oVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(new C4186e(cVar), this.f11847d));
    }
}
