package Oe;

import io.reactivex.exceptions.CompositeException;

public final class O<T> extends AbstractC2859a<T, T> {

    public final Fe.g<? super T> f19092c;

    public final Fe.g<? super Throwable> f19093d;

    public final Fe.a f19094e;

    public final Fe.a f19095f;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19096b;

        public final Fe.g<? super T> f19097c;

        public final Fe.g<? super Throwable> f19098d;

        public final Fe.a f19099e;

        public final Fe.a f19100f;

        public De.c f19101g;

        public boolean f19102h;

        public a(Be.I<? super T> i10, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
            this.f19096b = i10;
            this.f19097c = gVar;
            this.f19098d = gVar2;
            this.f19099e = aVar;
            this.f19100f = aVar2;
        }

        @Override
        public void a() {
            if (this.f19102h) {
                return;
            }
            try {
                this.f19099e.run();
                this.f19102h = true;
                this.f19096b.a();
                try {
                    this.f19100f.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                onError(th3);
            }
        }

        @Override
        public boolean d() {
            return this.f19101g.d();
        }

        @Override
        public void dispose() {
            this.f19101g.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19101g, cVar)) {
                this.f19101g = cVar;
                this.f19096b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19102h) {
                return;
            }
            try {
                this.f19097c.accept(t10);
                this.f19096b.h(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19101g.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19102h) {
                Ye.a.Y(th2);
                return;
            }
            this.f19102h = true;
            try {
                this.f19098d.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f19096b.onError(th2);
            try {
                this.f19100f.run();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ye.a.Y(th4);
            }
        }
    }

    public O(Be.G<T> g10, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
        super(g10);
        this.f19092c = gVar;
        this.f19093d = gVar2;
        this.f19094e = aVar;
        this.f19095f = aVar2;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19092c, this.f19093d, this.f19094e, this.f19095f));
    }
}
