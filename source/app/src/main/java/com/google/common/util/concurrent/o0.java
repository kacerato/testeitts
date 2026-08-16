package com.google.common.util.concurrent;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.apache.commons.math3.geometry.VectorFormat;

@A
@v2.c
public final class o0 implements Executor {

    public static final Logger f67493g = Logger.getLogger(o0.class.getName());

    public final Executor f67494b;

    @J2.a("queue")
    public final Deque<Runnable> f67495c = new ArrayDeque();

    @J2.a("queue")
    public c f67496d = c.IDLE;

    @J2.a("queue")
    public long f67497e = 0;

    @q3.h
    public final b f67498f = new b(this, null);

    public class a implements Runnable {

        public final Runnable f67499b;

        public a(o0 o0Var, Runnable runnable) {
            this.f67499b = runnable;
        }

        @Override
        public void run() {
            this.f67499b.run();
        }

        public String toString() {
            return this.f67499b.toString();
        }
    }

    public final class b implements Runnable {

        @CheckForNull
        public Runnable f67500b;

        public b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        
            r9.f67500b.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x008a, code lost:
        
            r9.f67500b = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        
            r4 = com.google.common.util.concurrent.o0.f67493g;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r9.f67500b);
            r8 = new java.lang.StringBuilder(r6.length() + 35);
            r8.append("Exception while executing runnable ");
            r8.append(r6);
            r4.log(r5, r8.toString(), (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() {
            boolean z10 = false;
            boolean z11 = false;
            while (true) {
                try {
                    synchronized (o0.this.f67495c) {
                        if (!z10) {
                            c cVar = o0.this.f67496d;
                            c cVar2 = c.RUNNING;
                            if (cVar != cVar2) {
                                o0.d(o0.this);
                                o0.this.f67496d = cVar2;
                                z10 = true;
                            }
                        }
                        Runnable runnable = (Runnable) o0.this.f67495c.poll();
                        this.f67500b = runnable;
                        if (runnable == null) {
                            o0.this.f67496d = c.IDLE;
                        }
                    }
                    if (z11) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } finally {
                    if (z11) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override
        public void run() {
            try {
                a();
            } catch (Error e10) {
                synchronized (o0.this.f67495c) {
                    o0.this.f67496d = c.IDLE;
                    throw e10;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f67500b;
            if (runnable != null) {
                String valueOf = String.valueOf(runnable);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 34);
                sb2.append("SequentialExecutorWorker{running=");
                sb2.append(valueOf);
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            String valueOf2 = String.valueOf(o0.this.f67496d);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 32);
            sb3.append("SequentialExecutorWorker{state=");
            sb3.append(valueOf2);
            sb3.append(VectorFormat.DEFAULT_SUFFIX);
            return sb3.toString();
        }

        public b(o0 o0Var, a aVar) {
            this();
        }
    }

    public enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public o0(Executor executor) {
        this.f67494b = (Executor) w2.H.E(executor);
    }

    public static long d(o0 o0Var) {
        long j10 = o0Var.f67497e;
        o0Var.f67497e = 1 + j10;
        return j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0066 A[ADDED_TO_REGION] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void execute(Runnable runnable) {
        c cVar;
        boolean z10;
        w2.H.E(runnable);
        synchronized (this.f67495c) {
            c cVar2 = this.f67496d;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j10 = this.f67497e;
                a aVar = new a(this, runnable);
                this.f67495c.add(aVar);
                c cVar3 = c.QUEUING;
                this.f67496d = cVar3;
                try {
                    this.f67494b.execute(this.f67498f);
                    if (this.f67496d != cVar3) {
                        return;
                    }
                    synchronized (this.f67495c) {
                        try {
                            if (this.f67497e == j10 && this.f67496d == cVar3) {
                                this.f67496d = cVar;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f67495c) {
                        try {
                            c cVar4 = this.f67496d;
                            if (cVar4 != c.IDLE) {
                                if (cVar4 == c.QUEUING) {
                                }
                                z10 = false;
                                if ((e10 instanceof RejectedExecutionException) || z10) {
                                    throw e10;
                                }
                            }
                            if (this.f67495c.removeLastOccurrence(aVar)) {
                                z10 = true;
                                if (e10 instanceof RejectedExecutionException) {
                                }
                                throw e10;
                            }
                            z10 = false;
                            if (e10 instanceof RejectedExecutionException) {
                            }
                            throw e10;
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.f67495c.add(runnable);
        }
    }

    public String toString() {
        int identityHashCode = System.identityHashCode(this);
        String valueOf = String.valueOf(this.f67494b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
        sb2.append("SequentialExecutor@");
        sb2.append(identityHashCode);
        sb2.append("{");
        sb2.append(valueOf);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
