package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import com.google.common.collect.M1;
import com.google.common.collect.O1;
import com.google.common.collect.Q1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@I2.a
@A
@v2.c
@InterfaceC15800a
public class CycleDetectingLockFactory {

    public static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, g>> f67250b = new O1().l().i();

    public static final Logger f67251c = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    public static final ThreadLocal<ArrayList<g>> f67252d = new a();

    public final i f67253a;

    public static class ExampleStackTrace extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final AbstractC12564r1<String> EXCLUDED_CLASS_NAMES = AbstractC12564r1.C(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), g.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ExampleStackTrace(g gVar, g gVar2) {
            super(r1.toString());
            String d10 = gVar.d();
            String d11 = gVar2.d();
            StringBuilder sb2 = new StringBuilder(String.valueOf(d10).length() + 4 + String.valueOf(d11).length());
            sb2.append(d10);
            sb2.append(" -> ");
            sb2.append(d11);
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (j.class.getName().equals(stackTrace[i10].getClassName())) {
                    setStackTrace(EMPTY_STACK_TRACE);
                    return;
                } else {
                    if (!EXCLUDED_CLASS_NAMES.contains(stackTrace[i10].getClassName())) {
                        setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10, length));
                        return;
                    }
                }
            }
        }
    }

    @InterfaceC15800a
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        public PotentialDeadlockException(g gVar, g gVar2, ExampleStackTrace exampleStackTrace, a aVar) {
            this(gVar, gVar2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb2 = new StringBuilder(message);
            for (Throwable th2 = this.conflictingStackTrace; th2 != null; th2 = th2.getCause()) {
                sb2.append(", ");
                sb2.append(th2.getMessage());
            }
            return sb2.toString();
        }

        private PotentialDeadlockException(g gVar, g gVar2, ExampleStackTrace exampleStackTrace) {
            super(gVar, gVar2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }
    }

    public class a extends ThreadLocal<ArrayList<g>> {
        @Override
        public ArrayList<g> initialValue() {
            return M1.u(3);
        }
    }

    public interface b {
        g a();

        boolean b();
    }

    public final class c extends ReentrantLock implements b {

        public final g f67254b;

        public c(CycleDetectingLockFactory cycleDetectingLockFactory, g gVar, boolean z10, a aVar) {
            this(gVar, z10);
        }

        @Override
        public g a() {
            return this.f67254b;
        }

        @Override
        public boolean b() {
            return isHeldByCurrentThread();
        }

        @Override
        public void lock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        public c(g gVar, boolean z10) {
            super(z10);
            this.f67254b = (g) w2.H.E(gVar);
        }

        @Override
        public boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock(j10, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }
    }

    public final class e extends ReentrantReadWriteLock implements b {

        public final d f67258b;

        public final f f67259c;

        public final g f67260d;

        public e(CycleDetectingLockFactory cycleDetectingLockFactory, g gVar, boolean z10, a aVar) {
            this(cycleDetectingLockFactory, gVar, z10);
        }

        @Override
        public g a() {
            return this.f67260d;
        }

        @Override
        public boolean b() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }

        public e(CycleDetectingLockFactory cycleDetectingLockFactory, g gVar, boolean z10) {
            super(z10);
            this.f67258b = new d(this);
            this.f67259c = new f(this);
            this.f67260d = (g) w2.H.E(gVar);
        }

        @Override
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.f67258b;
        }

        @Override
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.f67259c;
        }
    }

    public static class g {

        public final Map<g, ExampleStackTrace> f67263a = new O1().l().i();

        public final Map<g, PotentialDeadlockException> f67264b = new O1().l().i();

        public final String f67265c;

        public g(String str) {
            this.f67265c = (String) w2.H.E(str);
        }

        public void a(i iVar, g gVar) {
            w2.H.x0(this != gVar, "Attempted to acquire multiple locks with the same rank %s", gVar.d());
            if (this.f67263a.containsKey(gVar)) {
                return;
            }
            PotentialDeadlockException potentialDeadlockException = this.f67264b.get(gVar);
            a aVar = null;
            if (potentialDeadlockException != null) {
                iVar.a(new PotentialDeadlockException(gVar, this, potentialDeadlockException.getConflictingStackTrace(), aVar));
                return;
            }
            ExampleStackTrace c10 = gVar.c(this, D2.z());
            if (c10 == null) {
                this.f67263a.put(gVar, new ExampleStackTrace(gVar, this));
                return;
            }
            PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(gVar, this, c10, aVar);
            this.f67264b.put(gVar, potentialDeadlockException2);
            iVar.a(potentialDeadlockException2);
        }

        public void b(i iVar, List<g> list) {
            Iterator<g> it = list.iterator();
            while (it.hasNext()) {
                a(iVar, it.next());
            }
        }

        @CheckForNull
        public final ExampleStackTrace c(g gVar, Set<g> set) {
            if (!set.add(this)) {
                return null;
            }
            ExampleStackTrace exampleStackTrace = this.f67263a.get(gVar);
            if (exampleStackTrace != null) {
                return exampleStackTrace;
            }
            for (Map.Entry<g, ExampleStackTrace> entry : this.f67263a.entrySet()) {
                g key = entry.getKey();
                ExampleStackTrace c10 = key.c(gVar, set);
                if (c10 != null) {
                    ExampleStackTrace exampleStackTrace2 = new ExampleStackTrace(key, this);
                    exampleStackTrace2.setStackTrace(entry.getValue().getStackTrace());
                    exampleStackTrace2.initCause(c10);
                    return exampleStackTrace2;
                }
            }
            return null;
        }

        public String d() {
            return this.f67265c;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @InterfaceC15800a
    public static abstract class h implements i {
        public static final h THROW = new a("THROW", 0);
        public static final h WARN = new b("WARN", 1);
        public static final h DISABLED = new c("DISABLED", 2);
        private static final h[] $VALUES = b();

        public enum a extends h {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public void a(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        }

        public enum b extends h {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public void a(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f67251c.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        }

        public enum c extends h {
            public c(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public void a(PotentialDeadlockException potentialDeadlockException) {
            }
        }

        public h(String str, int i10) {
        }

        public static h[] b() {
            return new h[]{THROW, WARN, DISABLED};
        }

        public static h valueOf(String str) {
            return (h) Enum.valueOf(h.class, str);
        }

        public static h[] values() {
            return (h[]) $VALUES.clone();
        }

        public h(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    @InterfaceC15800a
    public interface i {
        void a(PotentialDeadlockException potentialDeadlockException);
    }

    @InterfaceC15800a
    public static final class j<E extends Enum<E>> extends CycleDetectingLockFactory {

        public final Map<E, g> f67266e;

        @v2.d
        public j(i iVar, Map<E, g> map) {
            super(iVar, null);
            this.f67266e = map;
        }

        public ReentrantLock o(E e10) {
            return p(e10, false);
        }

        public ReentrantLock p(E e10, boolean z10) {
            if (this.f67253a == h.DISABLED) {
                return new ReentrantLock(z10);
            }
            g gVar = this.f67266e.get(e10);
            Objects.requireNonNull(gVar);
            return new c(this, gVar, z10, null);
        }

        public ReentrantReadWriteLock q(E e10) {
            return r(e10, false);
        }

        public ReentrantReadWriteLock r(E e10, boolean z10) {
            if (this.f67253a == h.DISABLED) {
                return new ReentrantReadWriteLock(z10);
            }
            g gVar = this.f67266e.get(e10);
            Objects.requireNonNull(gVar);
            return new e(this, gVar, z10, null);
        }
    }

    public CycleDetectingLockFactory(i iVar, a aVar) {
        this(iVar);
    }

    @v2.d
    public static <E extends Enum<E>> Map<E, g> e(Class<E> cls) {
        EnumMap W10 = Q1.W(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList u10 = M1.u(length);
        int i10 = 0;
        for (E e10 : enumConstants) {
            g gVar = new g(f(e10));
            u10.add(gVar);
            W10.put((EnumMap) e10, (E) gVar);
        }
        for (int i11 = 1; i11 < length; i11++) {
            ((g) u10.get(i11)).b(h.THROW, u10.subList(0, i11));
        }
        while (i10 < length - 1) {
            i10++;
            ((g) u10.get(i10)).b(h.DISABLED, u10.subList(i10, length));
        }
        return Collections.unmodifiableMap(W10);
    }

    public static String f(Enum<?> r32) {
        String simpleName = r32.getDeclaringClass().getSimpleName();
        String name = r32.name();
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 1 + String.valueOf(name).length());
        sb2.append(simpleName);
        sb2.append(".");
        sb2.append(name);
        return sb2.toString();
    }

    public static <E extends Enum<E>> Map<? extends E, g> g(Class<E> cls) {
        ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, g>> concurrentMap = f67250b;
        Map<? extends E, g> map = (Map) concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum<?>, g> e10 = e(cls);
        return (Map) w2.z.a(concurrentMap.putIfAbsent(cls, e10), e10);
    }

    public static void h(b bVar) {
        if (bVar.b()) {
            return;
        }
        ArrayList<g> arrayList = f67252d.get();
        g a10 = bVar.a();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == a10) {
                arrayList.remove(size);
                return;
            }
        }
    }

    public static CycleDetectingLockFactory i(i iVar) {
        return new CycleDetectingLockFactory(iVar);
    }

    public static <E extends Enum<E>> j<E> j(Class<E> cls, i iVar) {
        w2.H.E(cls);
        w2.H.E(iVar);
        return new j<>(iVar, g(cls));
    }

    public final void a(b bVar) {
        if (bVar.b()) {
            return;
        }
        ArrayList<g> arrayList = f67252d.get();
        g a10 = bVar.a();
        a10.b(this.f67253a, arrayList);
        arrayList.add(a10);
    }

    public ReentrantLock k(String str) {
        return l(str, false);
    }

    public ReentrantLock l(String str, boolean z10) {
        return this.f67253a == h.DISABLED ? new ReentrantLock(z10) : new c(this, new g(str), z10, null);
    }

    public ReentrantReadWriteLock m(String str) {
        return n(str, false);
    }

    public ReentrantReadWriteLock n(String str, boolean z10) {
        return this.f67253a == h.DISABLED ? new ReentrantReadWriteLock(z10) : new e(this, new g(str), z10, null);
    }

    public CycleDetectingLockFactory(i iVar) {
        this.f67253a = (i) w2.H.E(iVar);
    }

    public class d extends ReentrantReadWriteLock.ReadLock {

        @q3.i
        public final e f67256b;

        public d(e eVar) {
            super(eVar);
            this.f67256b = eVar;
        }

        @Override
        public void lock() {
            CycleDetectingLockFactory.this.a(this.f67256b);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this.f67256b);
            }
        }

        @Override
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f67256b);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this.f67256b);
            }
        }

        @Override
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.f67256b);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this.f67256b);
            }
        }

        @Override
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this.f67256b);
            }
        }

        @Override
        public boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f67256b);
            try {
                return super.tryLock(j10, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this.f67256b);
            }
        }
    }

    public class f extends ReentrantReadWriteLock.WriteLock {

        @q3.i
        public final e f67261b;

        public f(e eVar) {
            super(eVar);
            this.f67261b = eVar;
        }

        @Override
        public void lock() {
            CycleDetectingLockFactory.this.a(this.f67261b);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this.f67261b);
            }
        }

        @Override
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f67261b);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this.f67261b);
            }
        }

        @Override
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.f67261b);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this.f67261b);
            }
        }

        @Override
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this.f67261b);
            }
        }

        @Override
        public boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f67261b);
            try {
                return super.tryLock(j10, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this.f67261b);
            }
        }
    }
}
