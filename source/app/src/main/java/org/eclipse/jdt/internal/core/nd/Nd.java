package org.eclipse.jdt.internal.core.nd;

import android.app.job.JobInfo;
import eg.C13143u0;
import ei.C13155a;
import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.internal.core.nd.db.ChunkCache;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;

public final class Nd {
    static final boolean $assertionsDisabled = false;
    private static final int BLOCKED_WRITE_LOCK_OUTPUT_INTERVAL = 30000;
    private static final int CANCELLATION_CHECK_INTERVAL = 500;
    public static boolean DEBUG_DUPLICATE_DELETIONS = false;
    private static final int LONG_READ_LOCK_WAIT_REPORT_THRESHOLD = 1000;
    private static final int LONG_WRITE_LOCK_REPORT_THRESHOLD = 1000;
    private static final double MAX_DIRTY_CACHE_RATIO = 0.25d;
    public static boolean sDEBUG_LOCKS = false;
    private final Map<Class<?>, Object> cookies;
    private final int currentVersion;

    protected Database f102532db;
    private Map<Thread, DebugLockInfo> fLockDebugging;
    private final NdNodeTypeRegistry<NdNode> fNodeTypeRegistry;
    private File fPath;
    private IReader fReader;
    private final HashMap<Object, Object> fResultCache;
    private long fWriteNumber;
    private long lastWriteAccess;
    private int lockCount;
    private final int maxVersion;
    private final int minVersion;
    private final Object mutex;
    private HashMap<Long, Object> pendingDeletions;
    private long timeWriteLockAcquired;
    private int waitingReaders;
    private Thread writeLockOwner;

    public static class DebugLockInfo {
        int fReadLocks;
        List<StackTraceElement[]> fTraces = new ArrayList();
        int fWriteLocks;

        public int addTrace() {
            this.fTraces.add(Thread.currentThread().getStackTrace());
            return this.fTraces.size();
        }

        public void inc(DebugLockInfo debugLockInfo) {
            this.fReadLocks += debugLockInfo.fReadLocks;
            this.fWriteLocks += debugLockInfo.fWriteLocks;
            this.fTraces.addAll(debugLockInfo.fTraces);
        }

