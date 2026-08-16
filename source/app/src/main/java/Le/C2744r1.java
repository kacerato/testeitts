package Le;

import Be.AbstractC2362l;
import Be.AbstractC2368s;
import Be.InterfaceC2367q;

public final class C2744r1<T> extends AbstractC2368s<T> implements Ie.b<T> {

    public final AbstractC2362l<T> f13160b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.v<? super T> f13161b;

        public hn.d f13162c;

        public boolean f13163d;

        public T f13164e;

        public a(Be.v<? super T> vVar) {
            this.f13161b = vVar;
        }

        @Override
        public void a() {
            if (this.f13163d) {
                return;
            }
            this.f13163d = true;
            this.f13162c = Ue.j.CANCELLED;
            T t10 = this.f13164e;
            this.f13164e = null;
            if (t10 == null) {
                this.f13161b.a();
            } else {
                this.f13161b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f13162c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13162c.cancel();
            this.f13162c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f13163d) {
                return;
            }
            if (this.f13164e == null) {
                this.f13164e = t10;
                return;
            }
            this.f13163d = true;
            this.f13162c.cancel();
            this.f13162c = Ue.j.CANCELLED;
            this.f13161b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13162c, dVar)) {
                this.f13162c = dVar;
                this.f13161b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13163d) {
                Ye.a.Y(th2);
                return;
            }
            this.f13163d = true;
            this.f13162c = Ue.j.CANCELLED;
            this.f13161b.onError(th2);
        }
    }

    public C2744r1(AbstractC2362l<T> abstractC2362l) {
        this.f13160b = abstractC2362l;
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new C2742q1(this.f13160b, null, false));
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f13160b.l6(new a(vVar));
    }
}
