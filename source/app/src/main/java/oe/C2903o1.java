package Oe;

public final class C2903o1<T> extends AbstractC2859a<T, T> {

    public final long f19709c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19710b;

        public boolean f19711c;

        public De.c f19712d;

        public long f19713e;

        public a(Be.I<? super T> i10, long j10) {
            this.f19710b = i10;
            this.f19713e = j10;
        }

        @Override
        public void a() {
            if (this.f19711c) {
                return;
            }
            this.f19711c = true;
            this.f19712d.dispose();
            this.f19710b.a();
        }

        @Override
        public boolean d() {
            return this.f19712d.d();
        }

        @Override
        public void dispose() {
            this.f19712d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19712d, cVar)) {
                this.f19712d = cVar;
                if (this.f19713e != 0) {
                    this.f19710b.e(this);
                    return;
                }
                this.f19711c = true;
                cVar.dispose();
                Ge.e.c(this.f19710b);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19711c) {
                return;
            }
            long j10 = this.f19713e;
            long j11 = j10 - 1;
            this.f19713e = j11;
            if (j10 > 0) {
                boolean z10 = j11 == 0;
                this.f19710b.h(t10);
                if (z10) {
                    a();
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19711c) {
                Ye.a.Y(th2);
                return;
            }
            this.f19711c = true;
            this.f19712d.dispose();
            this.f19710b.onError(th2);
        }
    }

    public C2903o1(Be.G<T> g10, long j10) {
        super(g10);
        this.f19709c = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19709c));
    }
}
