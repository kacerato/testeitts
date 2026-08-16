package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class W<T> extends Be.K<T> implements Ie.b<T> {

    public final AbstractC2362l<T> f12382b;

    public final long f12383c;

    public final T f12384d;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super T> f12385b;

        public final long f12386c;

        public final T f12387d;

        public hn.d f12388e;

        public long f12389f;

        public boolean f12390g;

        public a(Be.N<? super T> n10, long j10, T t10) {
            this.f12385b = n10;
            this.f12386c = j10;
            this.f12387d = t10;
        }

        @Override
        public void a() {
            this.f12388e = Ue.j.CANCELLED;
            if (this.f12390g) {
                return;
            }
            this.f12390g = true;
            T t10 = this.f12387d;
            if (t10 != null) {
                this.f12385b.b(t10);
            } else {
                this.f12385b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f12388e == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12388e.cancel();
            this.f12388e = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f12390g) {
                return;
            }
            long j10 = this.f12389f;
            if (j10 != this.f12386c) {
                this.f12389f = j10 + 1;
                return;
            }
            this.f12390g = true;
            this.f12388e.cancel();
            this.f12388e = Ue.j.CANCELLED;
            this.f12385b.b(t10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12388e, dVar)) {
                this.f12388e = dVar;
                this.f12385b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12390g) {
                Ye.a.Y(th2);
                return;
            }
            this.f12390g = true;
            this.f12388e = Ue.j.CANCELLED;
            this.f12385b.onError(th2);
        }
    }

    public W(AbstractC2362l<T> abstractC2362l, long j10, T t10) {
        this.f12382b = abstractC2362l;
        this.f12383c = j10;
        this.f12384d = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f12382b.l6(new a(n10, this.f12383c, this.f12384d));
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new U(this.f12382b, this.f12383c, this.f12384d, true));
    }
}
