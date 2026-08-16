package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2700c1<T> extends AbstractC2692a<T, T> {

    public final Fe.e f12638d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T> {

        public static final long f12639g = -7098360935104053232L;

        public final hn.c<? super T> f12640b;

        public final Ue.i f12641c;

        public final hn.b<? extends T> f12642d;

        public final Fe.e f12643e;

        public long f12644f;

        public a(hn.c<? super T> cVar, Fe.e eVar, Ue.i iVar, hn.b<? extends T> bVar) {
            this.f12640b = cVar;
            this.f12641c = iVar;
            this.f12642d = bVar;
            this.f12643e = eVar;
        }

        @Override
        public void a() {
            try {
                if (this.f12643e.getAsBoolean()) {
                    this.f12640b.a();
                } else {
                    b();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12640b.onError(th2);
            }
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f12641c.f()) {
                    long j10 = this.f12644f;
                    if (j10 != 0) {
                        this.f12644f = 0L;
                        this.f12641c.k(j10);
                    }
                    this.f12642d.l(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12644f++;
            this.f12640b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f12641c.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12640b.onError(th2);
        }
    }

    public C2700c1(AbstractC2362l<T> abstractC2362l, Fe.e eVar) {
        super(abstractC2362l);
        this.f12638d = eVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.i iVar = new Ue.i(false);
        cVar.j(iVar);
        new a(cVar, this.f12638d, iVar, this.f12507c).b();
    }
}
