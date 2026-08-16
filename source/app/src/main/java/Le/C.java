package Le;

import Be.AbstractC2362l;
import java.util.concurrent.atomic.AtomicReference;

public final class C<T> extends AbstractC2692a<T, T> {

    public final Be.Q<? extends T> f11766d;

    public static final class a<T> extends Te.t<T, T> implements Be.N<T> {

        public static final long f11767k = -7346385463600070225L;

        public final AtomicReference<De.c> f11768i;

        public Be.Q<? extends T> f11769j;

        public a(hn.c<? super T> cVar, Be.Q<? extends T> q10) {
            super(cVar);
            this.f11769j = q10;
            this.f11768i = new AtomicReference<>();
        }

        @Override
        public void a() {
            this.f24935c = Ue.j.CANCELLED;
            Be.Q<? extends T> q10 = this.f11769j;
            this.f11769j = null;
            q10.a(this);
        }

        @Override
        public void b(T t10) {
            c(t10);
        }

        @Override
        public void cancel() {
            super.cancel();
            Ge.d.a(this.f11768i);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f11768i, cVar);
        }

        @Override
        public void h(T t10) {
            this.f24937e++;
            this.f24934b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f24934b.onError(th2);
        }
    }

    public C(AbstractC2362l<T> abstractC2362l, Be.Q<? extends T> q10) {
        super(abstractC2362l);
        this.f11766d = q10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11766d));
    }
}
