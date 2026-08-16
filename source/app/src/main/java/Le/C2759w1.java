package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2759w1<T, U> extends AbstractC2692a<T, T> {

    public final hn.b<U> f13349d;

    public static final class a<T> extends AtomicInteger implements Ie.a<T>, hn.d {

        public static final long f13350h = -6270983465606289181L;

        public final hn.c<? super T> f13351b;

        public final AtomicReference<hn.d> f13352c = new AtomicReference<>();

        public final AtomicLong f13353d = new AtomicLong();

        public final a<T>.C0398a f13354e = new C0398a();

        public final io.reactivex.internal.util.c f13355f = new io.reactivex.internal.util.c();

        public volatile boolean f13356g;

        public final class C0398a extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

            public static final long f13357c = -5592042965931999169L;

            public C0398a() {
            }

            @Override
            public void a() {
                a.this.f13356g = true;
            }

            @Override
            public void h(Object obj) {
                a.this.f13356g = true;
                get().cancel();
            }

            @Override
            public void j(hn.d dVar) {
                Ue.j.k(this, dVar, Long.MAX_VALUE);
            }

            @Override
            public void onError(Throwable th2) {
                Ue.j.a(a.this.f13352c);
                a aVar = a.this;
                io.reactivex.internal.util.k.d(aVar.f13351b, th2, aVar, aVar.f13355f);
            }
        }

        public a(hn.c<? super T> cVar) {
            this.f13351b = cVar;
        }

        @Override
        public void a() {
            Ue.j.a(this.f13354e);
            io.reactivex.internal.util.k.b(this.f13351b, this, this.f13355f);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f13352c);
            Ue.j.a(this.f13354e);
        }

        @Override
        public void h(T t10) {
            if (u(t10)) {
                return;
            }
            this.f13352c.get().i(1L);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f13352c, this.f13353d, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f13352c, this.f13353d, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f13354e);
            io.reactivex.internal.util.k.d(this.f13351b, th2, this, this.f13355f);
        }

        @Override
        public boolean u(T t10) {
            if (!this.f13356g) {
                return false;
            }
            io.reactivex.internal.util.k.f(this.f13351b, t10, this, this.f13355f);
            return true;
        }
    }

    public C2759w1(AbstractC2362l<T> abstractC2362l, hn.b<U> bVar) {
        super(abstractC2362l);
        this.f13349d = bVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        this.f13349d.l(aVar.f13354e);
        this.f12507c.l6(aVar);
    }
}
