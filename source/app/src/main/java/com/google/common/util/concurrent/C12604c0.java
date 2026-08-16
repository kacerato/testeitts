package com.google.common.util.concurrent;

import G0.E;
import com.google.common.collect.C12530i2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@A
@v2.c
public final class C12604c0<L> {

    public static final Logger f67378b = Logger.getLogger(C12604c0.class.getName());

    public final List<b<L>> f67379a = Collections.synchronizedList(new ArrayList());

    public interface a<L> {
        void call(L l10);
    }

    public static final class b<L> implements Runnable {

        public final L f67380b;

        public final Executor f67381c;

        @J2.a("this")
        public final Queue<a<L>> f67382d = C12530i2.d();

        @J2.a("this")
        public final Queue<Object> f67383e = C12530i2.d();

        @J2.a("this")
        public boolean f67384f;

        public b(L l10, Executor executor) {
            this.f67380b = (L) w2.H.E(l10);
            this.f67381c = (Executor) w2.H.E(executor);
        }

        public synchronized void a(a<L> aVar, Object obj) {
            this.f67382d.add(aVar);
            this.f67383e.add(obj);
        }

        public void b() {
            boolean z10;
            synchronized (this) {
                try {
                    if (this.f67384f) {
                        z10 = false;
                    } else {
                        z10 = true;
                        this.f67384f = true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z10) {
                try {
                    this.f67381c.execute(this);
                } catch (RuntimeException e10) {
                    synchronized (this) {
                        this.f67384f = false;
                        Logger logger = C12604c0.f67378b;
                        Level level = Level.SEVERE;
                        String valueOf = String.valueOf(this.f67380b);
                        String valueOf2 = String.valueOf(this.f67381c);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 42 + valueOf2.length());
                        sb2.append("Exception while running callbacks for ");
                        sb2.append(valueOf);
                        sb2.append(" on ");
                        sb2.append(valueOf2);
                        logger.log(level, sb2.toString(), (Throwable) e10);
                        throw e10;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
        
            r2.call(r10.f67380b);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
        
            r4 = com.google.common.util.concurrent.C12604c0.f67378b;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r10.f67380b);
            r3 = java.lang.String.valueOf(r3);
            r8 = new java.lang.StringBuilder((r6.length() + 37) + r3.length());
            r8.append("Exception while executing callback: ");
            r8.append(r6);
            r8.append(" ");
            r8.append(r3);
            r4.log(r5, r8.toString(), (java.lang.Throwable) r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z10;
            Throwable th2;
            while (true) {
                boolean z11 = true;
                try {
                    synchronized (this) {
                        try {
                            w2.H.g0(this.f67384f);
                            a<L> poll = this.f67382d.poll();
                            Object poll2 = this.f67383e.poll();
                            if (poll == null) {
                                this.f67384f = false;
                                try {
                                    return;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    z10 = false;
                                    while (true) {
                                        try {
                                            break;
                                        } catch (Throwable th4) {
                                            th2 = th4;
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        } catch (Throwable th5) {
                            z10 = true;
                            th2 = th5;
                        }
                    }
                    try {
                        break;
                        throw th2;
                    } catch (Throwable th6) {
                        boolean z12 = z10;
                        th = th6;
                        z11 = z12;
                        if (z11) {
                            synchronized (this) {
                                this.f67384f = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    if (z11) {
                    }
                    throw th;
                }
            }
        }
    }

    public void b(L l10, Executor executor) {
        w2.H.F(l10, E.a.f7280a);
        w2.H.F(executor, "executor");
        this.f67379a.add(new b<>(l10, executor));
    }

    public void c() {
        for (int i10 = 0; i10 < this.f67379a.size(); i10++) {
            this.f67379a.get(i10).b();
        }
    }

    public void d(a<L> aVar) {
        f(aVar, aVar);
    }

    public void e(a<L> aVar, String str) {
        f(aVar, str);
    }

    public final void f(a<L> aVar, Object obj) {
        w2.H.F(aVar, "event");
        w2.H.F(obj, "label");
        synchronized (this.f67379a) {
            try {
                Iterator<b<L>> it = this.f67379a.iterator();
                while (it.hasNext()) {
                    it.next().a(aVar, obj);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
