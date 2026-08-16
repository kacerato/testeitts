package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2712g1<T> extends AbstractC2692a<T, T> {

    public final Fe.r<? super Throwable> f12798d;

    public final long f12799e;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T> {

        public static final long f12800h = -7098360935104053232L;

        public final hn.c<? super T> f12801b;

        public final Ue.i f12802c;

        public final hn.b<? extends T> f12803d;

        public final Fe.r<? super Throwable> f12804e;

        public long f12805f;

        public long f12806g;

        public a(hn.c<? super T> cVar, long j10, Fe.r<? super Throwable> rVar, Ue.i iVar, hn.b<? extends T> bVar) {
            this.f12801b = cVar;
            this.f12802c = iVar;
            this.f12803d = bVar;
            this.f12804e = rVar;
            this.f12805f = j10;
        }

        @Override
        public void a() {
            this.f12801b.a();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f12802c.f()) {
                    long j10 = this.f12806g;
                    if (j10 != 0) {
                        this.f12806g = 0L;
                        this.f12802c.k(j10);
                    }
                    this.f12803d.l(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12806g++;
            this.f12801b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f12802c.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            long j10 = this.f12805f;
            if (j10 != Long.MAX_VALUE) {
                this.f12805f = j10 - 1;
            }
            if (j10 == 0) {
                this.f12801b.onError(th2);
                return;
            }
            try {
                if (this.f12804e.test(th2)) {
                    b();
                } else {
                    this.f12801b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f12801b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public C2712g1(AbstractC2362l<T> abstractC2362l, long j10, Fe.r<? super Throwable> rVar) {
        super(abstractC2362l);
        this.f12798d = rVar;
        this.f12799e = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.i iVar = new Ue.i(false);
        cVar.j(iVar);
        new a(cVar, this.f12799e, this.f12798d, iVar, this.f12507c).b();
    }
}
