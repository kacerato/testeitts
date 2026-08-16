package Oe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2923z<T> extends AbstractC2859a<T, T> {

    public final Be.Q<? extends T> f20059c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, Be.N<T>, De.c {

        public static final long f20060e = -1953724749712440952L;

        public final Be.I<? super T> f20061b;

        public Be.Q<? extends T> f20062c;

        public boolean f20063d;

        public a(Be.I<? super T> i10, Be.Q<? extends T> q10) {
            this.f20061b = i10;
            this.f20062c = q10;
        }

        @Override
        public void a() {
            this.f20063d = true;
            Ge.d.c(this, null);
            Be.Q<? extends T> q10 = this.f20062c;
            this.f20062c = null;
            q10.a(this);
        }

        @Override
        public void b(T t10) {
            this.f20061b.h(t10);
            this.f20061b.a();
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (!Ge.d.h(this, cVar) || this.f20063d) {
                return;
            }
            this.f20061b.e(this);
        }

        @Override
        public void h(T t10) {
            this.f20061b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f20061b.onError(th2);
        }
    }

    public C2923z(Be.B<T> b10, Be.Q<? extends T> q10) {
        super(b10);
        this.f20059c = q10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f20059c));
    }
}
