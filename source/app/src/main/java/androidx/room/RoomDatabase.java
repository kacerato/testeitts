package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.util.Function;
import androidx.room.migration.Migration;
import androidx.room.util.SneakyThrow;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public abstract class RoomDatabase {
    private static final String DB_IMPL_SUFFIX = "_Impl";
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean mAllowMainThreadQueries;
    private AutoCloser mAutoCloser;

    @Deprecated
    protected List<Callback> mCallbacks;

    @Deprecated
    protected volatile SupportSQLiteDatabase mDatabase;
    private SupportSQLiteOpenHelper mOpenHelper;
    private Executor mQueryExecutor;
    private Executor mTransactionExecutor;
    boolean mWriteAheadLoggingEnabled;
    private final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> mSuspendingTransactionId = new ThreadLocal<>();
    private final Map<String, Object> mBackingFieldMap = Collections.synchronizedMap(new HashMap());
    private final InvalidationTracker mInvalidationTracker = createInvalidationTracker();
    private final Map<Class<?>, Object> mTypeConverters = new HashMap();

    public static class Builder<T extends RoomDatabase> {
        private boolean mAllowDestructiveMigrationOnDowngrade;
        private boolean mAllowMainThreadQueries;
        private TimeUnit mAutoCloseTimeUnit;
        private ArrayList<Callback> mCallbacks;
        private final Context mContext;
        private String mCopyFromAssetPath;
        private File mCopyFromFile;
        private Callable<InputStream> mCopyFromInputStream;
        private final Class<T> mDatabaseClass;
        private SupportSQLiteOpenHelper.Factory mFactory;
        private Set<Integer> mMigrationStartAndEndVersions;
        private Set<Integer> mMigrationsNotRequiredFrom;
        private boolean mMultiInstanceInvalidation;
        private final String mName;
        private PrepackagedDatabaseCallback mPrepackagedDatabaseCallback;
        private QueryCallback mQueryCallback;
        private Executor mQueryCallbackExecutor;
        private Executor mQueryExecutor;
        private Executor mTransactionExecutor;
        private List<Object> mTypeConverters;
        private long mAutoCloseTimeout = -1;
        private JournalMode mJournalMode = JournalMode.AUTOMATIC;
        private boolean mRequireMigration = true;
        private final MigrationContainer mMigrationContainer = new MigrationContainer();

        public Builder(Context context, Class<T> klass, String name) {
            this.mContext = context;
            this.mDatabaseClass = klass;
            this.mName = name;
        }

        public Builder<T> addCallback(Callback callback) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new ArrayList<>();
            }
            this.mCallbacks.add(callback);
            return this;
        }

        public Builder<T> addMigrations(Migration... migrations) {
            if (this.mMigrationStartAndEndVersions == null) {
                this.mMigrationStartAndEndVersions = new HashSet();
            }
            for (Migration migration : migrations) {
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.mMigrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.mMigrationContainer.addMigrations(migrations);
            return this;
        }

        public Builder<T> addTypeConverter(Object typeConverter) {
            if (this.mTypeConverters == null) {
                this.mTypeConverters = new ArrayList();
            }
            this.mTypeConverters.add(typeConverter);
            return this;
        }

        public Builder<T> allowMainThreadQueries() {
            this.mAllowMainThreadQueries = true;
            return this;
        }

        public T build() {
            Executor executor;
            if (this.mContext == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.mDatabaseClass == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.mQueryExecutor;
            if (executor2 == null && this.mTransactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.mTransactionExecutor = iOThreadExecutor;
                this.mQueryExecutor = iOThreadExecutor;
            } else if (executor2 != null && this.mTransactionExecutor == null) {
                this.mTransactionExecutor = executor2;
            } else if (executor2 == null && (executor = this.mTransactionExecutor) != null) {
                this.mQueryExecutor = executor;
            }
            Set<Integer> set = this.mMigrationStartAndEndVersions;
            if (set != null && this.mMigrationsNotRequiredFrom != null) {
                for (Integer num : set) {
                    if (this.mMigrationsNotRequiredFrom.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + ((Object) num));
                    }
                }
            }
            SupportSQLiteOpenHelper.Factory factory = this.mFactory;
            if (factory == null) {
                factory = new FrameworkSQLiteOpenHelperFactory();
            }
            long j10 = this.mAutoCloseTimeout;
            if (j10 > 0) {
                if (this.mName == null) {
                    throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                }
                factory = new AutoClosingRoomOpenHelperFactory(factory, new AutoCloser(j10, this.mAutoCloseTimeUnit, this.mTransactionExecutor));
            }
            String str = this.mCopyFromAssetPath;
            if (str != null || this.mCopyFromFile != null || this.mCopyFromInputStream != null) {
                if (this.mName == null) {
                    throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                }
                int i10 = str == null ? 0 : 1;
                File file = this.mCopyFromFile;
                int i11 = i10 + (file == null ? 0 : 1);
                Callable<InputStream> callable = this.mCopyFromInputStream;
                if (i11 + (callable != null ? 1 : 0) != 1) {
                    throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                }
                factory = new SQLiteCopyOpenHelperFactory(str, file, callable, factory);
            }
            QueryCallback queryCallback = this.mQueryCallback;
            SupportSQLiteOpenHelper.Factory queryInterceptorOpenHelperFactory = queryCallback != null ? new QueryInterceptorOpenHelperFactory(factory, queryCallback, this.mQueryCallbackExecutor) : factory;
            Context context = this.mContext;
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.mName, queryInterceptorOpenHelperFactory, this.mMigrationContainer, this.mCallbacks, this.mAllowMainThreadQueries, this.mJournalMode.resolve(context), this.mQueryExecutor, this.mTransactionExecutor, this.mMultiInstanceInvalidation, this.mRequireMigration, this.mAllowDestructiveMigrationOnDowngrade, this.mMigrationsNotRequiredFrom, this.mCopyFromAssetPath, this.mCopyFromFile, this.mCopyFromInputStream, this.mPrepackagedDatabaseCallback, this.mTypeConverters);
            T t10 = (T) Room.getGeneratedImplementation(this.mDatabaseClass, RoomDatabase.DB_IMPL_SUFFIX);
            t10.init(databaseConfiguration);
            return t10;
        }

        public Builder<T> createFromAsset(String databaseFilePath) {
            this.mCopyFromAssetPath = databaseFilePath;
            return this;
        }

        public Builder<T> createFromFile(File databaseFile) {
            this.mCopyFromFile = databaseFile;
            return this;
        }

        public Builder<T> createFromInputStream(Callable<InputStream> inputStreamCallable) {
            this.mCopyFromInputStream = inputStreamCallable;
            return this;
        }

        public Builder<T> enableMultiInstanceInvalidation() {
            this.mMultiInstanceInvalidation = this.mName != null;
            return this;
        }

        public Builder<T> fallbackToDestructiveMigration() {
            this.mRequireMigration = false;
            this.mAllowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        public Builder<T> fallbackToDestructiveMigrationFrom(int... startVersions) {
            if (this.mMigrationsNotRequiredFrom == null) {
                this.mMigrationsNotRequiredFrom = new HashSet(startVersions.length);
            }
            for (int i10 : startVersions) {
                this.mMigrationsNotRequiredFrom.add(Integer.valueOf(i10));
            }
            return this;
        }

        public Builder<T> fallbackToDestructiveMigrationOnDowngrade() {
            this.mRequireMigration = true;
            this.mAllowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        public Builder<T> openHelperFactory(SupportSQLiteOpenHelper.Factory factory) {
            this.mFactory = factory;
            return this;
        }

        public Builder<T> setAutoCloseTimeout(long autoCloseTimeout, TimeUnit autoCloseTimeUnit) {
            if (autoCloseTimeout < 0) {
                throw new IllegalArgumentException("autoCloseTimeout must be >= 0");
            }
            this.mAutoCloseTimeout = autoCloseTimeout;
            this.mAutoCloseTimeUnit = autoCloseTimeUnit;
            return this;
        }

        public Builder<T> setJournalMode(JournalMode journalMode) {
            this.mJournalMode = journalMode;
            return this;
        }

        public Builder<T> setQueryCallback(QueryCallback queryCallback, Executor executor) {
            this.mQueryCallback = queryCallback;
            this.mQueryCallbackExecutor = executor;
            return this;
        }

        public Builder<T> setQueryExecutor(Executor executor) {
            this.mQueryExecutor = executor;
            return this;
        }

        public Builder<T> setTransactionExecutor(Executor executor) {
            this.mTransactionExecutor = executor;
            return this;
        }

        public Builder<T> createFromAsset(String databaseFilePath, PrepackagedDatabaseCallback callback) {
            this.mPrepackagedDatabaseCallback = callback;
            this.mCopyFromAssetPath = databaseFilePath;
            return this;
        }

        public Builder<T> createFromFile(File databaseFile, PrepackagedDatabaseCallback callback) {
            this.mPrepackagedDatabaseCallback = callback;
            this.mCopyFromFile = databaseFile;
            return this;
        }

        public Builder<T> createFromInputStream(Callable<InputStream> inputStreamCallable, PrepackagedDatabaseCallback callback) {
            this.mPrepackagedDatabaseCallback = callback;
            this.mCopyFromInputStream = inputStreamCallable;
            return this;
        }
    }

    public static abstract class Callback {
        public void onCreate(SupportSQLiteDatabase db2) {
        }

        public void onDestructiveMigration(SupportSQLiteDatabase db2) {
        }

        public void onOpen(SupportSQLiteDatabase db2) {
        }
    }

    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            return activityManager.isLowRamDevice();
        }

        public JournalMode resolve(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            return (activityManager == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    public static class MigrationContainer {
        private HashMap<Integer, TreeMap<Integer, Migration>> mMigrations = new HashMap<>();

        private void addMigration(Migration migration) {
            int i10 = migration.startVersion;
            int i11 = migration.endVersion;
            TreeMap<Integer, Migration> treeMap = this.mMigrations.get(Integer.valueOf(i10));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.mMigrations.put(Integer.valueOf(i10), treeMap);
            }
            Migration migration2 = treeMap.get(Integer.valueOf(i11));
            if (migration2 != null) {
                Log.w("ROOM", "Overriding migration " + ((Object) migration2) + " with " + ((Object) migration));
            }
            treeMap.put(Integer.valueOf(i11), migration);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0054, code lost:
        
            return r6;
         */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:5:0x0017  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private List<Migration> findUpMigrationPath(List<Migration> result, boolean upgrade, int start, int end) {
            TreeMap<Integer, Migration> treeMap;
            int i10;
            boolean z10;
            while (true) {
                if (upgrade) {
                    if (start >= end) {
                        break;
                    }
                    treeMap = this.mMigrations.get(Integer.valueOf(start));
                    if (treeMap != null) {
                        return null;
                    }
                    for (Integer num : upgrade ? treeMap.descendingKeySet() : treeMap.o()) {
                        i10 = num.intValue();
                        if (upgrade) {
                            if (i10 <= end && i10 > start) {
                                result.add(treeMap.get(num));
                                z10 = true;
                                break;
                            }
                        } else if (i10 >= end && i10 < start) {
                            result.add(treeMap.get(num));
                            z10 = true;
                            break;
                        }
                    }
                    i10 = start;
                    z10 = false;
                    if (!z10) {
                        return null;
                    }
                    start = i10;
                } else {
                    if (start <= end) {
                        break;
                    }
                    treeMap = this.mMigrations.get(Integer.valueOf(start));
                    if (treeMap != null) {
                    }
                }
            }
        }

        public void addMigrations(Migration... migrations) {
            for (Migration migration : migrations) {
                addMigration(migration);
            }
        }

        public List<Migration> findMigrationPath(int start, int end) {
            if (start == end) {
                return Collections.emptyList();
            }
            return findUpMigrationPath(new ArrayList(), end > start, start, end);
        }
    }

    public static abstract class PrepackagedDatabaseCallback {
        public void onOpenPrepackagedDatabase(SupportSQLiteDatabase db2) {
        }
    }

    public interface QueryCallback {
        void onQuery(String sqlQuery, List<Object> bindArgs);
    }

    private void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        this.mInvalidationTracker.syncTriggers(writableDatabase);
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    private void internalEndTransaction() {
        this.mOpenHelper.getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        this.mInvalidationTracker.refreshVersionsAsync();
    }

    private static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public Object lambda$beginTransaction$0(SupportSQLiteDatabase supportSQLiteDatabase) {
        internalBeginTransaction();
        return null;
    }

    public Object lambda$endTransaction$1(SupportSQLiteDatabase supportSQLiteDatabase) {
        internalEndTransaction();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T unwrapOpenHelper(Class<T> cls, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (cls.isInstance(supportSQLiteOpenHelper)) {
            return supportSQLiteOpenHelper;
        }
        if (supportSQLiteOpenHelper instanceof DelegatingOpenHelper) {
            return (T) unwrapOpenHelper(cls, ((DelegatingOpenHelper) supportSQLiteOpenHelper).getDelegate());
        }
        return null;
    }

    public void assertNotMainThread() {
        if (!this.mAllowMainThreadQueries && isMainThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (!inTransaction() && this.mSuspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void beginTransaction() {
        assertNotMainThread();
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser == null) {
            internalBeginTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$beginTransaction$0;
                    lambda$beginTransaction$0 = RoomDatabase.this.lambda$beginTransaction$0((SupportSQLiteDatabase) obj);
                    return lambda$beginTransaction$0;
                }
            });
        }
    }

    public abstract void clearAllTables();

    public void close() {
        if (isOpen()) {
            ReentrantReadWriteLock.WriteLock writeLock = this.mCloseLock.writeLock();
            writeLock.lock();
            try {
                this.mInvalidationTracker.stopMultiInstanceInvalidation();
                this.mOpenHelper.close();
            } finally {
                writeLock.unlock();
            }
        }
    }

    public SupportSQLiteStatement compileStatement(String sql) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return this.mOpenHelper.getWritableDatabase().compileStatement(sql);
    }

    public abstract InvalidationTracker createInvalidationTracker();

    public abstract SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration config);

    @Deprecated
    public void endTransaction() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser == null) {
            internalEndTransaction();
        } else {
            autoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$endTransaction$1;
                    lambda$endTransaction$1 = RoomDatabase.this.lambda$endTransaction$1((SupportSQLiteDatabase) obj);
                    return lambda$endTransaction$1;
                }
            });
        }
    }

    public Map<String, Object> getBackingFieldMap() {
        return this.mBackingFieldMap;
    }

    public Lock getCloseLock() {
        return this.mCloseLock.readLock();
    }

    public InvalidationTracker getInvalidationTracker() {
        return this.mInvalidationTracker;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        return this.mOpenHelper;
    }

    public Executor getQueryExecutor() {
        return this.mQueryExecutor;
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return Collections.emptyMap();
    }

    public ThreadLocal<Integer> getSuspendingTransactionId() {
        return this.mSuspendingTransactionId;
    }

    public Executor getTransactionExecutor() {
        return this.mTransactionExecutor;
    }

    public <T> T getTypeConverter(Class<T> cls) {
        return (T) this.mTypeConverters.get(cls);
    }

    public boolean inTransaction() {
        return this.mOpenHelper.getWritableDatabase().inTransaction();
    }

    public void init(DatabaseConfiguration configuration) {
        SupportSQLiteOpenHelper createOpenHelper = createOpenHelper(configuration);
        this.mOpenHelper = createOpenHelper;
        SQLiteCopyOpenHelper sQLiteCopyOpenHelper = (SQLiteCopyOpenHelper) unwrapOpenHelper(SQLiteCopyOpenHelper.class, createOpenHelper);
        if (sQLiteCopyOpenHelper != null) {
            sQLiteCopyOpenHelper.setDatabaseConfiguration(configuration);
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) unwrapOpenHelper(AutoClosingRoomOpenHelper.class, this.mOpenHelper);
        if (autoClosingRoomOpenHelper != null) {
            AutoCloser autoCloser = autoClosingRoomOpenHelper.getAutoCloser();
            this.mAutoCloser = autoCloser;
            this.mInvalidationTracker.setAutoCloser(autoCloser);
        }
        boolean z10 = configuration.journalMode == JournalMode.WRITE_AHEAD_LOGGING;
        this.mOpenHelper.setWriteAheadLoggingEnabled(z10);
        this.mCallbacks = configuration.callbacks;
        this.mQueryExecutor = configuration.queryExecutor;
        this.mTransactionExecutor = new TransactionExecutor(configuration.transactionExecutor);
        this.mAllowMainThreadQueries = configuration.allowMainThreadQueries;
        this.mWriteAheadLoggingEnabled = z10;
        if (configuration.multiInstanceInvalidation) {
            this.mInvalidationTracker.startMultiInstanceInvalidation(configuration.context, configuration.name);
        }
        Map<Class<?>, List<Class<?>>> requiredTypeConverters = getRequiredTypeConverters();
        BitSet bitSet = new BitSet();
        for (Map.Entry<Class<?>, List<Class<?>>> entry : requiredTypeConverters.entrySet()) {
            Class<?> key = entry.getKey();
            for (Class<?> cls : entry.getValue()) {
                int size = configuration.typeConverters.size() - 1;
                while (true) {
                    if (size < 0) {
                        size = -1;
                        break;
                    } else {
                        if (cls.isAssignableFrom(configuration.typeConverters.get(size).getClass())) {
                            bitSet.set(size);
                            break;
                        }
                        size--;
                    }
                }
                if (size < 0) {
                    throw new IllegalArgumentException("A required type converter (" + ((Object) cls) + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                }
                this.mTypeConverters.put(cls, configuration.typeConverters.get(size));
            }
        }
        for (int size2 = configuration.typeConverters.size() - 1; size2 >= 0; size2--) {
            if (!bitSet.get(size2)) {
                throw new IllegalArgumentException("Unexpected type converter " + configuration.typeConverters.get(size2) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
            }
        }
    }

    public void internalInitInvalidationTracker(SupportSQLiteDatabase db2) {
        this.mInvalidationTracker.internalInit(db2);
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        SupportSQLiteDatabase supportSQLiteDatabase = this.mDatabase;
        return supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen();
    }

    public Cursor query(String query, Object[] args) {
        return this.mOpenHelper.getWritableDatabase().query(new SimpleSQLiteQuery(query, args));
    }

    public void runInTransaction(Runnable body) {
        beginTransaction();
        try {
            body.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    @Deprecated
    public void setTransactionSuccessful() {
        this.mOpenHelper.getWritableDatabase().setTransactionSuccessful();
    }

    public Cursor query(SupportSQLiteQuery query) {
        return query(query, (CancellationSignal) null);
    }

    public Cursor query(SupportSQLiteQuery query, CancellationSignal signal) {
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (signal != null) {
            return this.mOpenHelper.getWritableDatabase().query(query, signal);
        }
        return this.mOpenHelper.getWritableDatabase().query(query);
    }

    public <V> V runInTransaction(Callable<V> body) {
        beginTransaction();
        try {
            try {
                V call = body.call();
                setTransactionSuccessful();
                return call;
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception e11) {
                SneakyThrow.reThrow(e11);
                endTransaction();
                return null;
            }
        } finally {
            endTransaction();
        }
    }
}
