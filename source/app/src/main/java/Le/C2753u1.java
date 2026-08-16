package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.ArrayDeque;

public final class C2753u1<T> extends AbstractC2692a<T, T> {

    public final int f13254d;

    public static final class a<T> extends ArrayDeque<T> implements InterfaceC2367q<T>, hn.d {

        public static final long f13255e = -3807491841935125653L;

        public final hn.c<? super T> f13256b;

        public final int f13257c;

        public hn.d f13258d;

        public a(hn.c<? super T> cVar, int i10) {
            super(i10);
            this.f13256b = cVar;
            this.f13257c = i10;
        }

        @Override
        public void a() {
            this.f13256b.a();
        }

        @Override
        public void cancel() {
            this.f13258d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f13257c == size()) {
                this.f13256b.h(poll());
            } else {
                this.f13258d.i(1L);
            }
            offer(t10);
        }

        @Override
        public void i(long j10) {
            this.f13258d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13258d, dVar)) {
                this.f13258d = dVar;
                this.f13256b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13256b.onError(th2);
        }
    }

    public C2753u1(AbstractC2362l<T> abstractC2362l, int i10) {
        super(abstractC2362l);
        this.f13254d = i10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f13254d));
    }
}
