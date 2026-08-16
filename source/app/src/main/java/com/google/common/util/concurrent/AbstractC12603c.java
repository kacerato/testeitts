package com.google.common.util.concurrent;

import com.google.common.util.concurrent.p0;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@A
@v2.c
public abstract class AbstractC12603c implements p0 {

    public final w2.Q<String> f67371a;

    public final p0 f67372b;

    public class a implements Executor {
        public a() {
        }

        @Override
        public void execute(Runnable runnable) {
            C12612g0.n((String) AbstractC12603c.this.f67371a.get(), runnable).start();
        }
    }

    public final class b extends AbstractC12609f {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    AbstractC12603c.this.m();
                    b.this.u();
                } catch (Throwable th2) {
                    b.this.t(th2);
                }
            }
        }

        public class RunnableC1019b implements Runnable {
            public RunnableC1019b() {
            }

            @Override
            public void run() {
                try {
                    AbstractC12603c.this.l();
                    b.this.v();
                } catch (Throwable th2) {
                    b.this.t(th2);
                }
            }
        }

        public b() {
        }

        @Override
        public final void m() {
            C12612g0.q(AbstractC12603c.this.j(), AbstractC12603c.this.f67371a).execute(new a());
        }

        @Override
        public final void n() {
            C12612g0.q(AbstractC12603c.this.j(), AbstractC12603c.this.f67371a).execute(new RunnableC1019b());
        }

        @Override
        public String toString() {
            return AbstractC12603c.this.toString();
        }

        public b(AbstractC12603c abstractC12603c, a aVar) {
            this();
        }
    }

    public final class C1020c implements w2.Q<String> {
        public C1020c() {
        }

        @Override
        public String get() {
            String k10 = AbstractC12603c.this.k();
            String valueOf = String.valueOf(AbstractC12603c.this.state());
            StringBuilder sb2 = new StringBuilder(String.valueOf(k10).length() + 1 + valueOf.length());
            sb2.append(k10);
            sb2.append(" ");
            sb2.append(valueOf);
            return sb2.toString();
        }

        public C1020c(AbstractC12603c abstractC12603c, a aVar) {
            this();
        }
    }

    public AbstractC12603c() {
        a aVar = null;
        this.f67371a = new C1020c(this, aVar);
        this.f67372b = new b(this, aVar);
    }

    @Override
    public final void a(p0.a aVar, Executor executor) {
        this.f67372b.a(aVar, executor);
    }

    @Override
    public final void b(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67372b.b(j10, timeUnit);
    }

    @Override
    public final void c(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67372b.c(j10, timeUnit);
    }

    @Override
    public final void d() {
        this.f67372b.d();
    }

    @Override
    public final Throwable e() {
        return this.f67372b.e();
    }

    @Override
    public final void f() {
        this.f67372b.f();
    }

    @Override
    @I2.a
    public final p0 g() {
        this.f67372b.g();
        return this;
    }

    @Override
    @I2.a
    public final p0 h() {
        this.f67372b.h();
        return this;
    }

    @Override
    public final boolean isRunning() {
        return this.f67372b.isRunning();
    }

    public Executor j() {
        return new a();
    }

    public String k() {
        return getClass().getSimpleName();
    }

    public abstract void l() throws Exception;

    public abstract void m() throws Exception;

    @Override
    public final p0.b state() {
        return this.f67372b.state();
    }

    public String toString() {
        String k10 = k();
        String valueOf = String.valueOf(state());
        StringBuilder sb2 = new StringBuilder(String.valueOf(k10).length() + 3 + valueOf.length());
        sb2.append(k10);
        sb2.append(" [");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }
}
