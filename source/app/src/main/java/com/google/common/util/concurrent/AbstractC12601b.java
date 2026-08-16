package com.google.common.util.concurrent;

import com.google.common.util.concurrent.p0;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import v2.InterfaceC15800a;

@A
@v2.c
public abstract class AbstractC12601b implements p0 {

    public static final Logger f67365b = Logger.getLogger(AbstractC12601b.class.getName());

    public final p0 f67366a = new a();

    public class a extends AbstractC12609f {

        public class C1016a implements w2.Q<String> {
            public C1016a() {
            }

            @Override
            public String get() {
                return AbstractC12601b.this.l();
            }
        }

        public class RunnableC1017b implements Runnable {
            public RunnableC1017b() {
            }

            @Override
            public void run() {
                try {
                    AbstractC12601b.this.n();
                    a.this.u();
                    if (a.this.isRunning()) {
                        try {
                            AbstractC12601b.this.k();
                        } catch (Throwable th2) {
                            try {
                                AbstractC12601b.this.m();
                            } catch (Exception e10) {
                                AbstractC12601b.f67365b.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e10);
                            }
                            a.this.t(th2);
                            return;
                        }
                    }
                    AbstractC12601b.this.m();
                    a.this.v();
                } catch (Throwable th3) {
                    a.this.t(th3);
                }
            }
        }

        public a() {
        }

        @Override
        public final void m() {
            C12612g0.q(AbstractC12601b.this.j(), new C1016a()).execute(new RunnableC1017b());
        }

        @Override
        public void n() {
            AbstractC12601b.this.o();
        }

        @Override
        public String toString() {
            return AbstractC12601b.this.toString();
        }
    }

    public class ExecutorC1018b implements Executor {
        public ExecutorC1018b() {
        }

        @Override
        public void execute(Runnable runnable) {
            C12612g0.n(AbstractC12601b.this.l(), runnable).start();
        }
    }

    @Override
    public final void a(p0.a aVar, Executor executor) {
        this.f67366a.a(aVar, executor);
    }

    @Override
    public final void b(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67366a.b(j10, timeUnit);
    }

    @Override
    public final void c(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67366a.c(j10, timeUnit);
    }

    @Override
    public final void d() {
        this.f67366a.d();
    }

    @Override
    public final Throwable e() {
        return this.f67366a.e();
    }

    @Override
    public final void f() {
        this.f67366a.f();
    }

    @Override
    @I2.a
    public final p0 g() {
        this.f67366a.g();
        return this;
    }

    @Override
    @I2.a
    public final p0 h() {
        this.f67366a.h();
        return this;
    }

    @Override
    public final boolean isRunning() {
        return this.f67366a.isRunning();
    }

    public Executor j() {
        return new ExecutorC1018b();
    }

    public abstract void k() throws Exception;

    public String l() {
        return getClass().getSimpleName();
    }

    public void m() throws Exception {
    }

    public void n() throws Exception {
    }

    @InterfaceC15800a
    public void o() {
    }

    @Override
    public final p0.b state() {
        return this.f67366a.state();
    }

    public String toString() {
        String l10 = l();
        String valueOf = String.valueOf(state());
        StringBuilder sb2 = new StringBuilder(String.valueOf(l10).length() + 3 + valueOf.length());
        sb2.append(l10);
        sb2.append(" [");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }
}
