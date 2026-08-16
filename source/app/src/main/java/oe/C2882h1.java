package Oe;

import java.util.ArrayDeque;

public final class C2882h1<T> extends AbstractC2859a<T, T> {

    public final int f19506c;

    public static final class a<T> extends ArrayDeque<T> implements Be.I<T>, De.c {

        public static final long f19507e = -3807491841935125653L;

        public final Be.I<? super T> f19508b;

        public final int f19509c;

        public De.c f19510d;

        public a(Be.I<? super T> i10, int i11) {
            super(i11);
            this.f19508b = i10;
            this.f19509c = i11;
        }

        @Override
        public void a() {
            this.f19508b.a();
        }

        @Override
        public boolean d() {
            return this.f19510d.d();
        }

        @Override
        public void dispose() {
            this.f19510d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19510d, cVar)) {
                this.f19510d = cVar;
                this.f19508b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19509c == size()) {
                this.f19508b.h(poll());
            }
            offer(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19508b.onError(th2);
        }
    }

    public C2882h1(Be.G<T> g10, int i10) {
        super(g10);
        this.f19506c = i10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19506c));
    }
}
