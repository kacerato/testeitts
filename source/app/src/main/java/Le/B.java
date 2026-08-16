package Le;

import Be.AbstractC2362l;
import java.util.concurrent.atomic.AtomicReference;

public final class B<T> extends AbstractC2692a<T, T> {

    public final Be.y<? extends T> f11749d;

    public static final class a<T> extends Te.t<T, T> implements Be.v<T> {

        public static final long f11750l = -7346385463600070225L;

        public final AtomicReference<De.c> f11751i;

        public Be.y<? extends T> f11752j;

        public boolean f11753k;

        public a(hn.c<? super T> cVar, Be.y<? extends T> yVar) {
            super(cVar);
            this.f11752j = yVar;
            this.f11751i = new AtomicReference<>();
        }

        @Override
        public void a() {
            if (this.f11753k) {
                this.f24934b.a();
                return;
            }
            this.f11753k = true;
            this.f24935c = Ue.j.CANCELLED;
            Be.y<? extends T> yVar = this.f11752j;
            this.f11752j = null;
            yVar.d(this);
        }

        @Override
        public void b(T t10) {
            c(t10);
        }

        @Override
        public void cancel() {
            super.cancel();
            Ge.d.a(this.f11751i);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f11751i, cVar);
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

    public B(AbstractC2362l<T> abstractC2362l, Be.y<? extends T> yVar) {
        super(abstractC2362l);
        this.f11749d = yVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11749d));
    }
}
