package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2709f1<T> extends AbstractC2692a<T, T> {

    public final Fe.d<? super Integer, ? super Throwable> f12768d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T> {

        public static final long f12769h = -7098360935104053232L;

        public final hn.c<? super T> f12770b;

        public final Ue.i f12771c;

        public final hn.b<? extends T> f12772d;

        public final Fe.d<? super Integer, ? super Throwable> f12773e;

        public int f12774f;

        public long f12775g;

        public a(hn.c<? super T> cVar, Fe.d<? super Integer, ? super Throwable> dVar, Ue.i iVar, hn.b<? extends T> bVar) {
            this.f12770b = cVar;
            this.f12771c = iVar;
            this.f12772d = bVar;
            this.f12773e = dVar;
        }

        @Override
        public void a() {
            this.f12770b.a();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f12771c.f()) {
                    long j10 = this.f12775g;
                    if (j10 != 0) {
                        this.f12775g = 0L;
                        this.f12771c.k(j10);
                    }
                    this.f12772d.l(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12775g++;
            this.f12770b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f12771c.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                Fe.d<? super Integer, ? super Throwable> dVar = this.f12773e;
                int i10 = this.f12774f + 1;
                this.f12774f = i10;
                if (dVar.test(Integer.valueOf(i10), th2)) {
                    b();
                } else {
                    this.f12770b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f12770b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public C2709f1(AbstractC2362l<T> abstractC2362l, Fe.d<? super Integer, ? super Throwable> dVar) {
        super(abstractC2362l);
        this.f12768d = dVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.i iVar = new Ue.i(false);
        cVar.j(iVar);
        new a(cVar, this.f12768d, iVar, this.f12507c).b();
    }
}
