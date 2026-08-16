package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Iterator;

public final class b2<T, U, V> extends AbstractC2692a<T, V> {

    public final Iterable<U> f12612d;

    public final Fe.c<? super T, ? super U, ? extends V> f12613e;

    public static final class a<T, U, V> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super V> f12614b;

        public final Iterator<U> f12615c;

        public final Fe.c<? super T, ? super U, ? extends V> f12616d;

        public hn.d f12617e;

        public boolean f12618f;

        public a(hn.c<? super V> cVar, Iterator<U> it, Fe.c<? super T, ? super U, ? extends V> cVar2) {
            this.f12614b = cVar;
            this.f12615c = it;
            this.f12616d = cVar2;
        }

        @Override
        public void a() {
            if (this.f12618f) {
                return;
            }
            this.f12618f = true;
            this.f12614b.a();
        }

        public void b(Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            this.f12618f = true;
            this.f12617e.cancel();
            this.f12614b.onError(th2);
        }

        @Override
        public void cancel() {
            this.f12617e.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12618f) {
                return;
            }
            try {
                try {
                    this.f12614b.h(He.b.g(this.f12616d.apply(t10, He.b.g(this.f12615c.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f12615c.hasNext()) {
                            return;
                        }
                        this.f12618f = true;
                        this.f12617e.cancel();
                        this.f12614b.a();
                    } catch (Throwable th2) {
                        b(th2);
                    }
                } catch (Throwable th3) {
                    b(th3);
                }
            } catch (Throwable th4) {
                b(th4);
            }
        }

        @Override
        public void i(long j10) {
            this.f12617e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12617e, dVar)) {
                this.f12617e = dVar;
                this.f12614b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12618f) {
                Ye.a.Y(th2);
            } else {
                this.f12618f = true;
                this.f12614b.onError(th2);
            }
        }
    }

    public b2(AbstractC2362l<T> abstractC2362l, Iterable<U> iterable, Fe.c<? super T, ? super U, ? extends V> cVar) {
        super(abstractC2362l);
        this.f12612d = iterable;
        this.f12613e = cVar;
    }

    @Override
    public void m6(hn.c<? super V> cVar) {
        try {
            Iterator it = (Iterator) He.b.g(this.f12612d.iterator(), "The iterator returned by other is null");
            try {
                if (it.hasNext()) {
                    this.f12507c.l6(new a(cVar, it, this.f12613e));
                } else {
                    Ue.g.a(cVar);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ue.g.b(th2, cVar);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ue.g.b(th3, cVar);
        }
    }
}
