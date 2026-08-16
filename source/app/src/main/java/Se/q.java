package Se;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.J;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class q extends J implements De.c {

    public static final De.c f23163f = new g();

    public static final De.c f23164g = De.d.a();

    public final J f23165c;

    public final Ze.c<AbstractC2362l<AbstractC2353c>> f23166d;

    public De.c f23167e;

    public static final class a implements Fe.o<f, AbstractC2353c> {

        public final J.c f23168b;

        public final class C0558a extends AbstractC2353c {

            public final f f23169b;

            public C0558a(f fVar) {
                this.f23169b = fVar;
            }

            @Override
            public void K0(InterfaceC2356f interfaceC2356f) {
                interfaceC2356f.e(this.f23169b);
                this.f23169b.a(a.this.f23168b, interfaceC2356f);
            }
        }

        public a(J.c cVar) {
            this.f23168b = cVar;
        }

        @Override
        public AbstractC2353c apply(f fVar) {
            return new C0558a(fVar);
        }
    }

    public static class b extends f {

        public final Runnable f23171b;

        public final long f23172c;

        public final TimeUnit f23173d;

        public b(Runnable runnable, long j10, TimeUnit timeUnit) {
            this.f23171b = runnable;
            this.f23172c = j10;
            this.f23173d = timeUnit;
        }

        @Override
        public De.c b(J.c cVar, InterfaceC2356f interfaceC2356f) {
            return cVar.c(new d(this.f23171b, interfaceC2356f), this.f23172c, this.f23173d);
        }
    }

    public static class c extends f {

        public final Runnable f23174b;

        public c(Runnable runnable) {
            this.f23174b = runnable;
        }

        @Override
        public De.c b(J.c cVar, InterfaceC2356f interfaceC2356f) {
            return cVar.b(new d(this.f23174b, interfaceC2356f));
        }
    }

    public static class d implements Runnable {

        public final InterfaceC2356f f23175b;

        public final Runnable f23176c;

        public d(Runnable runnable, InterfaceC2356f interfaceC2356f) {
            this.f23176c = runnable;
            this.f23175b = interfaceC2356f;
        }

        @Override
        public void run() {
            try {
                this.f23176c.run();
            } finally {
                this.f23175b.a();
            }
        }
    }

    public static final class e extends J.c {

        public final AtomicBoolean f23177b = new AtomicBoolean();

        public final Ze.c<f> f23178c;

        public final J.c f23179d;

        public e(Ze.c<f> cVar, J.c cVar2) {
            this.f23178c = cVar;
            this.f23179d = cVar2;
        }

        @Override
        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            c cVar = new c(runnable);
            this.f23178c.h(cVar);
            return cVar;
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            b bVar = new b(runnable, j10, timeUnit);
            this.f23178c.h(bVar);
            return bVar;
        }

        @Override
        public boolean d() {
            return this.f23177b.get();
        }

        @Override
        public void dispose() {
            if (this.f23177b.compareAndSet(false, true)) {
                this.f23178c.a();
                this.f23179d.dispose();
            }
        }
    }

    public static abstract class f extends AtomicReference<De.c> implements De.c {
        public f() {
            super(q.f23163f);
        }

        public void a(J.c cVar, InterfaceC2356f interfaceC2356f) {
            De.c cVar2;
            De.c cVar3 = get();
            if (cVar3 != q.f23164g && cVar3 == (cVar2 = q.f23163f)) {
                De.c b10 = b(cVar, interfaceC2356f);
                if (compareAndSet(cVar2, b10)) {
                    return;
                }
                b10.dispose();
            }
        }

        public abstract De.c b(J.c cVar, InterfaceC2356f interfaceC2356f);

        @Override
        public boolean d() {
            return get().d();
        }

        @Override
        public void dispose() {
            De.c cVar;
            De.c cVar2 = q.f23164g;
            do {
                cVar = get();
                if (cVar == q.f23164g) {
                    return;
                }
            } while (!compareAndSet(cVar, cVar2));
            if (cVar != q.f23163f) {
                cVar.dispose();
            }
        }
    }

    public static final class g implements De.c {
        @Override
        public boolean d() {
            return false;
        }

        @Override
        public void dispose() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q(Fe.o<AbstractC2362l<AbstractC2362l<AbstractC2353c>>, AbstractC2353c> oVar, J j10) {
        this.f23165c = j10;
        Ze.c S82 = Ze.h.U8().S8();
        this.f23166d = S82;
        try {
            this.f23167e = ((AbstractC2353c) oVar.apply(S82)).H0();
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    @Ce.f
    public J.c c() {
        J.c c10 = this.f23165c.c();
        Ze.c<T> S82 = Ze.h.U8().S8();
        AbstractC2362l<AbstractC2353c> M32 = S82.M3(new a(c10));
        e eVar = new e(S82, c10);
        this.f23166d.h(M32);
        return eVar;
    }

    @Override
    public boolean d() {
        return this.f23167e.d();
    }

    @Override
    public void dispose() {
        this.f23167e.dispose();
    }
}
