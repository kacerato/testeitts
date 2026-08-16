package Oe;

import java.util.ArrayDeque;

public final class p1<T> extends AbstractC2859a<T, T> {

    public final int f19748c;

    public static final class a<T> extends ArrayDeque<T> implements Be.I<T>, De.c {

        public static final long f19749f = 7240042530241604978L;

        public final Be.I<? super T> f19750b;

        public final int f19751c;

        public De.c f19752d;

        public volatile boolean f19753e;

        public a(Be.I<? super T> i10, int i11) {
            this.f19750b = i10;
            this.f19751c = i11;
        }

        @Override
        public void a() {
            Be.I<? super T> i10 = this.f19750b;
            while (!this.f19753e) {
                T poll = poll();
                if (poll == null) {
                    if (this.f19753e) {
                        return;
                    }
                    i10.a();
                    return;
                }
                i10.h(poll);
            }
        }

        @Override
        public boolean d() {
            return this.f19753e;
        }

        @Override
        public void dispose() {
            if (this.f19753e) {
                return;
            }
            this.f19753e = true;
            this.f19752d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19752d, cVar)) {
                this.f19752d = cVar;
                this.f19750b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19751c == size()) {
                poll();
            }
            offer(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19750b.onError(th2);
        }
    }

    public p1(Be.G<T> g10, int i10) {
        super(g10);
        this.f19748c = i10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19748c));
    }
}
