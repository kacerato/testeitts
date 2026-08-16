package com.android.tools.r8.internal;

import b2.AbstractC3834c;
import com.google.common.util.concurrent.C12616i0;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.openjdk.tools.doclint.DocLint;
import u8.C15580b;

public abstract class D extends AbstractC6736cJ implements BT {

    public static final boolean f39397e;

    public static final Logger f39398f;

    public static final AbstractC9516t f39399g;

    public static final Object f39400h;

    public volatile Object f39401b;

    public volatile C10184x f39402c;

    public volatile C f39403d;

    static {
        boolean z10;
        AbstractC9516t c10518z;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z10 = false;
        }
        f39397e = z10;
        f39398f = Logger.getLogger(D.class.getName());
        Throwable th2 = null;
        try {
            c10518z = new B();
            e = null;
        } catch (Error | RuntimeException e10) {
            e = e10;
            try {
                c10518z = new C10351y(AtomicReferenceFieldUpdater.newUpdater(C.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C.class, C.class, C15580b.f118629u), AtomicReferenceFieldUpdater.newUpdater(D.class, C.class, "d"), AtomicReferenceFieldUpdater.newUpdater(D.class, C10184x.class, AbstractC3834c.f32824b1), AtomicReferenceFieldUpdater.newUpdater(D.class, Object.class, C15580b.f118629u));
            } catch (Error | RuntimeException e11) {
                th2 = e11;
                c10518z = new C10518z();
            }
        }
        f39399g = c10518z;
        if (th2 != null) {
            Logger logger = f39398f;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", e);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        f39400h = new Object();
    }

    public static Object b(D d10) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = d10.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public void a() {
    }

    @Override
    public boolean cancel(boolean z10) {
        C9683u c9683u;
        Object obj = this.f39401b;
        if (obj == null) {
            if (f39397e) {
                c9683u = new C9683u(z10, new CancellationException("Future.cancel() was called."));
            } else {
                c9683u = z10 ? C9683u.f52754c : C9683u.f52755d;
                Objects.requireNonNull(c9683u);
            }
            if (f39399g.a(this, obj, c9683u)) {
                a(this);
                return true;
            }
        }
        return false;
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f39401b;
            if (obj != null) {
                return a(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C c10 = this.f39403d;
                if (c10 != C.f39054c) {
                    C c11 = new C();
                    do {
                        AbstractC9516t abstractC9516t = f39399g;
                        abstractC9516t.a(c11, c10);
                        if (abstractC9516t.a(this, c10, c11)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, C12616i0.f67474a));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f39401b;
                                    if (obj2 != null) {
                                        return a(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    a(c11);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            a(c11);
                        } else {
                            c10 = this.f39403d;
                        }
                    } while (c10 != C.f39054c);
                }
                Object obj3 = this.f39401b;
                Objects.requireNonNull(obj3);
                return a(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.f39401b;
                if (obj4 != null) {
                    return a(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String d10 = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
            String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String a10 = AbstractC9349s.a(str, " (plus ");
                long j11 = -nanos;
                long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(convert);
                boolean z10 = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str2 = a10 + convert + " " + lowerCase;
                    if (z10) {
                        str2 = AbstractC9349s.a(str2, DocLint.SEPARATOR);
                    }
                    a10 = AbstractC9349s.a(str2, " ");
                }
                if (z10) {
                    a10 = a10 + nanos2 + " nanoseconds ";
                }
                str = AbstractC9349s.a(a10, "delay)");
            }
            if (isDone()) {
                throw new TimeoutException(AbstractC9349s.a(str, " but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + d10);
        }
        throw new InterruptedException();
    }

    @Override
    public boolean isCancelled() {
        return this.f39401b instanceof C9683u;
    }

    @Override
    public boolean isDone() {
        return this.f39401b != null;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb2.append(getClass().getSimpleName());
        } else {
            sb2.append(getClass().getName());
        }
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            a(sb2);
        } else {
            int length = sb2.length();
            sb2.append("PENDING");
            try {
                str = AbstractC8535n60.a(b());
            } catch (RuntimeException | StackOverflowError e10) {
                str = "Exception thrown from implementation: " + ((Object) e10.getClass());
            }
            if (str != null) {
                sb2.append(", info=[");
                sb2.append(str);
                sb2.append("]");
            }
            if (isDone()) {
                sb2.delete(length, sb2.length());
                a(sb2);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final void a(C c10) {
        c10.f39055a = null;
        while (true) {
            C c11 = this.f39403d;
            if (c11 == C.f39054c) {
                return;
            }
            C c12 = null;
            while (c11 != null) {
                C c13 = c11.f39056b;
                if (c11.f39055a != null) {
                    c12 = c11;
                } else if (c12 != null) {
                    c12.f39056b = c13;
                    if (c12.f39055a == null) {
                        break;
                    }
                } else if (!f39399g.a(this, c11, c13)) {
                    break;
                }
                c11 = c13;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String b() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public static Object a(Object obj) {
        if (!(obj instanceof C9683u)) {
            if (!(obj instanceof C10017w)) {
                if (obj == f39400h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((C10017w) obj).f53392a);
        }
        RuntimeException runtimeException = ((C9683u) obj).f52757b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(runtimeException);
        throw cancellationException;
    }

    public static void a(D d10) {
        d10.getClass();
        for (C b10 = f39399g.b(d10); b10 != null; b10 = b10.f39056b) {
            Thread thread = b10.f39055a;
            if (thread != null) {
                b10.f39055a = null;
                LockSupport.unpark(thread);
            }
        }
        d10.a();
        C10184x a10 = f39399g.a(d10);
        C10184x c10184x = null;
        while (a10 != null) {
            C10184x c10184x2 = a10.f53656a;
            a10.f53656a = c10184x;
            c10184x = a10;
            a10 = c10184x2;
        }
        if (c10184x != null) {
            throw null;
        }
    }

    public final void a(StringBuilder sb2) {
        try {
            Object b10 = b(this);
            sb2.append("SUCCESS, result=[");
            a(sb2, b10);
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append((Object) e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append((Object) e11.getCause());
            sb2.append("]");
        }
    }

    public final void a(StringBuilder sb2, Object obj) {
        if (obj == null) {
            sb2.append("null");
        } else {
            if (obj == this) {
                sb2.append("this future");
                return;
            }
            sb2.append(obj.getClass().getName());
            sb2.append("@");
            sb2.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    @Override
    public Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f39401b;
            if (obj2 != null) {
                return a(obj2);
            }
            C c10 = this.f39403d;
            if (c10 != C.f39054c) {
                C c11 = new C();
                do {
                    AbstractC9516t abstractC9516t = f39399g;
                    abstractC9516t.a(c11, c10);
                    if (abstractC9516t.a(this, c10, c11)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f39401b;
                            } else {
                                a(c11);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return a(obj);
                    }
                    c10 = this.f39403d;
                } while (c10 != C.f39054c);
            }
            Object obj3 = this.f39401b;
            Objects.requireNonNull(obj3);
            return a(obj3);
        }
        throw new InterruptedException();
    }
}
