package Oe;

import java.util.Iterator;

public final class N1<T, U, V> extends Be.B<V> {

    public final Be.B<? extends T> f19084b;

    public final Iterable<U> f19085c;

    public final Fe.c<? super T, ? super U, ? extends V> f19086d;

    public static final class a<T, U, V> implements Be.I<T>, De.c {

        public final Be.I<? super V> f19087b;

        public final Iterator<U> f19088c;

        public final Fe.c<? super T, ? super U, ? extends V> f19089d;

        public De.c f19090e;

        public boolean f19091f;

        public a(Be.I<? super V> i10, Iterator<U> it, Fe.c<? super T, ? super U, ? extends V> cVar) {
            this.f19087b = i10;
            this.f19088c = it;
            this.f19089d = cVar;
        }

        @Override
        public void a() {
            if (this.f19091f) {
                return;
            }
            this.f19091f = true;
            this.f19087b.a();
        }

        public void b(Throwable th2) {
            this.f19091f = true;
            this.f19090e.dispose();
            this.f19087b.onError(th2);
        }

        @Override
        public boolean d() {
            return this.f19090e.d();
        }

        @Override
        public void dispose() {
            this.f19090e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19090e, cVar)) {
                this.f19090e = cVar;
                this.f19087b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19091f) {
                return;
            }
            try {
                try {
                    this.f19087b.h(He.b.g(this.f19089d.apply(t10, He.b.g(this.f19088c.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f19088c.hasNext()) {
                            return;
                        }
                        this.f19091f = true;
                        this.f19090e.dispose();
                        this.f19087b.a();
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        b(th2);
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    b(th3);
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                b(th4);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19091f) {
                Ye.a.Y(th2);
            } else {
                this.f19091f = true;
                this.f19087b.onError(th2);
            }
        }
    }

    public N1(Be.B<? extends T> b10, Iterable<U> iterable, Fe.c<? super T, ? super U, ? extends V> cVar) {
        this.f19084b = b10;
        this.f19085c = iterable;
        this.f19086d = cVar;
    }

    @Override
    public void J5(Be.I<? super V> i10) {
        try {
            Iterator it = (Iterator) He.b.g(this.f19085c.iterator(), "The iterator returned by other is null");
            try {
                if (it.hasNext()) {
                    this.f19084b.c(new a(i10, it, this.f19086d));
                } else {
                    Ge.e.c(i10);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.h(th2, i10);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ge.e.h(th3, i10);
        }
    }
}
