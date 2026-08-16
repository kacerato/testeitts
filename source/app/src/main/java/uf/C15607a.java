package uf;

import Ef.f;
import Lf.j;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;

@j(name = "LocksKt")
@t0({"SMAP\nLocks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Locks.kt\nkotlin/concurrent/LocksKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"})
public final class C15607a {
    @f
    @InterfaceC14394D
    public static final <T> T a(ReentrantReadWriteLock reentrantReadWriteLock, Mf.a<? extends T> action) {
        M.p(reentrantReadWriteLock, "<this>");
        M.p(action, "action");
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            return action.invoke();
        } finally {
            J.d(1);
            readLock.unlock();
            J.c(1);
        }
    }

    @f
    @InterfaceC14394D
    public static final <T> T b(Lock lock, Mf.a<? extends T> action) {
        M.p(lock, "<this>");
        M.p(action, "action");
        lock.lock();
        try {
            return action.invoke();
        } finally {
            J.d(1);
            lock.unlock();
            J.c(1);
        }
    }

    @f
    @InterfaceC14394D
    public static final <T> T c(ReentrantReadWriteLock reentrantReadWriteLock, Mf.a<? extends T> action) {
        M.p(reentrantReadWriteLock, "<this>");
        M.p(action, "action");
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i10 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i11 = 0; i11 < readHoldCount; i11++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            return action.invoke();
        } finally {
            J.d(1);
            while (i10 < readHoldCount) {
                readLock.lock();
                i10++;
            }
            writeLock.unlock();
            J.c(1);
        }
    }
}
