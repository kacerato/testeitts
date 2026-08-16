package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2697b1<T> extends AbstractC2692a<T, T> {

    public final long f12605d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T> {

        public static final long f12606g = -7098360935104053232L;

        public final hn.c<? super T> f12607b;

        public final Ue.i f12608c;

        public final hn.b<? extends T> f12609d;

        public long f12610e;

        public long f12611f;

        public a(hn.c<? super T> cVar, long j10, Ue.i iVar, hn.b<? extends T> bVar) {
            this.f12607b = cVar;
            this.f12608c = iVar;
            this.f12609d = bVar;
            this.f12610e = j10;
        }

        @Override
        public void a() {
            long j10 = this.f12610e;
            if (j10 != Long.MAX_VALUE) {
                this.f12610e = j10 - 1;
            }
            if (j10 != 0) {
                b();
            } else {
                this.f12607b.a();
            }
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f12608c.f()) {
                    long j10 = this.f12611f;
                    if (j10 != 0) {
                        this.f12611f = 0L;
                        this.f12608c.k(j10);
                    }
                    this.f12609d.l(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12611f++;
            this.f12607b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f12608c.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12607b.onError(th2);
        }
    }

    public C2697b1(AbstractC2362l<T> abstractC2362l, long j10) {
        super(abstractC2362l);
        this.f12605d = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.i iVar = new Ue.i(false);
        cVar.j(iVar);
        long j10 = this.f12605d;
        new a(cVar, j10 != Long.MAX_VALUE ? j10 - 1 : Long.MAX_VALUE, iVar, this.f12507c).b();
    }
}
