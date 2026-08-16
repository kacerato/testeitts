package Se;

import Be.J;
import Se.o;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends J implements o {

    public static final C0556b f23055e;

    public static final String f23056f = "RxComputationThreadPool";

    public static final k f23057g;

    public static final String f23058h = "rx2.computation-threads";

    public static final int f23059i = l(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f23058h, 0).intValue());

    public static final c f23060j;

    public static final String f23061k = "rx2.computation-priority";

    public final ThreadFactory f23062c;

    public final AtomicReference<C0556b> f23063d;

    public static final class a extends J.c {

        public final Ge.f f23064b;

        public final De.b f23065c;

        public final Ge.f f23066d;

        public final c f23067e;

        public volatile boolean f23068f;

        public a(c cVar) {
            this.f23067e = cVar;
            Ge.f fVar = new Ge.f();
            this.f23064b = fVar;
            De.b bVar = new De.b();
            this.f23065c = bVar;
            Ge.f fVar2 = new Ge.f();
            this.f23066d = fVar2;
            fVar2.a(fVar);
            fVar2.a(bVar);
        }

        @Override
        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            return this.f23068f ? Ge.e.INSTANCE : this.f23067e.f(runnable, 0L, TimeUnit.MILLISECONDS, this.f23064b);
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            return this.f23068f ? Ge.e.INSTANCE : this.f23067e.f(runnable, j10, timeUnit, this.f23065c);
        }

        @Override
        public boolean d() {
            return this.f23068f;
        }

        @Override
        public void dispose() {
            if (this.f23068f) {
                return;
            }
            this.f23068f = true;
            this.f23066d.dispose();
        }
    }

    public static final class C0556b implements o {

        public final int f23069b;

        public final c[] f23070c;

        public long f23071d;

        public C0556b(int i10, ThreadFactory threadFactory) {
            this.f23069b = i10;
            this.f23070c = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                this.f23070c[i11] = new c(threadFactory);
            }
        }

        @Override
        public void a(int i10, o.a aVar) {
            int i11 = this.f23069b;
            if (i11 == 0) {
                for (int i12 = 0; i12 < i10; i12++) {
                    aVar.a(i12, b.f23060j);
                }
                return;
            }
            int i13 = ((int) this.f23071d) % i11;
            for (int i14 = 0; i14 < i10; i14++) {
                aVar.a(i14, new a(this.f23070c[i13]));
                i13++;
                if (i13 == i11) {
                    i13 = 0;
                }
            }
            this.f23071d = i13;
        }

        public c b() {
            int i10 = this.f23069b;
            if (i10 == 0) {
                return b.f23060j;
            }
            c[] cVarArr = this.f23070c;
            long j10 = this.f23071d;
            this.f23071d = 1 + j10;
            return cVarArr[(int) (j10 % i10)];
        }

        public void c() {
            for (c cVar : this.f23070c) {
                cVar.dispose();
            }
        }
    }

    public static final class c extends i {
        public c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new k("RxComputationShutdown"));
        f23060j = cVar;
        cVar.dispose();
        k kVar = new k(f23056f, Math.max(1, Math.min(10, Integer.getInteger(f23061k, 5).intValue())), true);
        f23057g = kVar;
        C0556b c0556b = new C0556b(0, kVar);
        f23055e = c0556b;
        c0556b.c();
    }

    public b() {
        this(f23057g);
    }

    public static int l(int i10, int i11) {
        return (i11 <= 0 || i11 > i10) ? i10 : i11;
    }

    @Override
    public void a(int i10, o.a aVar) {
        He.b.h(i10, "number > 0 required");
        this.f23063d.get().a(i10, aVar);
    }

    @Override
    @Ce.f
    public J.c c() {
        return new a(this.f23063d.get().b());
    }

    @Override
    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f23063d.get().b().h(runnable, j10, timeUnit);
    }

    @Override
    @Ce.f
    public De.c h(@Ce.f Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.f23063d.get().b().i(runnable, j10, j11, timeUnit);
    }

    @Override
    public void i() {
        C0556b c0556b;
        C0556b c0556b2;
        do {
            c0556b = this.f23063d.get();
            c0556b2 = f23055e;
            if (c0556b == c0556b2) {
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f23063d, c0556b, c0556b2));
        c0556b.c();
    }

    @Override
    public void j() {
        C0556b c0556b = new C0556b(f23059i, this.f23062c);
        if (androidx.lifecycle.c.a(this.f23063d, f23055e, c0556b)) {
            return;
        }
        c0556b.c();
    }

    public b(ThreadFactory threadFactory) {
        this.f23062c = threadFactory;
        this.f23063d = new AtomicReference<>(f23055e);
        j();
    }
}
