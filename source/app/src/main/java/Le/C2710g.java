package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2710g<T> extends Be.K<Boolean> implements Ie.b<Boolean> {

    public final AbstractC2362l<T> f12776b;

    public final Fe.r<? super T> f12777c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super Boolean> f12778b;

        public final Fe.r<? super T> f12779c;

        public hn.d f12780d;

        public boolean f12781e;

        public a(Be.N<? super Boolean> n10, Fe.r<? super T> rVar) {
            this.f12778b = n10;
            this.f12779c = rVar;
        }

        @Override
        public void a() {
            if (this.f12781e) {
                return;
            }
            this.f12781e = true;
            this.f12780d = Ue.j.CANCELLED;
            this.f12778b.b(Boolean.TRUE);
        }

        @Override
        public boolean d() {
            return this.f12780d == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12780d.cancel();
            this.f12780d = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f12781e) {
                return;
            }
            try {
                if (this.f12779c.test(t10)) {
                    return;
                }
                this.f12781e = true;
                this.f12780d.cancel();
                this.f12780d = Ue.j.CANCELLED;
                this.f12778b.b(Boolean.FALSE);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12780d.cancel();
                this.f12780d = Ue.j.CANCELLED;
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12780d, dVar)) {
                this.f12780d = dVar;
                this.f12778b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12781e) {
                Ye.a.Y(th2);
                return;
            }
            this.f12781e = true;
            this.f12780d = Ue.j.CANCELLED;
            this.f12778b.onError(th2);
        }
    }

    public C2710g(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        this.f12776b = abstractC2362l;
        this.f12777c = rVar;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f12776b.l6(new a(n10, this.f12777c));
    }

    @Override
    public AbstractC2362l<Boolean> f() {
        return Ye.a.P(new C2707f(this.f12776b, this.f12777c));
    }
}
