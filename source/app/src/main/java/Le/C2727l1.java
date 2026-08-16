package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2727l1<T> extends AbstractC2692a<T, T> {

    public final Fe.c<T, T, T> f12891d;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f12892b;

        public final Fe.c<T, T, T> f12893c;

        public hn.d f12894d;

        public T f12895e;

        public boolean f12896f;

        public a(hn.c<? super T> cVar, Fe.c<T, T, T> cVar2) {
            this.f12892b = cVar;
            this.f12893c = cVar2;
        }

        @Override
        public void a() {
            if (this.f12896f) {
                return;
            }
            this.f12896f = true;
            this.f12892b.a();
        }

        @Override
        public void cancel() {
            this.f12894d.cancel();
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override
        public void h(T t10) {
            if (this.f12896f) {
                return;
            }
            hn.c<? super T> cVar = this.f12892b;
            T t11 = this.f12895e;
            if (t11 == null) {
                this.f12895e = t10;
                cVar.h(t10);
                return;
            }
            try {
                ?? r42 = (T) He.b.g(this.f12893c.apply(t11, t10), "The value returned by the accumulator is null");
                this.f12895e = r42;
                cVar.h(r42);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12894d.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f12894d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12894d, dVar)) {
                this.f12894d = dVar;
                this.f12892b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12896f) {
                Ye.a.Y(th2);
            } else {
                this.f12896f = true;
                this.f12892b.onError(th2);
            }
        }
    }

    public C2727l1(AbstractC2362l<T> abstractC2362l, Fe.c<T, T, T> cVar) {
        super(abstractC2362l);
        this.f12891d = cVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12891d));
    }
}
