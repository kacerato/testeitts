package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@A
@v2.c
public final class B {

    public static final Logger f67216c = Logger.getLogger(B.class.getName());

    @CheckForNull
    @J2.a("this")
    public a f67217a;

    @J2.a("this")
    public boolean f67218b;

    public static final class a {

        public final Runnable f67219a;

        public final Executor f67220b;

        @CheckForNull
        public a f67221c;

        public a(Runnable runnable, Executor executor, @CheckForNull a aVar) {
            this.f67219a = runnable;
            this.f67220b = executor;
            this.f67221c = aVar;
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f67216c;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.log(level, sb2.toString(), (Throwable) e10);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        w2.H.F(runnable, "Runnable was null.");
        w2.H.F(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (this.f67218b) {
                    c(runnable, executor);
                } else {
                    this.f67217a = new a(runnable, executor, this.f67217a);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        synchronized (this) {
            try {
                if (this.f67218b) {
                    return;
                }
                this.f67218b = true;
                a aVar = this.f67217a;
                a aVar2 = null;
                this.f67217a = null;
                while (aVar != null) {
                    a aVar3 = aVar.f67221c;
                    aVar.f67221c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    c(aVar2.f67219a, aVar2.f67220b);
                    aVar2 = aVar2.f67221c;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
