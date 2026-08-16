package Oe;

import Be.InterfaceC2361k;
import java.util.concurrent.Callable;

public final class C2887j0<T, S> extends Be.B<T> {

    public final Callable<S> f19539b;

    public final Fe.c<S, InterfaceC2361k<T>, S> f19540c;

    public final Fe.g<? super S> f19541d;

    public static final class a<T, S> implements InterfaceC2361k<T>, De.c {

        public final Be.I<? super T> f19542b;

        public final Fe.c<S, ? super InterfaceC2361k<T>, S> f19543c;

        public final Fe.g<? super S> f19544d;

        public S f19545e;

        public volatile boolean f19546f;

        public boolean f19547g;

        public boolean f19548h;

        public a(Be.I<? super T> i10, Fe.c<S, ? super InterfaceC2361k<T>, S> cVar, Fe.g<? super S> gVar, S s10) {
            this.f19542b = i10;
            this.f19543c = cVar;
            this.f19544d = gVar;
            this.f19545e = s10;
        }

        private void b(S s10) {
            try {
                this.f19544d.accept(s10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public void a() {
            if (this.f19547g) {
                return;
            }
            this.f19547g = true;
            this.f19542b.a();
        }

        public void c() {
            S s10 = this.f19545e;
            if (this.f19546f) {
                this.f19545e = null;
                b(s10);
                return;
            }
            Fe.c<S, ? super InterfaceC2361k<T>, S> cVar = this.f19543c;
            while (!this.f19546f) {
                this.f19548h = false;
                try {
                    s10 = cVar.apply(s10, this);
                    if (this.f19547g) {
                        this.f19546f = true;
                        this.f19545e = null;
                        b(s10);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f19545e = null;
                    this.f19546f = true;
                    onError(th2);
                    b(s10);
                    return;
                }
            }
            this.f19545e = null;
            b(s10);
        }

        @Override
        public boolean d() {
            return this.f19546f;
        }

        @Override
        public void dispose() {
            this.f19546f = true;
        }

        @Override
        public void h(T t10) {
            if (this.f19547g) {
                return;
            }
            if (this.f19548h) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f19548h = true;
                this.f19542b.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19547g) {
                Ye.a.Y(th2);
                return;
            }
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f19547g = true;
            this.f19542b.onError(th2);
        }
    }

    public C2887j0(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar, Fe.g<? super S> gVar) {
        this.f19539b = callable;
        this.f19540c = cVar;
        this.f19541d = gVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            a aVar = new a(i10, this.f19540c, this.f19541d, this.f19539b.call());
            i10.e(aVar);
            aVar.c();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
