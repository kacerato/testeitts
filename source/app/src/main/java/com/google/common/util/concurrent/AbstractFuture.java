package com.google.common.util.concurrent;

import b2.AbstractC3834c;
import com.android.tools.r8.internal.C5135Ez0;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.openjdk.tools.doclint.DocLint;
import q3.f;
import sun.misc.Unsafe;
import u8.C15580b;
import v2.InterfaceC15800a;

@A
@q3.f(f.a.FULL)
@v2.b(emulated = true)
public abstract class AbstractFuture<V> extends G2.a implements Z<V> {

    public static final boolean f67182e;

    public static final Logger f67183f;

    public static final long f67184g = 1000;

    public static final b f67185h;

    public static final Object f67186i;

    @CheckForNull
    public volatile Object f67187b;

    @CheckForNull
    public volatile d f67188c;

    @CheckForNull
    public volatile k f67189d;

    public static final class Failure {

        public static final Failure f67190b = new Failure(new Throwable("Failure occurred while trying to finish a future.") {
            @Override
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        public final Throwable f67191a;

        public Failure(Throwable th2) {
            this.f67191a = (Throwable) w2.H.E(th2);
        }
    }

    public static abstract class b {
        public b() {
        }

        public abstract boolean a(AbstractFuture<?> abstractFuture, @CheckForNull d dVar, d dVar2);

        public abstract boolean b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2);

        public abstract boolean c(AbstractFuture<?> abstractFuture, @CheckForNull k kVar, @CheckForNull k kVar2);

        public abstract d d(AbstractFuture<?> abstractFuture, d dVar);

        public abstract k e(AbstractFuture<?> abstractFuture, k kVar);

        public abstract void f(k kVar, @CheckForNull k kVar2);

        public abstract void g(k kVar, Thread thread);
    }

    public static final class c {

        @CheckForNull
        public static final c f67192c;

        @CheckForNull
        public static final c f67193d;

        public final boolean f67194a;

        @CheckForNull
        public final Throwable f67195b;

        static {
            if (AbstractFuture.f67182e) {
                f67193d = null;
                f67192c = null;
            } else {
                f67193d = new c(false, null);
                f67192c = new c(true, null);
            }
        }

        public c(boolean z10, @CheckForNull Throwable th2) {
            this.f67194a = z10;
            this.f67195b = th2;
        }
    }

    public static final class e extends b {

        public final AtomicReferenceFieldUpdater<k, Thread> f67200a;

        public final AtomicReferenceFieldUpdater<k, k> f67201b;

        public final AtomicReferenceFieldUpdater<AbstractFuture, k> f67202c;

        public final AtomicReferenceFieldUpdater<AbstractFuture, d> f67203d;

        public final AtomicReferenceFieldUpdater<AbstractFuture, Object> f67204e;

        public e(AtomicReferenceFieldUpdater<k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<k, k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f67200a = atomicReferenceFieldUpdater;
            this.f67201b = atomicReferenceFieldUpdater2;
            this.f67202c = atomicReferenceFieldUpdater3;
            this.f67203d = atomicReferenceFieldUpdater4;
            this.f67204e = atomicReferenceFieldUpdater5;
        }

        @Override
        public boolean a(AbstractFuture<?> abstractFuture, @CheckForNull d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f67203d, abstractFuture, dVar, dVar2);
        }

