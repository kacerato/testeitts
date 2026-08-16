package Qe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class T<T> extends Be.K<T> {

    public final Be.Q<T> f22144b;

    public final long f22145c;

    public final TimeUnit f22146d;

    public final Be.J f22147e;

    public final Be.Q<? extends T> f22148f;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, Runnable, De.c {

        public static final long f22149h = 37497744973048446L;

        public final Be.N<? super T> f22150b;

        public final AtomicReference<De.c> f22151c = new AtomicReference<>();

        public final C0535a<T> f22152d;

        public Be.Q<? extends T> f22153e;

        public final long f22154f;

        public final TimeUnit f22155g;

        public static final class C0535a<T> extends AtomicReference<De.c> implements Be.N<T> {

            public static final long f22156c = 2071387740092105509L;

            public final Be.N<? super T> f22157b;

            public C0535a(Be.N<? super T> n10) {
                this.f22157b = n10;
            }

            @Override
            public void b(T t10) {
                this.f22157b.b(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f22157b.onError(th2);
            }
        }

        public a(Be.N<? super T> n10, Be.Q<? extends T> q10, long j10, TimeUnit timeUnit) {
            this.f22150b = n10;
            this.f22153e = q10;
            this.f22154f = j10;
            this.f22155g = timeUnit;
            if (q10 != null) {
                this.f22152d = new C0535a<>(n10);
            } else {
                this.f22152d = null;
            }
        }

        @Override
        public void b(T t10) {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || !compareAndSet(cVar, dVar)) {
                return;
            }
            Ge.d.a(this.f22151c);
            this.f22150b.b(t10);
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            Ge.d.a(this.f22151c);
            C0535a<T> c0535a = this.f22152d;
            if (c0535a != null) {
                Ge.d.a(c0535a);
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || !compareAndSet(cVar, dVar)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f22151c);
                this.f22150b.onError(th2);
            }
        }

        @Override
        public void run() {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || !compareAndSet(cVar, dVar)) {
                return;
            }
            if (cVar != null) {
                cVar.dispose();
            }
            Be.Q<? extends T> q10 = this.f22153e;
            if (q10 == null) {
                this.f22150b.onError(new TimeoutException(ExceptionHelper.e(this.f22154f, this.f22155g)));
            } else {
                this.f22153e = null;
                q10.a(this.f22152d);
            }
        }
    }

    public T(Be.Q<T> q10, long j10, TimeUnit timeUnit, Be.J j11, Be.Q<? extends T> q11) {
        this.f22144b = q10;
        this.f22145c = j10;
        this.f22146d = timeUnit;
        this.f22147e = j11;
        this.f22148f = q11;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        a aVar = new a(n10, this.f22148f, this.f22145c, this.f22146d);
        n10.e(aVar);
        Ge.d.c(aVar.f22151c, this.f22147e.g(aVar, this.f22145c, this.f22146d));
        this.f22144b.a(aVar);
    }
}
