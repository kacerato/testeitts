package U2;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.apache.commons.math3.geometry.VectorFormat;

public final class M implements Executor {

    public static final Logger f25686g = Logger.getLogger(M.class.getName());

    public final Executor f25687b;

    @GuardedBy("queue")
    public final Deque<Runnable> f25688c = new ArrayDeque();

    @GuardedBy("queue")
    public c f25689d = c.IDLE;

    @GuardedBy("queue")
    public long f25690e = 0;

    public final b f25691f = new b(this, null);

    public class a implements Runnable {

        public final Runnable f25692b;

        public a(Runnable runnable) {
            this.f25692b = runnable;
        }

        @Override
        public void run() {
            this.f25692b.run();
        }

        public String toString() {
            return this.f25692b.toString();
        }
    }

    public final class b implements Runnable {

        @CheckForNull
        public Runnable f25694b;

        public b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        
            r8.f25694b.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0080, code lost:
        
            r8.f25694b = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        
            U2.M.f25686g.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Object) r8.f25694b), (java.lang.Throwable) r3);
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
                    synchronized (M.this.f25688c) {
                        if (!z10) {
                            c cVar = M.this.f25689d;
                            c cVar2 = c.RUNNING;
                            if (cVar != cVar2) {
                                M.d(M.this);
                                M.this.f25689d = cVar2;
                                z10 = true;
                            }
                        }
                        Runnable runnable = (Runnable) M.this.f25688c.poll();
                        this.f25694b = runnable;
                        if (runnable == null) {
                            M.this.f25689d = c.IDLE;
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
                synchronized (M.this.f25688c) {
                    M.this.f25689d = c.IDLE;
                    throw e10;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f25694b;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + ((Object) runnable) + VectorFormat.DEFAULT_SUFFIX;
            }
            return "SequentialExecutorWorker{state=" + ((Object) M.this.f25689d) + VectorFormat.DEFAULT_SUFFIX;
        }

        public b(M m10, a aVar) {
            this();
        }
    }

    public enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public M(Executor executor) {
        this.f25687b = (Executor) G0.A.r(executor);
    }

    public static long d(M m10) {
        long j10 = m10.f25690e;
        m10.f25690e = 1 + j10;
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
        G0.A.r(runnable);
        synchronized (this.f25688c) {
            c cVar2 = this.f25689d;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j10 = this.f25690e;
                a aVar = new a(runnable);
                this.f25688c.add(aVar);
                c cVar3 = c.QUEUING;
                this.f25689d = cVar3;
                try {
                    this.f25687b.execute(this.f25691f);
                    if (this.f25689d != cVar3) {
                        return;
                    }
                    synchronized (this.f25688c) {
                        try {
                            if (this.f25690e == j10 && this.f25689d == cVar3) {
                                this.f25689d = cVar;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f25688c) {
                        try {
                            c cVar4 = this.f25689d;
                            if (cVar4 != c.IDLE) {
                                if (cVar4 == c.QUEUING) {
                                }
                                z10 = false;
                                if ((e10 instanceof RejectedExecutionException) || z10) {
                                    throw e10;
                                }
                            }
                            if (this.f25688c.removeLastOccurrence(aVar)) {
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
            this.f25688c.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + ((Object) this.f25687b) + VectorFormat.DEFAULT_SUFFIX;
    }
}
