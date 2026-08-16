package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class U<T> extends AbstractC2692a<T, T> {

    public final long f12309d;

    public final T f12310e;

    public final boolean f12311f;

    public static final class a<T> extends Ue.f<T> implements InterfaceC2367q<T> {

        public static final long f12312t = 4066607327284737757L;

        public final long f12313n;

        public final T f12314o;

        public final boolean f12315p;

        public hn.d f12316q;

        public long f12317r;

        public boolean f12318s;

        public a(hn.c<? super T> cVar, long j10, T t10, boolean z10) {
            super(cVar);
            this.f12313n = j10;
            this.f12314o = t10;
            this.f12315p = z10;
        }

        @Override
        public void a() {
            if (this.f12318s) {
                return;
            }
            this.f12318s = true;
            T t10 = this.f12314o;
            if (t10 != null) {
                d(t10);
            } else if (this.f12315p) {
                this.f26033c.onError(new NoSuchElementException());
            } else {
                this.f26033c.a();
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12316q.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12318s) {
                return;
            }
            long j10 = this.f12317r;
            if (j10 != this.f12313n) {
                this.f12317r = j10 + 1;
                return;
            }
            this.f12318s = true;
            this.f12316q.cancel();
            d(t10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12316q, dVar)) {
                this.f12316q = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12318s) {
                Ye.a.Y(th2);
            } else {
                this.f12318s = true;
                this.f26033c.onError(th2);
            }
        }
    }

    public U(AbstractC2362l<T> abstractC2362l, long j10, T t10, boolean z10) {
        super(abstractC2362l);
        this.f12309d = j10;
        this.f12310e = t10;
        this.f12311f = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12309d, this.f12310e, this.f12311f));
    }
}
