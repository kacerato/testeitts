package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2719j<T> extends Be.K<Boolean> implements Ie.b<Boolean> {

    public final AbstractC2362l<T> f12849b;

    public final Fe.r<? super T> f12850c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super Boolean> f12851b;

        public final Fe.r<? super T> f12852c;

        public hn.d f12853d;

        public boolean f12854e;

        public a(Be.N<? super Boolean> n10, Fe.r<? super T> rVar) {
            this.f12851b = n10;
            this.f12852c = rVar;
        }

        @Override
        public void a() {
            if (this.f12854e) {
                return;
            }
            this.f12854e = true;
            this.f12853d = Ue.j.CANCELLED;
            this.f12851b.b(Boolean.FALSE);
        }

        @Override
        public boolean d() {
            return this.f12853d == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12853d.cancel();
            this.f12853d = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f12854e) {
                return;
            }
            try {
                if (this.f12852c.test(t10)) {
                    this.f12854e = true;
                    this.f12853d.cancel();
                    this.f12853d = Ue.j.CANCELLED;
                    this.f12851b.b(Boolean.TRUE);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12853d.cancel();
                this.f12853d = Ue.j.CANCELLED;
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12853d, dVar)) {
                this.f12853d = dVar;
                this.f12851b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12854e) {
                Ye.a.Y(th2);
                return;
            }
            this.f12854e = true;
            this.f12853d = Ue.j.CANCELLED;
            this.f12851b.onError(th2);
        }
    }

    public C2719j(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        this.f12849b = abstractC2362l;
        this.f12850c = rVar;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f12849b.l6(new a(n10, this.f12850c));
    }

    @Override
    public AbstractC2362l<Boolean> f() {
        return Ye.a.P(new C2716i(this.f12849b, this.f12850c));
    }
}
