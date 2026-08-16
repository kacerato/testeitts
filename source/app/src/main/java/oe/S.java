package Oe;

import Be.AbstractC2368s;

public final class S<T> extends AbstractC2368s<T> implements Ie.d<T> {

    public final Be.G<T> f19159b;

    public final long f19160c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.v<? super T> f19161b;

        public final long f19162c;

        public De.c f19163d;

        public long f19164e;

        public boolean f19165f;

        public a(Be.v<? super T> vVar, long j10) {
            this.f19161b = vVar;
            this.f19162c = j10;
        }

        @Override
        public void a() {
            if (this.f19165f) {
                return;
            }
            this.f19165f = true;
            this.f19161b.a();
        }

        @Override
        public boolean d() {
            return this.f19163d.d();
        }

        @Override
        public void dispose() {
            this.f19163d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19163d, cVar)) {
                this.f19163d = cVar;
                this.f19161b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19165f) {
                return;
            }
            long j10 = this.f19164e;
            if (j10 != this.f19162c) {
                this.f19164e = j10 + 1;
                return;
            }
            this.f19165f = true;
            this.f19163d.dispose();
            this.f19161b.b(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19165f) {
                Ye.a.Y(th2);
            } else {
                this.f19165f = true;
                this.f19161b.onError(th2);
            }
        }
    }

    public S(Be.G<T> g10, long j10) {
        this.f19159b = g10;
        this.f19160c = j10;
    }

    @Override
    public Be.B<T> c() {
        return Ye.a.R(new Q(this.f19159b, this.f19160c, null, false));
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f19159b.c(new a(vVar, this.f19160c));
    }
}