        public void write(String str) {
            System.out.println("Thread: '" + str + "': " + this.fReadLocks + " readlocks, " + this.fWriteLocks + " writelocks");
            for (StackTraceElement[] stackTraceElementArr : this.fTraces) {
                System.out.println("  Stacktrace:");
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    System.out.println(C13155a.f85806a + ((Object) stackTraceElement));
                }
            }
        }
    }

    public Nd(File file, NdNodeTypeRegistry<NdNode> ndNodeTypeRegistry, int i10, int i11, int i12) throws IndexException {
        this(file, ChunkCache.getSharedInstance(), ndNodeTypeRegistry, i10, i11, i12);
    }

    private void clearCaches() {
        clearResultCache();
    }

    public static void decReadLock(Map<Thread, DebugLockInfo> map) throws AssertionError {
        DebugLockInfo lockInfo = getLockInfo(map);
        int i10 = lockInfo.fReadLocks;
        if (i10 <= 0) {
            outputReadLocks(map);
            throw new AssertionError((Object) "Superfluous releaseReadLock");
        }
        if (lockInfo.fWriteLocks != 0) {
            outputReadLocks(map);
            throw new AssertionError((Object) "Releasing readlock while holding write lock");
        }
        int i11 = i10 - 1;
        lockInfo.fReadLocks = i11;
        if (i11 == 0) {
            map.remove(Thread.currentThread());
        } else {
            lockInfo.addTrace();
        }
    }

    private void decWriteLock(int i10) throws AssertionError {
        DebugLockInfo lockInfo = getLockInfo(this.fLockDebugging);
        int i11 = lockInfo.fReadLocks;
        if (i11 != i10) {
            throw new AssertionError((Object) ("release write lock with " + i10 + " readlocks, expected " + lockInfo.fReadLocks));
        }
        if (lockInfo.fWriteLocks != 1) {
            throw new AssertionError((Object) "Wrong release write lock");
        }
        lockInfo.fWriteLocks = 0;
        if (i11 == 0) {
            this.fLockDebugging.remove(Thread.currentThread());
        }
    }

    private void deleteIfUnreferenced(long j10) {
        if (j10 == 0) {
            return;
        }
        short s10 = NdNode.NODE_TYPE.get(this, j10);
        ITypeFactory typeFactory = getTypeFactory(s10);
        if (typeFactory.isReadyForDeletion(this, j10)) {
            typeFactory.destruct(this, j10);
            getDB().free(j10, (short) (s10 + Database.POOL_FIRST_NODE_TYPE));
        }
    }

    private static DebugLockInfo getLockInfo(Map<Thread, DebugLockInfo> map) {
        Thread currentThread = Thread.currentThread();
        DebugLockInfo debugLockInfo = map.get(currentThread);
        if (debugLockInfo != null) {
            return debugLockInfo;
        }
        DebugLockInfo debugLockInfo2 = new DebugLockInfo();
        map.put(currentThread, debugLockInfo2);
        return debugLockInfo2;
    }

    public static void incReadLock(Map<Thread, DebugLockInfo> map) {
        DebugLockInfo lockInfo = getLockInfo(map);
        lockInfo.fReadLocks++;
        if (lockInfo.addTrace() > 10) {
            outputReadLocks(map);
        }
    }

    private void incWriteLock(int i10) throws AssertionError {
        DebugLockInfo lockInfo = getLockInfo(this.fLockDebugging);
        if (lockInfo.fReadLocks == i10) {
            int i11 = lockInfo.fWriteLocks;
            if (i11 != 0) {
                throw new AssertionError((Object) "Duplicate write lock");
            }
            lockInfo.fWriteLocks = i11 + 1;
            return;
        }
        outputReadLocks(this.fLockDebugging);
        throw new AssertionError((Object) ("write lock with " + i10 + " readlocks, expected " + lockInfo.fReadLocks));
    }

    private void loadDatabase(File file, ChunkCache chunkCache) throws IndexException {
        this.fPath = file;
        clearCaches();
        Database database = new Database(this.fPath, chunkCache, getDefaultVersion(), isPermanentlyReadOnly());
        this.f102532db = database;
        database.setExclusiveLock();
        if (!isSupportedVersion()) {
            Package.logInfo("Index database uses the unsupported version " + this.f102532db.getVersion() + ". Deleting and recreating.");
            this.f102532db.close();
            this.fPath.delete();
            Database database2 = new Database(this.fPath, chunkCache, getDefaultVersion(), isPermanentlyReadOnly());
            this.f102532db = database2;
            database2.setExclusiveLock();
        }
        this.f102532db.giveUpExclusiveLock();
        this.fWriteNumber = this.f102532db.getLong(2052L);
        this.f102532db.setLocked(this.lockCount != 0);
    }

    private static void outputReadLocks(Map<Thread, DebugLockInfo> map) {
        System.out.println("---------------------  Lock Debugging -------------------------");
        for (Thread thread : map.o()) {
            map.get(thread).write(thread.getName());
        }
        System.out.println("---------------------------------------------------------------");
    }

    private void releaseWriteLockAndFlush(int i10, boolean z10) throws AssertionError {
        boolean z11 = true;
        if (getDB().getDirtyChunkCount() > ((int) (this.f102532db.getCache().getMaxSize() / 4096)) * MAX_DIRTY_CACHE_RATIO) {
            z10 = true;
        }
        if (z10) {
            i10++;
        }
        synchronized (this.mutex) {
            try {
                if (sDEBUG_LOCKS) {
                    long j10 = this.lastWriteAccess - this.timeWriteLockAcquired;
                    if (j10 >= 1000) {
                        System.out.println("Index write lock held for " + j10 + " ms");
                    }
                    decWriteLock(i10);
                }
                if (this.lockCount < 0) {
                    this.lockCount = i10;
                }
                this.mutex.notifyAll();
                Database database = this.f102532db;
                if (i10 == 0) {
                    z11 = false;
                }
                database.setLocked(z11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            try {
                this.f102532db.flush();
            } finally {
                releaseReadLock();
            }
        }
    }

    private long reportBlockedWriteLock(long j10, int i10) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS + j10) {
            return j10;
        }
        PrintStream printStream = System.out;
        printStream.println();
        printStream.println("Blocked writeLock");
        printStream.println("  lockcount= " + this.lockCount + ", giveupReadLocks=" + i10 + ", waitingReaders=" + this.waitingReaders);
        outputReadLocks(this.fLockDebugging);
        return currentTimeMillis;
    }

    public static int version(int i10, int i11) {
        return (i10 << 16) + i11;
    }

    public static String versionString(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10 >> 16);
        sb2.append('.');
        sb2.append(i10 & 65535);
        return sb2.toString();
    }

    public IReader acquireReadLock() {
        int i10;
        IReader iReader;
        try {
            long nanoTime = sDEBUG_LOCKS ? System.nanoTime() : 0L;
            synchronized (this.mutex) {
                try {
                    this.waitingReaders++;
                    while (true) {
                        try {
                            i10 = this.lockCount;
                            if (i10 >= 0) {
                                break;
                            }
                            this.mutex.wait();
                        } catch (Throwable th2) {
                            this.waitingReaders--;
                            throw th2;
                        }
                    }
                    this.waitingReaders--;
                    this.lockCount = i10 + 1;
                    this.f102532db.setLocked(true);
                    if (sDEBUG_LOCKS) {
                        long nanoTime2 = (System.nanoTime() - nanoTime) / C13143u0.f85788e;
                        if (nanoTime2 >= 1000) {
                            System.out.println("Acquired index read lock after " + nanoTime2 + " ms wait.");
                        }
                        incReadLock(this.fLockDebugging);
                    }
                    iReader = this.fReader;
                } finally {
                }
            }
            return iReader;
        } catch (InterruptedException unused) {
            throw new OperationCanceledException();
        }
    }

    public void acquireWriteLock(IProgressMonitor iProgressMonitor) {
        try {
            acquireWriteLock(0, iProgressMonitor);
        } catch (InterruptedException unused) {
            throw new OperationCanceledException();
        }
    }

    public void adjustThreadForReadLock(Map<Thread, DebugLockInfo> map) {
        for (Thread thread : map.o()) {
            DebugLockInfo debugLockInfo = map.get(thread);
            if (debugLockInfo.fReadLocks > 0) {
                DebugLockInfo debugLockInfo2 = this.fLockDebugging.get(thread);
                if (debugLockInfo2 == null) {
                    debugLockInfo2 = new DebugLockInfo();
                    this.fLockDebugging.put(thread, debugLockInfo2);
                }
                debugLockInfo2.inc(debugLockInfo);
                for (int i10 = 0; i10 < debugLockInfo.fReadLocks; i10++) {
                    decReadLock(this.fLockDebugging);
                }
            }
        }
    }

    public void clear(IProgressMonitor iProgressMonitor) {
        this.pendingDeletions.clear();
        getDB().clear(getDefaultVersion());
    }

    public void clearResultCache() {
        synchronized (this.fResultCache) {
            this.fResultCache.clear();
        }
    }

    public void close() throws IndexException {
        this.f102532db.close();
        clearCaches();
    }

    public void delete(long j10) {
        if (j10 == 0) {
            return;
        }
        short s10 = NdNode.NODE_TYPE.get(this, j10);
        getTypeFactory(s10).destruct(this, j10);
        getDB().free(j10, (short) (s10 + Database.POOL_FIRST_NODE_TYPE));
        if (this.pendingDeletions.containsKey(Long.valueOf(j10))) {
            logDoubleDeletion(j10);
            this.pendingDeletions.remove(Long.valueOf(j10));
        }
    }

    public IndexExceptionBuilder describeProblem() {
        return this.f102532db.describeProblem();
    }

    public Object getCachedResult(Object obj) {
        Object obj2;
        synchronized (this.fResultCache) {
            obj2 = this.fResultCache.get(obj);
        }
        return obj2;
    }

    public Database getDB() {
        return this.f102532db;
    }

    public <T> T getData(Class<T> cls, Supplier<T> supplier) {
        T t10;
        synchronized (this.cookies) {
            t10 = (T) this.cookies.get(cls);
        }
        if (t10 == null && (t10 = supplier.get()) != null) {
            synchronized (this.cookies) {
                try {
                    Object obj = this.cookies.get(cls);
                    if (obj == null) {
                        this.cookies.put(cls, t10);
                    } else {
                        t10 = (T) obj;
                    }
                } finally {
                }
            }
        }
        return t10;
    }

    public int getDefaultVersion() {
        return this.currentVersion;
    }

    public long getLastWriteAccess() {
        return this.lastWriteAccess;
    }

    public int getMaxSupportedVersion() {
        return this.maxVersion;
    }

    public int getMinSupportedVersion() {
        return this.minVersion;
    }

    public NdNode getNode(long j10, short s10) throws IndexException {
        return this.fNodeTypeRegistry.createNode(this, j10, s10);
    }

    public short getNodeType(Class<?> cls) {
        return this.fNodeTypeRegistry.getTypeForClass(cls);
    }

    public File getPath() {
        return this.fPath;
    }

    public <T extends NdNode> ITypeFactory<T> getTypeFactory(short s10) {
        return (ITypeFactory<T>) this.fNodeTypeRegistry.getTypeFactory(s10);
    }

    public NdNodeTypeRegistry<NdNode> getTypeRegistry() {
        return this.fNodeTypeRegistry;
    }

    public long getWriteNumber() {
        return this.fWriteNumber;
    }

    public boolean hasWaitingReaders() {
        boolean z10;
        synchronized (this.mutex) {
            z10 = this.waitingReaders > 0;
        }
        return z10;
    }

    public boolean isPermanentlyReadOnly() {
        return false;
    }

    public boolean isSupportedVersion(int i10) {
        return i10 >= this.minVersion && i10 <= this.maxVersion;
    }

    public boolean isValidAddress(long j10) {
        return j10 > 0 && j10 < ((long) getDB().getChunkCount()) * 4096;
    }

    public void logDoubleDeletion(long j10) {
        Package.log("Database object queued for deletion twice", new RuntimeException());
        Object obj = this.pendingDeletions.get(Long.valueOf(j10));
        if (obj instanceof RuntimeException) {
            Package.log("Data associated with earlier deletion stack was:", (RuntimeException) obj);
        }
    }

    public void processDeletions() {
        while (!this.pendingDeletions.isEmpty()) {
            Long next = this.pendingDeletions.o().iterator().next();
            deleteIfUnreferenced(next.longValue());
            this.pendingDeletions.remove(next);
        }
    }

    public void putCachedResult(Object obj, Object obj2) {
        putCachedResult(obj, obj2, true);
    }

    public void releaseReadLock() {
        synchronized (this.mutex) {
            try {
                if (sDEBUG_LOCKS) {
                    decReadLock(this.fLockDebugging);
                }
                int i10 = this.lockCount;
                boolean z10 = true;
                if (i10 > 0) {
                    this.lockCount = i10 - 1;
                }
                this.mutex.notifyAll();
                Database database = this.f102532db;
                if (this.lockCount == 0) {
                    z10 = false;
                }
                database.setLocked(z10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void releaseWriteLock() {
        releaseWriteLock(0, false);
    }

    public void removeCachedResult(Object obj) {
        synchronized (this.fResultCache) {
            this.fResultCache.remove(obj);
        }
    }

    public void scheduleDeletion(long j10) {
        if (this.pendingDeletions.containsKey(Long.valueOf(j10))) {
            logDoubleDeletion(j10);
            return;
        }
        Object obj = Boolean.TRUE;
        if (DEBUG_DUPLICATE_DELETIONS) {
            obj = new RuntimeException();
        }
        this.pendingDeletions.put(Long.valueOf(j10), obj);
    }

    public <T> void setData(Class<T> cls, T t10) {
        synchronized (this.cookies) {
            this.cookies.put(cls, t10);
        }
    }

    public Nd(File file, ChunkCache chunkCache, NdNodeTypeRegistry<NdNode> ndNodeTypeRegistry, int i10, int i11, int i12) throws IndexException {
        this.cookies = new HashMap();
        this.fResultCache = new HashMap<>();
        this.pendingDeletions = new HashMap<>();
        this.fReader = new IReader() {
            @Override
            public void close() {
                Nd.this.releaseReadLock();
            }
        };
        this.mutex = new Object();
        this.lastWriteAccess = 0L;
        this.currentVersion = i12;
        this.maxVersion = i11;
        this.minVersion = i10;
        this.fNodeTypeRegistry = ndNodeTypeRegistry;
        loadDatabase(file, chunkCache);
        if (sDEBUG_LOCKS) {
            this.fLockDebugging = new HashMap();
            System.out.println("Debugging database Locks");
        }
    }

    public boolean isSupportedVersion() throws IndexException {
        int version = this.f102532db.getVersion();
        return version >= this.minVersion && version <= this.maxVersion;
    }

    public Object putCachedResult(Object obj, Object obj2, boolean z10) {
        synchronized (this.fResultCache) {
            try {
                Object put = this.fResultCache.put(obj, obj2);
                if (put == null || z10) {
                    return obj2;
                }
                this.fResultCache.put(obj, put);
                return put;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void releaseWriteLock(int i10, boolean z10) {
        synchronized (this.mutex) {
            if (Thread.currentThread() == this.writeLockOwner) {
                this.writeLockOwner = null;
            } else {
                throw new IllegalStateException("Index wasn't locked by this thread!!!");
            }
        }
        if (i10 == 0) {
            try {
                clearResultCache();
            } catch (RuntimeException e10) {
                this.f102532db.giveUpExclusiveLock();
                this.lastWriteAccess = System.currentTimeMillis();
                try {
                    releaseWriteLockAndFlush(i10, z10);
                    return;
                } catch (RuntimeException e11) {
                    e11.addSuppressed(e10);
                    throw e11;
                }
            } catch (Throwable th2) {
                this.f102532db.giveUpExclusiveLock();
                this.lastWriteAccess = System.currentTimeMillis();
                releaseWriteLockAndFlush(i10, z10);
                throw th2;
            }
        }
        Database database = this.f102532db;
        long j10 = this.fWriteNumber + 1;
        this.fWriteNumber = j10;
        database.putLong(2052L, j10);
        processDeletions();
        this.f102532db.giveUpExclusiveLock();
        this.lastWriteAccess = System.currentTimeMillis();
        releaseWriteLockAndFlush(i10, z10);
    }

    public void acquireWriteLock(int i10, IProgressMonitor iProgressMonitor) throws InterruptedException {
        synchronized (this.mutex) {
            try {
                if (sDEBUG_LOCKS) {
                    incWriteLock(i10);
                }
                if (i10 > 0) {
                    int i11 = this.lockCount;
                    if (i11 < i10) {
                        i10 = i11;
                    }
                } else {
                    i10 = 0;
                }
                long currentTimeMillis = sDEBUG_LOCKS ? System.currentTimeMillis() : 0L;
                while (true) {
                    int i12 = this.lockCount;
                    if (i12 <= i10 && this.waitingReaders <= 0 && i12 >= 0) {
                        this.lockCount = -1;
                        if (sDEBUG_LOCKS) {
                            this.timeWriteLockAcquired = System.currentTimeMillis();
                        }
                        this.f102532db.setExclusiveLock();
                        Thread thread = this.writeLockOwner;
                        if (thread != null && thread != Thread.currentThread()) {
                            throw new IllegalStateException("We somehow managed to acquire a write lock while another thread already holds it.");
                        }
                        this.writeLockOwner = Thread.currentThread();
                    } else {
                        this.mutex.wait(500L);
                        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
                            throw new OperationCanceledException();
                        }
                        if (sDEBUG_LOCKS) {
                            currentTimeMillis = reportBlockedWriteLock(currentTimeMillis, i10);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
