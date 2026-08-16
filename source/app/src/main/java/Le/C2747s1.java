package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class C2747s1<T> extends Be.K<T> implements Ie.b<T> {

    public final AbstractC2362l<T> f13175b;

    public final T f13176c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super T> f13177b;

        public final T f13178c;

        public hn.d f13179d;

        public boolean f13180e;

        public T f13181f;

        public a(Be.N<? super T> n10, T t10) {
            this.f13177b = n10;
            this.f13178c = t10;
        }

        @Override
        public void a() {
            if (this.f13180e) {
                return;
            }
            this.f13180e = true;
            this.f13179d = Ue.j.CANCELLED;
            T t10 = this.f13181f;
            this.f13181f = null;
            if (t10 == null) {
                t10 = this.f13178c;
            }
            if (t10 != null) {
                this.f13177b.b(t10);
            } else {
                this.f13177b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f13179d == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13179d.cancel();
            this.f13179d = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f13180e) {
                return;
            }
            if (this.f13181f == null) {
                this.f13181f = t10;
                return;
            }
            this.f13180e = true;
            this.f13179d.cancel();
            this.f13179d = Ue.j.CANCELLED;
            this.f13177b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13179d, dVar)) {
                this.f13179d = dVar;
                this.f13177b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13180e) {
                Ye.a.Y(th2);
                return;
            }
            this.f13180e = true;
            this.f13179d = Ue.j.CANCELLED;
            this.f13177b.onError(th2);
        }
    }

    public C2747s1(AbstractC2362l<T> abstractC2362l, T t10) {
        this.f13175b = abstractC2362l;
        this.f13176c = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f13175b.l6(new a(n10, this.f13176c));
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new C2742q1(this.f13175b, this.f13176c, true));
    }
}
