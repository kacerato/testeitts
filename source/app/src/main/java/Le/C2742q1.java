package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class C2742q1<T> extends AbstractC2692a<T, T> {

    public final T f13131d;

    public final boolean f13132e;

    public static final class a<T> extends Ue.f<T> implements InterfaceC2367q<T> {

        public static final long f13133r = -5526049321428043809L;

        public final T f13134n;

        public final boolean f13135o;

        public hn.d f13136p;

        public boolean f13137q;

        public a(hn.c<? super T> cVar, T t10, boolean z10) {
            super(cVar);
            this.f13134n = t10;
            this.f13135o = z10;
        }

        @Override
        public void a() {
            if (this.f13137q) {
                return;
            }
            this.f13137q = true;
            T t10 = this.f26034d;
            this.f26034d = null;
            if (t10 == null) {
                t10 = this.f13134n;
            }
            if (t10 != null) {
                d(t10);
            } else if (this.f13135o) {
                this.f26033c.onError(new NoSuchElementException());
            } else {
                this.f26033c.a();
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f13136p.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f13137q) {
                return;
            }
            if (this.f26034d == null) {
                this.f26034d = t10;
                return;
            }
            this.f13137q = true;
            this.f13136p.cancel();
            this.f26033c.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13136p, dVar)) {
                this.f13136p = dVar;
                this.f26033c.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13137q) {
                Ye.a.Y(th2);
            } else {
                this.f13137q = true;
                this.f26033c.onError(th2);
            }
        }
    }

    public C2742q1(AbstractC2362l<T> abstractC2362l, T t10, boolean z10) {
        super(abstractC2362l);
        this.f13131d = t10;
        this.f13132e = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f13131d, this.f13132e));
    }
}
