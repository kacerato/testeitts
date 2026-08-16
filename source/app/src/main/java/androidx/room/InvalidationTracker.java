package androidx.room;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LiveData;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.lang.constant.ConstantDescs;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

public class InvalidationTracker {
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ";
    static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    AutoCloser mAutoCloser;
    volatile SupportSQLiteStatement mCleanupStatement;
    final RoomDatabase mDatabase;
    private volatile boolean mInitialized;
    private final InvalidationLiveDataContainer mInvalidationLiveDataContainer;
    private MultiInstanceInvalidationClient mMultiInstanceInvalidationClient;
    private ObservedTableTracker mObservedTableTracker;
    final SafeIterableMap<Observer, ObserverWrapper> mObserverMap;
    AtomicBoolean mPendingRefresh;
    Runnable mRefreshRunnable;
    final HashMap<String, Integer> mTableIdLookup;
    final String[] mTableNames;
    private Map<String, Set<String>> mViewTables;

    public static class ObservedTableTracker {
        static final int ADD = 1;
        static final int NO_OP = 0;
        static final int REMOVE = 2;
        boolean mNeedsSync;
        boolean mPendingSync;
        final long[] mTableObservers;
        final int[] mTriggerStateChanges;
        final boolean[] mTriggerStates;

        public ObservedTableTracker(int tableCount) {
            long[] jArr = new long[tableCount];
            this.mTableObservers = jArr;
            boolean[] zArr = new boolean[tableCount];
            this.mTriggerStates = zArr;
            this.mTriggerStateChanges = new int[tableCount];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public int[] getTablesToSync() {
            synchronized (this) {
                try {
                    if (this.mNeedsSync && !this.mPendingSync) {
                        int length = this.mTableObservers.length;
                        int i10 = 0;
                        while (true) {
                            int i11 = 1;
                            if (i10 >= length) {
                                this.mPendingSync = true;
                                this.mNeedsSync = false;
                                return this.mTriggerStateChanges;
                            }
                            boolean z10 = this.mTableObservers[i10] > 0;
                            boolean[] zArr = this.mTriggerStates;
                            if (z10 != zArr[i10]) {
                                int[] iArr = this.mTriggerStateChanges;
                                if (!z10) {
                                    i11 = 2;
                                }
                                iArr[i10] = i11;
                            } else {
                                this.mTriggerStateChanges[i10] = 0;
                            }
                            zArr[i10] = z10;
                            i10++;
                        }
                    }
                    return null;
                } finally {
                }
            }
        }

        public boolean onAdded(int... tableIds) {
            boolean z10;
            synchronized (this) {
                try {
                    z10 = false;
                    for (int i10 : tableIds) {
                        long[] jArr = this.mTableObservers;
                        long j10 = jArr[i10];
                        jArr[i10] = 1 + j10;
                        if (j10 == 0) {
                            z10 = true;
                            this.mNeedsSync = true;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return z10;
        }

        public boolean onRemoved(int... tableIds) {
            boolean z10;
            synchronized (this) {
                try {
                    z10 = false;
                    for (int i10 : tableIds) {
                        long[] jArr = this.mTableObservers;
                        long j10 = jArr[i10];
                        jArr[i10] = j10 - 1;
                        if (j10 == 1) {
                            z10 = true;
                            this.mNeedsSync = true;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return z10;
        }

        public void onSyncCompleted() {
            synchronized (this) {
                this.mPendingSync = false;
            }
        }

        public void resetTriggerState() {
            synchronized (this) {
                Arrays.fill(this.mTriggerStates, false);
                this.mNeedsSync = true;
            }
        }
    }

    public static class ObserverWrapper {
        final Observer mObserver;
        private final Set<String> mSingleTableSet;
        final int[] mTableIds;
        private final String[] mTableNames;

        public ObserverWrapper(Observer observer, int[] tableIds, String[] tableNames) {
            this.mObserver = observer;
            this.mTableIds = tableIds;
            this.mTableNames = tableNames;
            if (tableIds.length != 1) {
                this.mSingleTableSet = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(tableNames[0]);
            this.mSingleTableSet = Collections.unmodifiableSet(hashSet);
        }

        public void notifyByTableInvalidStatus(Set<Integer> invalidatedTablesIds) {
            int length = this.mTableIds.length;
            Set<String> set = null;
            for (int i10 = 0; i10 < length; i10++) {
                if (invalidatedTablesIds.contains(Integer.valueOf(this.mTableIds[i10]))) {
                    if (length == 1) {
                        set = this.mSingleTableSet;
                    } else {
                        if (set == null) {
                            set = new HashSet<>(length);
                        }
                        set.add(this.mTableNames[i10]);
                    }
                }
            }
            if (set != null) {
                this.mObserver.onInvalidated(set);
            }
        }

        public void notifyByTableNames(String[] tables) {
            Set<String> set = null;
            if (this.mTableNames.length == 1) {
                int length = tables.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (tables[i10].equalsIgnoreCase(this.mTableNames[0])) {
                        set = this.mSingleTableSet;
                        break;
                    }
                    i10++;
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : tables) {
                    String[] strArr = this.mTableNames;
                    int length2 = strArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length2) {
                            String str2 = strArr[i11];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i11++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.mObserver.onInvalidated(set);
            }
        }
    }

    public static class WeakObserver extends Observer {
        final WeakReference<Observer> mDelegateRef;
        final InvalidationTracker mTracker;

        public WeakObserver(InvalidationTracker tracker, Observer delegate) {
            super(delegate.mTables);
            this.mTracker = tracker;
            this.mDelegateRef = new WeakReference<>(delegate);
        }

        @Override
        public void onInvalidated(Set<String> tables) {
            Observer observer = this.mDelegateRef.get();
            if (observer == null) {
                this.mTracker.removeObserver(this);
            } else {
                observer.onInvalidated(tables);
            }
        }
    }

    public InvalidationTracker(RoomDatabase database, String... tableNames) {
        this(database, new HashMap(), Collections.emptyMap(), tableNames);
    }

    private static void appendTriggerName(StringBuilder builder, String tableName, String triggerType) {
        builder.append("`");
        builder.append("room_table_modification_trigger_");
        builder.append(tableName);
        builder.append(ConstantDescs.DEFAULT_NAME);
        builder.append(triggerType);
        builder.append("`");
    }

    private static void beginTransactionInternal(SupportSQLiteDatabase database) {
        if (database.isWriteAheadLoggingEnabled()) {
            database.beginTransactionNonExclusive();
        } else {
            database.beginTransaction();
        }
    }

    private String[] resolveViews(String[] names) {
        HashSet hashSet = new HashSet();
        for (String str : names) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.mViewTables.containsKey(lowerCase)) {
                hashSet.addAll(this.mViewTables.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private void startTrackingTable(SupportSQLiteDatabase writableDb, int tableId) {
        writableDb.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + tableId + ", 0)");
        String str = this.mTableNames[tableId];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb2.setLength(0);
            sb2.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            appendTriggerName(sb2, str, str2);
            sb2.append(" AFTER ");
            sb2.append(str2);
            sb2.append(" ON `");
            sb2.append(str);
            sb2.append("` BEGIN UPDATE ");
            sb2.append(UPDATE_TABLE_NAME);
            sb2.append(" SET ");
            sb2.append(INVALIDATED_COLUMN_NAME);
            sb2.append(" = 1");
            sb2.append(" WHERE ");
            sb2.append(TABLE_ID_COLUMN_NAME);
            sb2.append(" = ");
            sb2.append(tableId);
            sb2.append(" AND ");
            sb2.append(INVALIDATED_COLUMN_NAME);
            sb2.append(" = 0");
            sb2.append("; END");
            writableDb.execSQL(sb2.toString());
        }
    }

    private void stopTrackingTable(SupportSQLiteDatabase writableDb, int tableId) {
        String str = this.mTableNames[tableId];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb2.setLength(0);
            sb2.append("DROP TRIGGER IF EXISTS ");
            appendTriggerName(sb2, str, str2);
            writableDb.execSQL(sb2.toString());
        }
    }

    private String[] validateAndResolveTableNames(String[] tableNames) {
        String[] resolveViews = resolveViews(tableNames);
        for (String str : resolveViews) {
            if (!this.mTableIdLookup.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        return resolveViews;
    }

    public void addObserver(Observer observer) {
        ObserverWrapper putIfAbsent;
        String[] resolveViews = resolveViews(observer.mTables);
        int[] iArr = new int[resolveViews.length];
        int length = resolveViews.length;
        for (int i10 = 0; i10 < length; i10++) {
            Integer num = this.mTableIdLookup.get(resolveViews[i10].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + resolveViews[i10]);
            }
            iArr[i10] = num.intValue();
        }
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArr, resolveViews);
        synchronized (this.mObserverMap) {
            putIfAbsent = this.mObserverMap.putIfAbsent(observer, observerWrapper);
        }
        if (putIfAbsent == null && this.mObservedTableTracker.onAdded(iArr)) {
            syncTriggers();
        }
    }

    public void addWeakObserver(Observer observer) {
        addObserver(new WeakObserver(this, observer));
    }

    @Deprecated
    public <T> LiveData<T> createLiveData(String[] tableNames, Callable<T> computeFunction) {
        return createLiveData(tableNames, false, computeFunction);
    }

    public boolean ensureInitialization() {
        if (!this.mDatabase.isOpen()) {
            return false;
        }
        if (!this.mInitialized) {
            this.mDatabase.getOpenHelper().getWritableDatabase();
        }
        if (this.mInitialized) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public void internalInit(SupportSQLiteDatabase database) {
        synchronized (this) {
            try {
                if (this.mInitialized) {
                    Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                    return;
                }
                database.execSQL("PRAGMA temp_store = MEMORY;");
                database.execSQL("PRAGMA recursive_triggers='ON';");
                database.execSQL(CREATE_TRACKING_TABLE_SQL);
                syncTriggers(database);
                this.mCleanupStatement = database.compileStatement(RESET_UPDATED_TABLES_SQL);
                this.mInitialized = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void notifyObserversByTableNames(String... tables) {
        synchronized (this.mObserverMap) {
            try {
                Iterator<Map.Entry<Observer, ObserverWrapper>> it = this.mObserverMap.iterator();
                while (it.hasNext()) {
                    Map.Entry<Observer, ObserverWrapper> next = it.next();
                    if (!next.getKey().isRemote()) {
                        next.getValue().notifyByTableNames(tables);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void onAutoCloseCallback() {
        synchronized (this) {
            this.mInitialized = false;
            this.mObservedTableTracker.resetTriggerState();
        }
    }

    public void refreshVersionsAsync() {
        if (this.mPendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.mAutoCloser;
            if (autoCloser != null) {
                autoCloser.incrementCountAndEnsureDbIsOpen();
            }
            this.mDatabase.getQueryExecutor().execute(this.mRefreshRunnable);
        }
    }

    public void refreshVersionsSync() {
        AutoCloser autoCloser = this.mAutoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        syncTriggers();
        this.mRefreshRunnable.run();
    }

    public void removeObserver(final Observer observer) {
        ObserverWrapper remove;
        synchronized (this.mObserverMap) {
            remove = this.mObserverMap.remove(observer);
        }
        if (remove == null || !this.mObservedTableTracker.onRemoved(remove.mTableIds)) {
            return;
        }
        syncTriggers();
    }

    public void setAutoCloser(AutoCloser autoCloser) {
        this.mAutoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new Runnable() {
            @Override
            public final void run() {
                InvalidationTracker.this.onAutoCloseCallback();
            }
        });
    }

    public void startMultiInstanceInvalidation(Context context, String name) {
        this.mMultiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, this, this.mDatabase.getQueryExecutor());
    }

    public void stopMultiInstanceInvalidation() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.mMultiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
            this.mMultiInstanceInvalidationClient = null;
        }
    }

    public void syncTriggers(SupportSQLiteDatabase database) {
        if (database.inTransaction()) {
            return;
        }
        while (true) {
            try {
                Lock closeLock = this.mDatabase.getCloseLock();
                closeLock.lock();
                try {
                    int[] tablesToSync = this.mObservedTableTracker.getTablesToSync();
                    if (tablesToSync == null) {
                        return;
                    }
                    int length = tablesToSync.length;
                    beginTransactionInternal(database);
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            int i11 = tablesToSync[i10];
                            if (i11 == 1) {
                                startTrackingTable(database, i10);
                            } else if (i11 == 2) {
                                stopTrackingTable(database, i10);
                            }
                        } finally {
                        }
                    }
                    database.setTransactionSuccessful();
                    database.endTransaction();
                    this.mObservedTableTracker.onSyncCompleted();
                } finally {
                    closeLock.unlock();
                }
            } catch (SQLiteException | IllegalStateException e10) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
                return;
            }
        }
    }

    public InvalidationTracker(RoomDatabase database, Map<String, String> shadowTablesMap, Map<String, Set<String>> viewTables, String... tableNames) {
        this.mAutoCloser = null;
        this.mPendingRefresh = new AtomicBoolean(false);
        this.mInitialized = false;
        this.mObserverMap = new SafeIterableMap<>();
        this.mRefreshRunnable = new Runnable() {
            private Set<Integer> checkUpdatedTable() {
                HashSet hashSet = new HashSet();
                Cursor query = InvalidationTracker.this.mDatabase.query(new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL));
                while (query.moveToNext()) {
                    try {
                        hashSet.add(Integer.valueOf(query.getInt(0)));
                    } catch (Throwable th2) {
                        query.close();
                        throw th2;
                    }
                }
                query.close();
                if (!hashSet.isEmpty()) {
                    InvalidationTracker.this.mCleanupStatement.executeUpdateDelete();
                }
                return hashSet;
            }

            /* JADX WARN: Code restructure failed: missing block: B:32:0x0085, code lost:
            
                if (r0 != null) goto L38;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
            
                r0.decrementCountAndScheduleClose();
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
            
                if (r1 == null) goto L58;
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00a2, code lost:
            
                if (r1.isEmpty() != false) goto L72;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
            
                r0 = r5.this$0.mObserverMap;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00a8, code lost:
            
                monitor-enter(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
            
                r2 = r5.this$0.mObserverMap.iterator();
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x00b5, code lost:
            
                if (r2.hasNext() == false) goto L68;
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x00b7, code lost:
            
                r2.next().getValue().notifyByTableInvalidStatus(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x00c9, code lost:
            
                monitor-exit(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x00c7, code lost:
            
                r1 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x00cc, code lost:
            
                throw r1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x00cd, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:70:0x0099, code lost:
            
                if (r0 != null) goto L38;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                AutoCloser autoCloser;
                Lock closeLock = InvalidationTracker.this.mDatabase.getCloseLock();
                closeLock.lock();
                Set<Integer> set = null;
                try {
                    try {
                        if (!InvalidationTracker.this.ensureInitialization()) {
                            closeLock.unlock();
                            AutoCloser autoCloser2 = InvalidationTracker.this.mAutoCloser;
                            if (autoCloser2 != null) {
                                autoCloser2.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        if (!InvalidationTracker.this.mPendingRefresh.compareAndSet(true, false)) {
                            closeLock.unlock();
                            AutoCloser autoCloser3 = InvalidationTracker.this.mAutoCloser;
                            if (autoCloser3 != null) {
                                autoCloser3.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        if (InvalidationTracker.this.mDatabase.inTransaction()) {
                            closeLock.unlock();
                            AutoCloser autoCloser4 = InvalidationTracker.this.mAutoCloser;
                            if (autoCloser4 != null) {
                                autoCloser4.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        RoomDatabase roomDatabase = InvalidationTracker.this.mDatabase;
                        if (roomDatabase.mWriteAheadLoggingEnabled) {
                            SupportSQLiteDatabase writableDatabase = roomDatabase.getOpenHelper().getWritableDatabase();
                            writableDatabase.beginTransactionNonExclusive();
                            try {
                                set = checkUpdatedTable();
                                writableDatabase.setTransactionSuccessful();
                                writableDatabase.endTransaction();
                            } catch (Throwable th2) {
                                writableDatabase.endTransaction();
                                throw th2;
                            }
                        } else {
                            set = checkUpdatedTable();
                        }
                        closeLock.unlock();
                        autoCloser = InvalidationTracker.this.mAutoCloser;
                    } finally {
                        closeLock.unlock();
                        AutoCloser autoCloser5 = InvalidationTracker.this.mAutoCloser;
                        if (autoCloser5 != null) {
                            autoCloser5.decrementCountAndScheduleClose();
                        }
                    }
                } catch (SQLiteException e10) {
                    e = e10;
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    closeLock.unlock();
                    autoCloser = InvalidationTracker.this.mAutoCloser;
                } catch (IllegalStateException e11) {
                    e = e11;
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    closeLock.unlock();
                    autoCloser = InvalidationTracker.this.mAutoCloser;
                }
            }
        };
        this.mDatabase = database;
        this.mObservedTableTracker = new ObservedTableTracker(tableNames.length);
        this.mTableIdLookup = new HashMap<>();
        this.mViewTables = viewTables;
        this.mInvalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        int length = tableNames.length;
        this.mTableNames = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = tableNames[i10];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.mTableIdLookup.put(lowerCase, Integer.valueOf(i10));
            String str2 = shadowTablesMap.get(tableNames[i10]);
            if (str2 != null) {
                this.mTableNames[i10] = str2.toLowerCase(locale);
            } else {
                this.mTableNames[i10] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.mTableIdLookup.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.mTableIdLookup;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    public <T> LiveData<T> createLiveData(String[] tableNames, boolean inTransaction, Callable<T> computeFunction) {
        return this.mInvalidationLiveDataContainer.create(validateAndResolveTableNames(tableNames), inTransaction, computeFunction);
    }

    public static abstract class Observer {
        final String[] mTables;

        public Observer(String firstTable, String... rest) {
            String[] strArr = (String[]) Arrays.copyOf(rest, rest.length + 1);
            this.mTables = strArr;
            strArr[rest.length] = firstTable;
        }

        public boolean isRemote() {
            return false;
        }

        public abstract void onInvalidated(Set<String> tables);

        public Observer(String[] tables) {
            this.mTables = (String[]) Arrays.copyOf(tables, tables.length);
        }
    }

    public void syncTriggers() {
        if (this.mDatabase.isOpen()) {
            syncTriggers(this.mDatabase.getOpenHelper().getWritableDatabase());
        }
    }
}