        @Override
        public boolean b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f67204e, abstractFuture, obj, obj2);
        }

        @Override
        public boolean c(AbstractFuture<?> abstractFuture, @CheckForNull k kVar, @CheckForNull k kVar2) {
            return androidx.concurrent.futures.a.a(this.f67202c, abstractFuture, kVar, kVar2);
        }

        @Override
        public d d(AbstractFuture<?> abstractFuture, d dVar) {
            return this.f67203d.getAndSet(abstractFuture, dVar);
        }

        @Override
        public k e(AbstractFuture<?> abstractFuture, k kVar) {
            return this.f67202c.getAndSet(abstractFuture, kVar);
        }

        @Override
        public void f(k kVar, @CheckForNull k kVar2) {
            this.f67201b.lazySet(kVar, kVar2);
        }

        @Override
        public void g(k kVar, Thread thread) {
            this.f67200a.lazySet(kVar, thread);
        }
    }

    public static final class f<V> implements Runnable {

        public final AbstractFuture<V> f67205b;

        public final Z<? extends V> f67206c;

        public f(AbstractFuture<V> abstractFuture, Z<? extends V> z10) {
            this.f67205b = abstractFuture;
            this.f67206c = z10;
        }

        @Override
        public void run() {
            if (this.f67205b.f67187b != this) {
                return;
            }
            if (AbstractFuture.f67185h.b(this.f67205b, this, AbstractFuture.v(this.f67206c))) {
                AbstractFuture.s(this.f67205b);
            }
        }
    }

    public static final class g extends b {
        public g() {
            super();
        }

        @Override
        public boolean a(AbstractFuture<?> abstractFuture, @CheckForNull d dVar, d dVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f67188c != dVar) {
                        return false;
                    }
                    abstractFuture.f67188c = dVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public boolean b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f67187b != obj) {
                        return false;
                    }
                    abstractFuture.f67187b = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public boolean c(AbstractFuture<?> abstractFuture, @CheckForNull k kVar, @CheckForNull k kVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f67189d != kVar) {
                        return false;
                    }
                    abstractFuture.f67189d = kVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public d d(AbstractFuture<?> abstractFuture, d dVar) {
            d dVar2;
            synchronized (abstractFuture) {
                try {
                    dVar2 = abstractFuture.f67188c;
                    if (dVar2 != dVar) {
                        abstractFuture.f67188c = dVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return dVar2;
        }

        @Override
        public k e(AbstractFuture<?> abstractFuture, k kVar) {
            k kVar2;
            synchronized (abstractFuture) {
                try {
                    kVar2 = abstractFuture.f67189d;
                    if (kVar2 != kVar) {
                        abstractFuture.f67189d = kVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return kVar2;
        }

        @Override
        public void f(k kVar, @CheckForNull k kVar2) {
            kVar.f67215b = kVar2;
        }

        @Override
        public void g(k kVar, Thread thread) {
            kVar.f67214a = thread;
        }
    }

    public interface h<V> extends Z<V> {
    }

    public static abstract class i<V> extends AbstractFuture<V> implements h<V> {
        @Override
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override
        @I2.a
        public final boolean cancel(boolean z10) {
            return super.cancel(z10);
        }

        @Override
        @I2.a
        @InterfaceC12618j0
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        @I2.a
        @InterfaceC12618j0
        public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j10, timeUnit);
        }
    }

    public static final class j extends b {

        public static final Unsafe f67207a;

        public static final long f67208b;

        public static final long f67209c;

        public static final long f67210d;

        public static final long f67211e;

        public static final long f67212f;

        public class a implements PrivilegedExceptionAction<Unsafe> {
            @Override
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                f67209c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("d"));
                f67208b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(AbstractC3834c.f32824b1));
                f67210d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(C15580b.f118629u));
                f67211e = unsafe.objectFieldOffset(k.class.getDeclaredField("a"));
                f67212f = unsafe.objectFieldOffset(k.class.getDeclaredField(C15580b.f118629u));
                f67207a = unsafe;
            } catch (Exception e11) {
                w2.T.w(e11);
                throw new RuntimeException(e11);
            }
        }

        public j() {
            super();
        }

        @Override
        public boolean a(AbstractFuture<?> abstractFuture, @CheckForNull d dVar, d dVar2) {
            return C5135Ez0.a(f67207a, abstractFuture, f67208b, dVar, dVar2);
        }

        @Override
        public boolean b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            return C5135Ez0.a(f67207a, abstractFuture, f67210d, obj, obj2);
        }

        @Override
        public boolean c(AbstractFuture<?> abstractFuture, @CheckForNull k kVar, @CheckForNull k kVar2) {
            return C5135Ez0.a(f67207a, abstractFuture, f67209c, kVar, kVar2);
        }

        @Override
        public d d(AbstractFuture<?> abstractFuture, d dVar) {
            d dVar2;
            do {
                dVar2 = abstractFuture.f67188c;
                if (dVar == dVar2) {
                    return dVar2;
                }
            } while (!a(abstractFuture, dVar2, dVar));
            return dVar2;
        }

        @Override
        public k e(AbstractFuture<?> abstractFuture, k kVar) {
            k kVar2;
            do {
                kVar2 = abstractFuture.f67189d;
                if (kVar == kVar2) {
                    return kVar2;
                }
            } while (!c(abstractFuture, kVar2, kVar));
            return kVar2;
        }

        @Override
        public void f(k kVar, @CheckForNull k kVar2) {
            f67207a.putObject(kVar, f67212f, kVar2);
        }

        @Override
        public void g(k kVar, Thread thread) {
            f67207a.putObject(kVar, f67211e, thread);
        }
    }

    public static final class k {

        public static final k f67213c = new k(false);

        @CheckForNull
        public volatile Thread f67214a;

        @CheckForNull
        public volatile k f67215b;

        public k(boolean z10) {
        }

        public void a(@CheckForNull k kVar) {
            AbstractFuture.f67185h.f(this, kVar);
        }

        public void b() {
            Thread thread = this.f67214a;
            if (thread != null) {
                this.f67214a = null;
                LockSupport.unpark(thread);
            }
        }

        public k() {
            AbstractFuture.f67185h.g(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.common.util.concurrent.AbstractFuture$e] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.common.util.concurrent.AbstractFuture$a] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.common.util.concurrent.AbstractFuture$j] */
    static {
        boolean z10;
        g gVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z10 = false;
        }
        f67182e = z10;
        f67183f = Logger.getLogger(AbstractFuture.class.getName());
        ?? r32 = 0;
        r32 = 0;
        try {
            gVar = new j();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            try {
                gVar = new e(AtomicReferenceFieldUpdater.newUpdater(k.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(k.class, k.class, C15580b.f118629u), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, k.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, AbstractC3834c.f32824b1), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, C15580b.f118629u));
            } catch (Throwable th3) {
                gVar = new g();
                r32 = th3;
            }
        }
        f67185h = gVar;
        if (r32 != 0) {
            ?? r02 = f67183f;
            Level level = Level.SEVERE;
            r02.log(level, "UnsafeAtomicHelper is broken!", th);
            r02.log(level, "SafeAtomicHelper is broken!", r32);
        }
        f67186i = new Object();
    }

    public static CancellationException q(String str, @CheckForNull Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    public static void s(AbstractFuture<?> abstractFuture) {
        d dVar = null;
        while (true) {
            abstractFuture.A();
            abstractFuture.n();
            d r10 = abstractFuture.r(dVar);
            while (r10 != null) {
                dVar = r10.f67199c;
                Runnable runnable = r10.f67197a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof f) {
                    f fVar = (f) runnable2;
                    abstractFuture = fVar.f67205b;
                    if (abstractFuture.f67187b == fVar) {
                        if (f67185h.b(abstractFuture, fVar, v(fVar.f67206c))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = r10.f67198b;
                    Objects.requireNonNull(executor);
                    t(runnable2, executor);
                }
                r10 = dVar;
            }
            return;
        }
    }

    public static void t(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f67183f;
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

    /* JADX WARN: Multi-variable type inference failed */
    public static Object v(Z<?> z10) {
        Throwable a10;
        if (z10 instanceof h) {
            Object obj = ((AbstractFuture) z10).f67187b;
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.f67194a) {
                    obj = cVar.f67195b != null ? new c(false, cVar.f67195b) : c.f67193d;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        }
        if ((z10 instanceof G2.a) && (a10 = G2.b.a((G2.a) z10)) != null) {
            return new Failure(a10);
        }
        boolean isCancelled = z10.isCancelled();
        if ((!f67182e) && isCancelled) {
            c cVar2 = c.f67193d;
            Objects.requireNonNull(cVar2);
            return cVar2;
        }
        try {
            Object w10 = w(z10);
            if (!isCancelled) {
                return w10 == null ? f67186i : w10;
            }
            String valueOf = String.valueOf(z10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 84);
            sb2.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb2.append(valueOf);
            return new c(false, new IllegalArgumentException(sb2.toString()));
        } catch (CancellationException e10) {
            if (isCancelled) {
                return new c(false, e10);
            }
            String valueOf2 = String.valueOf(z10);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 77);
            sb3.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb3.append(valueOf2);
            return new Failure(new IllegalArgumentException(sb3.toString(), e10));
        } catch (ExecutionException e11) {
            if (!isCancelled) {
                return new Failure(e11.getCause());
            }
            String valueOf3 = String.valueOf(z10);
            StringBuilder sb4 = new StringBuilder(valueOf3.length() + 84);
            sb4.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb4.append(valueOf3);
            return new c(false, new IllegalArgumentException(sb4.toString(), e11));
        } catch (Throwable th2) {
            return new Failure(th2);
        }
    }

    @InterfaceC12618j0
    private static <V> V w(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
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
        return v10;
    }

    public final void A() {
        for (k e10 = f67185h.e(this, k.f67213c); e10 != null; e10 = e10.f67215b) {
            e10.b();
        }
    }

    public final void B(k kVar) {
        kVar.f67214a = null;
        while (true) {
            k kVar2 = this.f67189d;
            if (kVar2 == k.f67213c) {
                return;
            }
            k kVar3 = null;
            while (kVar2 != null) {
                k kVar4 = kVar2.f67215b;
                if (kVar2.f67214a != null) {
                    kVar3 = kVar2;
                } else if (kVar3 != null) {
                    kVar3.f67215b = kVar4;
                    if (kVar3.f67214a == null) {
                        break;
                    }
                } else if (!f67185h.c(this, kVar2, kVar4)) {
                    break;
                }
                kVar2 = kVar4;
            }
            return;
        }
    }

    @I2.a
    public boolean C(@InterfaceC12618j0 V v10) {
        if (v10 == null) {
            v10 = (V) f67186i;
        }
        if (!f67185h.b(this, null, v10)) {
            return false;
        }
        s(this);
        return true;
    }

    @I2.a
    public boolean D(Throwable th2) {
        if (!f67185h.b(this, null, new Failure((Throwable) w2.H.E(th2)))) {
            return false;
        }
        s(this);
        return true;
    }

    @I2.a
    public boolean E(Z<? extends V> z10) {
        Failure failure;
        w2.H.E(z10);
        Object obj = this.f67187b;
        if (obj == null) {
            if (z10.isDone()) {
                if (!f67185h.b(this, null, v(z10))) {
                    return false;
                }
                s(this);
                return true;
            }
            f fVar = new f(this, z10);
            if (f67185h.b(this, null, fVar)) {
                try {
                    z10.addListener(fVar, EnumC12636z.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        failure = new Failure(th2);
                    } catch (Throwable unused) {
                        failure = Failure.f67190b;
                    }
                    f67185h.b(this, fVar, failure);
                }
                return true;
            }
            obj = this.f67187b;
        }
        if (obj instanceof c) {
            z10.cancel(((c) obj).f67194a);
        }
        return false;
    }

    public final boolean F() {
        Object obj = this.f67187b;
        return (obj instanceof c) && ((c) obj).f67194a;
    }

    @Override
    @CheckForNull
    public final Throwable a() {
        if (!(this instanceof h)) {
            return null;
        }
        Object obj = this.f67187b;
        if (obj instanceof Failure) {
            return ((Failure) obj).f67191a;
        }
        return null;
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        d dVar;
        w2.H.F(runnable, "Runnable was null.");
        w2.H.F(executor, "Executor was null.");
        if (!isDone() && (dVar = this.f67188c) != d.f67196d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f67199c = dVar;
                if (f67185h.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f67188c;
                }
            } while (dVar != d.f67196d);
        }
        t(runnable, executor);
    }

    @Override
    @I2.a
    public boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f67187b;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        if (f67182e) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f67192c : c.f67193d;
            Objects.requireNonNull(cVar);
        }
        AbstractFuture<V> abstractFuture = this;
        boolean z11 = false;
        while (true) {
            if (f67185h.b(abstractFuture, obj, cVar)) {
                if (z10) {
                    abstractFuture.x();
                }
                s(abstractFuture);
                if (!(obj instanceof f)) {
                    return true;
                }
                Z<? extends V> z12 = ((f) obj).f67206c;
                if (!(z12 instanceof h)) {
                    z12.cancel(z10);
                    return true;
                }
                abstractFuture = (AbstractFuture) z12;
                obj = abstractFuture.f67187b;
                if (!(obj == null) && !(obj instanceof f)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractFuture.f67187b;
                if (!(obj instanceof f)) {
                    return z11;
                }
            }
        }
    }

    @Override
    @I2.a
    @InterfaceC12618j0
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f67187b;
            if ((obj != null) & (!(obj instanceof f))) {
                return u(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                k kVar = this.f67189d;
                if (kVar != k.f67213c) {
                    k kVar2 = new k();
                    do {
                        kVar2.a(kVar);
                        if (f67185h.c(this, kVar, kVar2)) {
                            do {
                                C12616i0.a(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f67187b;
                                    if ((obj2 != null) & (!(obj2 instanceof f))) {
                                        return u(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    B(kVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            B(kVar2);
                        } else {
                            kVar = this.f67189d;
                        }
                    } while (kVar != k.f67213c);
                }
                Object obj3 = this.f67187b;
                Objects.requireNonNull(obj3);
                return u(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.f67187b;
                if ((obj4 != null) & (!(obj4 instanceof f))) {
                    return u(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFuture = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            sb2.append("Waited ");
            sb2.append(j10);
            sb2.append(" ");
            sb2.append(lowerCase2);
            String sb3 = sb2.toString();
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(sb3).concat(" (plus ");
                long j11 = -nanos;
                long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(convert);
                boolean z10 = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb4 = new StringBuilder(valueOf.length() + 21 + String.valueOf(lowerCase).length());
                    sb4.append(valueOf);
                    sb4.append(convert);
                    sb4.append(" ");
                    sb4.append(lowerCase);
                    String sb5 = sb4.toString();
                    if (z10) {
                        sb5 = String.valueOf(sb5).concat(DocLint.SEPARATOR);
                    }
                    concat = String.valueOf(sb5).concat(" ");
                }
                if (z10) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb6 = new StringBuilder(valueOf2.length() + 33);
                    sb6.append(valueOf2);
                    sb6.append(nanos2);
                    sb6.append(" nanoseconds ");
                    concat = sb6.toString();
                }
                sb3 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb3).concat(" but future completed as timeout expired"));
            }
            StringBuilder sb7 = new StringBuilder(String.valueOf(sb3).length() + 5 + String.valueOf(abstractFuture).length());
            sb7.append(sb3);
            sb7.append(" for ");
            sb7.append(abstractFuture);
            throw new TimeoutException(sb7.toString());
        }
        throw new InterruptedException();
    }

    @Override
    public boolean isCancelled() {
        return this.f67187b instanceof c;
    }

    @Override
    public boolean isDone() {
        return (!(r0 instanceof f)) & (this.f67187b != null);
    }

    public final void l(StringBuilder sb2) {
        try {
            Object w10 = w(this);
            sb2.append("SUCCESS, result=[");
            o(sb2, w10);
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

    public final void m(StringBuilder sb2) {
        String sb3;
        int length = sb2.length();
        sb2.append("PENDING");
        Object obj = this.f67187b;
        if (obj instanceof f) {
            sb2.append(", setFuture=[");
            p(sb2, ((f) obj).f67206c);
            sb2.append("]");
        } else {
            try {
                sb3 = w2.P.c(z());
            } catch (RuntimeException | StackOverflowError e10) {
                String valueOf = String.valueOf(e10.getClass());
                StringBuilder sb4 = new StringBuilder(valueOf.length() + 38);
                sb4.append("Exception thrown from implementation: ");
                sb4.append(valueOf);
                sb3 = sb4.toString();
            }
            if (sb3 != null) {
                sb2.append(", info=[");
                sb2.append(sb3);
                sb2.append("]");
            }
        }
        if (isDone()) {
            sb2.delete(length, sb2.length());
            l(sb2);
        }
    }

    @I2.g
    @InterfaceC15800a
    public void n() {
    }

    public final void o(StringBuilder sb2, @CheckForNull Object obj) {
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

    public final void p(StringBuilder sb2, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb2.append("this future");
            } else {
                sb2.append(obj);
            }
        } catch (RuntimeException e10) {
            e = e10;
            sb2.append("Exception thrown from implementation: ");
            sb2.append((Object) e.getClass());
        } catch (StackOverflowError e11) {
            e = e11;
            sb2.append("Exception thrown from implementation: ");
            sb2.append((Object) e.getClass());
        }
    }

    @CheckForNull
    public final d r(@CheckForNull d dVar) {
        d dVar2 = dVar;
        d d10 = f67185h.d(this, d.f67196d);
        while (d10 != null) {
            d dVar3 = d10.f67199c;
            d10.f67199c = dVar2;
            dVar2 = d10;
            d10 = dVar3;
        }
        return dVar2;
    }

    public String toString() {
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
            l(sb2);
        } else {
            m(sb2);
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC12618j0
    public final V u(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw q("Task was cancelled.", ((c) obj).f67195b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f67191a);
        }
        return obj == f67186i ? (V) C12614h0.b() : obj;
    }

    public void x() {
    }

    public final void y(@CheckForNull Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(F());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public String z() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb2 = new StringBuilder(41);
        sb2.append("remaining delay=[");
        sb2.append(delay);
        sb2.append(" ms]");
        return sb2.toString();
    }

    public static final class d {

        public static final d f67196d = new d();

        @CheckForNull
        public final Runnable f67197a;

        @CheckForNull
        public final Executor f67198b;

        @CheckForNull
        public d f67199c;

        public d(Runnable runnable, Executor executor) {
            this.f67197a = runnable;
            this.f67198b = executor;
        }

        public d() {
            this.f67197a = null;
            this.f67198b = null;
        }
    }

    @Override
    @I2.a
    @InterfaceC12618j0
    public V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f67187b;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return u(obj2);
            }
            k kVar = this.f67189d;
            if (kVar != k.f67213c) {
                k kVar2 = new k();
                do {
                    kVar2.a(kVar);
                    if (f67185h.c(this, kVar, kVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f67187b;
                            } else {
                                B(kVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return u(obj);
                    }
                    kVar = this.f67189d;
                } while (kVar != k.f67213c);
            }
            Object obj3 = this.f67187b;
            Objects.requireNonNull(obj3);
            return u(obj3);
        }
        throw new InterruptedException();
    }
}
