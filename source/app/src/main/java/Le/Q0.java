package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;

public final class Q0<T> extends AbstractC2692a<T, T> {

    public final Fe.o<? super Throwable, ? extends hn.b<? extends T>> f12173d;

    public final boolean f12174e;

    public static final class a<T> extends Ue.i implements InterfaceC2367q<T> {

        public static final long f12175q = 4063763155303814625L;

        public final hn.c<? super T> f12176k;

        public final Fe.o<? super Throwable, ? extends hn.b<? extends T>> f12177l;

        public final boolean f12178m;

        public boolean f12179n;

        public boolean f12180o;

        public long f12181p;

        public a(hn.c<? super T> cVar, Fe.o<? super Throwable, ? extends hn.b<? extends T>> oVar, boolean z10) {
            super(false);
            this.f12176k = cVar;
            this.f12177l = oVar;
            this.f12178m = z10;
        }

        @Override
        public void a() {
            if (this.f12180o) {
                return;
            }
            this.f12180o = true;
            this.f12179n = true;
            this.f12176k.a();
        }

        @Override
        public void h(T t10) {
            if (this.f12180o) {
                return;
            }
            if (!this.f12179n) {
                this.f12181p++;
            }
            this.f12176k.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12179n) {
                if (this.f12180o) {
                    Ye.a.Y(th2);
                    return;
                } else {
                    this.f12176k.onError(th2);
                    return;
                }
            }
            this.f12179n = true;
            if (this.f12178m && !(th2 instanceof Exception)) {
                this.f12176k.onError(th2);
                return;
            }
            try {
                hn.b bVar = (hn.b) He.b.g(this.f12177l.apply(th2), "The nextSupplier returned a null Publisher");
                long j10 = this.f12181p;
                if (j10 != 0) {
                    k(j10);
                }
                bVar.l(this);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f12176k.onError(new CompositeException(th2, th3));
            }
        }
    }

    public Q0(AbstractC2362l<T> abstractC2362l, Fe.o<? super Throwable, ? extends hn.b<? extends T>> oVar, boolean z10) {
        super(abstractC2362l);
        this.f12173d = oVar;
        this.f12174e = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar, this.f12173d, this.f12174e);
        cVar.j(aVar);
        this.f12507c.l6(aVar);
    }
}
