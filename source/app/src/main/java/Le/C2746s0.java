package Le;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2367q;

public final class C2746s0<T> extends AbstractC2353c implements Ie.b<T> {

    public final AbstractC2362l<T> f13172b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final InterfaceC2356f f13173b;

        public hn.d f13174c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f13173b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f13174c = Ue.j.CANCELLED;
            this.f13173b.a();
        }

        @Override
        public boolean d() {
            return this.f13174c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13174c.cancel();
            this.f13174c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13174c, dVar)) {
                this.f13174c = dVar;
                this.f13173b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13174c = Ue.j.CANCELLED;
            this.f13173b.onError(th2);
        }
    }

    public C2746s0(AbstractC2362l<T> abstractC2362l) {
        this.f13172b = abstractC2362l;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f13172b.l6(new a(interfaceC2356f));
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new C2743r0(this.f13172b));
    }
}
