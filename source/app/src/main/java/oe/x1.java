package Oe;

import af.C3606d;
import java.util.concurrent.TimeUnit;

public final class x1<T> extends AbstractC2859a<T, C3606d<T>> {

    public final Be.J f20021c;

    public final TimeUnit f20022d;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super C3606d<T>> f20023b;

        public final TimeUnit f20024c;

        public final Be.J f20025d;

        public long f20026e;

        public De.c f20027f;

        public a(Be.I<? super C3606d<T>> i10, TimeUnit timeUnit, Be.J j10) {
            this.f20023b = i10;
            this.f20025d = j10;
            this.f20024c = timeUnit;
        }

        @Override
        public void a() {
            this.f20023b.a();
        }

        @Override
        public boolean d() {
            return this.f20027f.d();
        }

        @Override
        public void dispose() {
            this.f20027f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f20027f, cVar)) {
                this.f20027f = cVar;
                this.f20026e = this.f20025d.e(this.f20024c);
                this.f20023b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            long e10 = this.f20025d.e(this.f20024c);
            long j10 = this.f20026e;
            this.f20026e = e10;
            this.f20023b.h(new C3606d(t10, e10 - j10, this.f20024c));
        }

        @Override
        public void onError(Throwable th2) {
            this.f20023b.onError(th2);
        }
    }

    public x1(Be.G<T> g10, TimeUnit timeUnit, Be.J j10) {
        super(g10);
        this.f20021c = j10;
        this.f20022d = timeUnit;
    }

    @Override
    public void J5(Be.I<? super C3606d<T>> i10) {
        this.f19344b.c(new a(i10, this.f20022d, this.f20021c));
    }
}
