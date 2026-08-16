package Oe;

import java.util.NoSuchElementException;

public final class T<T> extends Be.K<T> implements Ie.d<T> {

    public final Be.G<T> f19209b;

    public final long f19210c;

    public final T f19211d;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.N<? super T> f19212b;

        public final long f19213c;

        public final T f19214d;

        public De.c f19215e;

        public long f19216f;

        public boolean f19217g;

        public a(Be.N<? super T> n10, long j10, T t10) {
            this.f19212b = n10;
            this.f19213c = j10;
            this.f19214d = t10;
        }

        @Override
        public void a() {
            if (this.f19217g) {
                return;
            }
            this.f19217g = true;
            T t10 = this.f19214d;
            if (t10 != null) {
                this.f19212b.b(t10);
            } else {
                this.f19212b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f19215e.d();
        }

        @Override
        public void dispose() {
            this.f19215e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19215e, cVar)) {
                this.f19215e = cVar;
                this.f19212b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19217g) {
                return;
            }
            long j10 = this.f19216f;
            if (j10 != this.f19213c) {
                this.f19216f = j10 + 1;
                return;
            }
            this.f19217g = true;
            this.f19215e.dispose();
            this.f19212b.b(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19217g) {
                Ye.a.Y(th2);
            } else {
                this.f19217g = true;
                this.f19212b.onError(th2);
            }
        }
    }

    public T(Be.G<T> g10, long j10, T t10) {
        this.f19209b = g10;
        this.f19210c = j10;
        this.f19211d = t10;
    }

    @Override
    public Be.B<T> c() {
        return Ye.a.R(new Q(this.f19209b, this.f19210c, this.f19211d, true));
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f19209b.c(new a(n10, this.f19210c, this.f19211d));
    }
}
