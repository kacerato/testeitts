package Me;

import io.reactivex.exceptions.CompositeException;

public final class e0<T> extends AbstractC2815a<T, T> {

    public final Fe.g<? super De.c> f15026c;

    public final Fe.g<? super T> f15027d;

    public final Fe.g<? super Throwable> f15028e;

    public final Fe.a f15029f;

    public final Fe.a f15030g;

    public final Fe.a f15031h;

    public static final class a<T> implements Be.v<T>, De.c {

        public final Be.v<? super T> f15032b;

        public final e0<T> f15033c;

        public De.c f15034d;

        public a(Be.v<? super T> vVar, e0<T> e0Var) {
            this.f15032b = vVar;
            this.f15033c = e0Var;
        }

        @Override
        public void a() {
            De.c cVar = this.f15034d;
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar) {
                return;
            }
            try {
                this.f15033c.f15029f.run();
                this.f15034d = dVar;
                this.f15032b.a();
                c();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                f(th2);
            }
        }

        @Override
        public void b(T t10) {
            De.c cVar = this.f15034d;
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar) {
                return;
            }
            try {
                this.f15033c.f15027d.accept(t10);
                this.f15034d = dVar;
                this.f15032b.b(t10);
                c();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                f(th2);
            }
        }

        public void c() {
            try {
                this.f15033c.f15030g.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f15034d.d();
        }

        @Override
        public void dispose() {
            try {
                this.f15033c.f15031h.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            this.f15034d.dispose();
            this.f15034d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15034d, cVar)) {
                try {
                    this.f15033c.f15026c.accept(cVar);
                    this.f15034d = cVar;
                    this.f15032b.e(this);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cVar.dispose();
                    this.f15034d = Ge.d.DISPOSED;
                    Ge.e.g(th2, this.f15032b);
                }
            }
        }

        public void f(Throwable th2) {
            try {
                this.f15033c.f15028e.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f15034d = Ge.d.DISPOSED;
            this.f15032b.onError(th2);
            c();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f15034d == Ge.d.DISPOSED) {
                Ye.a.Y(th2);
            } else {
                f(th2);
            }
        }
    }

    public e0(Be.y<T> yVar, Fe.g<? super De.c> gVar, Fe.g<? super T> gVar2, Fe.g<? super Throwable> gVar3, Fe.a aVar, Fe.a aVar2, Fe.a aVar3) {
        super(yVar);
        this.f15026c = gVar;
        this.f15027d = gVar2;
        this.f15028e = gVar3;
        this.f15029f = aVar;
        this.f15030g = aVar2;
        this.f15031h = aVar3;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this));
    }
}
