package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class T<T> extends AbstractC2692a<T, T> {

    public final Fe.g<? super hn.d> f12240d;

    public final Fe.q f12241e;

    public final Fe.a f12242f;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f12243b;

        public final Fe.g<? super hn.d> f12244c;

        public final Fe.q f12245d;

        public final Fe.a f12246e;

        public hn.d f12247f;

        public a(hn.c<? super T> cVar, Fe.g<? super hn.d> gVar, Fe.q qVar, Fe.a aVar) {
            this.f12243b = cVar;
            this.f12244c = gVar;
            this.f12246e = aVar;
            this.f12245d = qVar;
        }

        @Override
        public void a() {
            if (this.f12247f != Ue.j.CANCELLED) {
                this.f12243b.a();
            }
        }

        @Override
        public void cancel() {
            hn.d dVar = this.f12247f;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                this.f12247f = jVar;
                try {
                    this.f12246e.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
                dVar.cancel();
            }
        }

        @Override
        public void h(T t10) {
            this.f12243b.h(t10);
        }

        @Override
        public void i(long j10) {
            try {
                this.f12245d.a(j10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            this.f12247f.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            try {
                this.f12244c.accept(dVar);
                if (Ue.j.o(this.f12247f, dVar)) {
                    this.f12247f = dVar;
                    this.f12243b.j(this);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dVar.cancel();
                this.f12247f = Ue.j.CANCELLED;
                Ue.g.b(th2, this.f12243b);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12247f != Ue.j.CANCELLED) {
                this.f12243b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public T(AbstractC2362l<T> abstractC2362l, Fe.g<? super hn.d> gVar, Fe.q qVar, Fe.a aVar) {
        super(abstractC2362l);
        this.f12240d = gVar;
        this.f12241e = qVar;
        this.f12242f = aVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12240d, this.f12241e, this.f12242f));
    }
}
