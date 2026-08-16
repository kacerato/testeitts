package Oe;

import java.util.Iterator;

public final class C2866c0<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f19411c;

    public static final class a<T, R> implements Be.I<T>, De.c {

        public final Be.I<? super R> f19412b;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f19413c;

        public De.c f19414d;

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f19412b = i10;
            this.f19413c = oVar;
        }

        @Override
        public void a() {
            De.c cVar = this.f19414d;
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar) {
                return;
            }
            this.f19414d = dVar;
            this.f19412b.a();
        }

        @Override
        public boolean d() {
            return this.f19414d.d();
        }

        @Override
        public void dispose() {
            this.f19414d.dispose();
            this.f19414d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19414d, cVar)) {
                this.f19414d = cVar;
                this.f19412b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19414d == Ge.d.DISPOSED) {
                return;
            }
            try {
                Iterator<? extends R> it = this.f19413c.apply(t10).iterator();
                Be.I<? super R> i10 = this.f19412b;
                while (it.hasNext()) {
                    try {
                        try {
                            i10.h((Object) He.b.g(it.next(), "The iterator returned a null value"));
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f19414d.dispose();
                            onError(th2);
                            return;
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        this.f19414d.dispose();
                        onError(th3);
                        return;
                    }
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                this.f19414d.dispose();
                onError(th4);
            }
        }

        @Override
        public void onError(Throwable th2) {
            De.c cVar = this.f19414d;
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar) {
                Ye.a.Y(th2);
            } else {
                this.f19414d = dVar;
                this.f19412b.onError(th2);
            }
        }
    }

    public C2866c0(Be.G<T> g10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
        super(g10);
        this.f19411c = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f19344b.c(new a(i10, this.f19411c));
    }
}
