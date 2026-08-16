package Le;

import Be.AbstractC2362l;
import Be.AbstractC2368s;
import Be.InterfaceC2367q;

public final class V<T> extends AbstractC2368s<T> implements Ie.b<T> {

    public final AbstractC2362l<T> f12347b;

    public final long f12348c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.v<? super T> f12349b;

        public final long f12350c;

        public hn.d f12351d;

        public long f12352e;

        public boolean f12353f;

        public a(Be.v<? super T> vVar, long j10) {
            this.f12349b = vVar;
            this.f12350c = j10;
        }

        @Override
        public void a() {
            this.f12351d = Ue.j.CANCELLED;
            if (this.f12353f) {
                return;
            }
            this.f12353f = true;
            this.f12349b.a();
        }

        @Override
        public boolean d() {
            return this.f12351d == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12351d.cancel();
            this.f12351d = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f12353f) {
                return;
            }
            long j10 = this.f12352e;
            if (j10 != this.f12350c) {
                this.f12352e = j10 + 1;
                return;
            }
            this.f12353f = true;
            this.f12351d.cancel();
            this.f12351d = Ue.j.CANCELLED;
            this.f12349b.b(t10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12351d, dVar)) {
                this.f12351d = dVar;
                this.f12349b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12353f) {
                Ye.a.Y(th2);
                return;
            }
            this.f12353f = true;
            this.f12351d = Ue.j.CANCELLED;
            this.f12349b.onError(th2);
        }
    }

    public V(AbstractC2362l<T> abstractC2362l, long j10) {
        this.f12347b = abstractC2362l;
        this.f12348c = j10;
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new U(this.f12347b, this.f12348c, null, false));
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f12347b.l6(new a(vVar, this.f12348c));
    }
}
