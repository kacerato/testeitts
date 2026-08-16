package Oe;

import java.util.NoSuchElementException;

public final class Q<T> extends AbstractC2859a<T, T> {

    public final long f19131c;

    public final T f19132d;

    public final boolean f19133e;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19134b;

        public final long f19135c;

        public final T f19136d;

        public final boolean f19137e;

        public De.c f19138f;

        public long f19139g;

        public boolean f19140h;

        public a(Be.I<? super T> i10, long j10, T t10, boolean z10) {
            this.f19134b = i10;
            this.f19135c = j10;
            this.f19136d = t10;
            this.f19137e = z10;
        }

        @Override
        public void a() {
            if (this.f19140h) {
                return;
            }
            this.f19140h = true;
            T t10 = this.f19136d;
            if (t10 == null && this.f19137e) {
                this.f19134b.onError(new NoSuchElementException());
                return;
            }
            if (t10 != null) {
                this.f19134b.h(t10);
            }
            this.f19134b.a();
        }

        @Override
        public boolean d() {
            return this.f19138f.d();
        }

        @Override
        public void dispose() {
            this.f19138f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19138f, cVar)) {
                this.f19138f = cVar;
                this.f19134b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19140h) {
                return;
            }
            long j10 = this.f19139g;
            if (j10 != this.f19135c) {
                this.f19139g = j10 + 1;
                return;
            }
            this.f19140h = true;
            this.f19138f.dispose();
            this.f19134b.h(t10);
            this.f19134b.a();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19140h) {
                Ye.a.Y(th2);
            } else {
                this.f19140h = true;
                this.f19134b.onError(th2);
            }
        }
    }

    public Q(Be.G<T> g10, long j10, T t10, boolean z10) {
        super(g10);
        this.f19131c = j10;
        this.f19132d = t10;
        this.f19133e = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19131c, this.f19132d, this.f19133e));
    }
}
