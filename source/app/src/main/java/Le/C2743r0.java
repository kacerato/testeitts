package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2743r0<T> extends AbstractC2692a<T, T> {

    public static final class a<T> implements InterfaceC2367q<T>, Ie.l<T> {

        public final hn.c<? super T> f13158b;

        public hn.d f13159c;

        public a(hn.c<? super T> cVar) {
            this.f13158b = cVar;
        }

        @Override
        public void a() {
            this.f13158b.a();
        }

        @Override
        public void cancel() {
            this.f13159c.cancel();
        }

        @Override
        public void clear() {
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void i(long j10) {
        }

        @Override
        public boolean isEmpty() {
            return true;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13159c, dVar)) {
                this.f13159c = dVar;
                this.f13158b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public int m(int i10) {
            return i10 & 2;
        }

        @Override
        public boolean o(T t10, T t11) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        public boolean offer(T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override
        public void onError(Throwable th2) {
            this.f13158b.onError(th2);
        }

        @Override
        @Ce.g
        public T poll() {
            return null;
        }
    }

    public C2743r0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
