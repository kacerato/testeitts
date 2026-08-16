package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();
    int mArgCount;
    private final int[] mBindingTypes;
    final byte[][] mBlobBindings;
    final int mCapacity;
    final double[] mDoubleBindings;
    final long[] mLongBindings;
    private volatile String mQuery;
    final String[] mStringBindings;

    private RoomSQLiteQuery(int capacity) {
        this.mCapacity = capacity;
        int i10 = capacity + 1;
        this.mBindingTypes = new int[i10];
        this.mLongBindings = new long[i10];
        this.mDoubleBindings = new double[i10];
        this.mStringBindings = new String[i10];
        this.mBlobBindings = new byte[i10];
    }

    public static RoomSQLiteQuery acquire(String query, int argumentCount) {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            try {
                Map.Entry<Integer, RoomSQLiteQuery> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(argumentCount));
                if (ceilingEntry == null) {
                    RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(argumentCount);
                    roomSQLiteQuery.init(query, argumentCount);
                    return roomSQLiteQuery;
                }
                treeMap.remove(ceilingEntry.getKey());
                RoomSQLiteQuery value = ceilingEntry.getValue();
                value.init(query, argumentCount);
                return value;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static RoomSQLiteQuery copyFrom(SupportSQLiteQuery supportSQLiteQuery) {
        RoomSQLiteQuery acquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
        supportSQLiteQuery.bindTo(new SupportSQLiteProgram() {
            @Override
            public void bindBlob(int index, byte[] value) {
                RoomSQLiteQuery.this.bindBlob(index, value);
            }

            @Override
            public void bindDouble(int index, double value) {
                RoomSQLiteQuery.this.bindDouble(index, value);
            }

            @Override
            public void bindLong(int index, long value) {
                RoomSQLiteQuery.this.bindLong(index, value);
            }

            @Override
            public void bindNull(int index) {
                RoomSQLiteQuery.this.bindNull(index);
            }

            @Override
            public void bindString(int index, String value) {
                RoomSQLiteQuery.this.bindString(index, value);
            }

            @Override
            public void clearBindings() {
                RoomSQLiteQuery.this.clearBindings();
            }

            @Override
            public void close() {
            }
        });
        return acquire;
    }

    private static void prunePoolLocked() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it = treeMap.descendingKeySet().iterator();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i10;
        }
    }

    @Override
    public void bindBlob(int index, byte[] value) {
        this.mBindingTypes[index] = 5;
        this.mBlobBindings[index] = value;
    }

    @Override
    public void bindDouble(int index, double value) {
        this.mBindingTypes[index] = 3;
        this.mDoubleBindings[index] = value;
    }

    @Override
    public void bindLong(int index, long value) {
        this.mBindingTypes[index] = 2;
        this.mLongBindings[index] = value;
    }

    @Override
    public void bindNull(int index) {
        this.mBindingTypes[index] = 1;
    }

    @Override
    public void bindString(int index, String value) {
        this.mBindingTypes[index] = 4;
        this.mStringBindings[index] = value;
    }

    @Override
    public void bindTo(SupportSQLiteProgram program) {
        for (int i10 = 1; i10 <= this.mArgCount; i10++) {
            int i11 = this.mBindingTypes[i10];
            if (i11 == 1) {
                program.bindNull(i10);
            } else if (i11 == 2) {
                program.bindLong(i10, this.mLongBindings[i10]);
            } else if (i11 == 3) {
                program.bindDouble(i10, this.mDoubleBindings[i10]);
            } else if (i11 == 4) {
                program.bindString(i10, this.mStringBindings[i10]);
            } else if (i11 == 5) {
                program.bindBlob(i10, this.mBlobBindings[i10]);
            }
        }
    }

    @Override
    public void clearBindings() {
        Arrays.fill(this.mBindingTypes, 1);
        Arrays.fill(this.mStringBindings, (Object) null);
        Arrays.fill(this.mBlobBindings, (Object) null);
        this.mQuery = null;
    }

    @Override
    public void close() {
    }

    public void copyArgumentsFrom(RoomSQLiteQuery other) {
        int argCount = other.getArgCount() + 1;
        System.arraycopy(other.mBindingTypes, 0, this.mBindingTypes, 0, argCount);
        System.arraycopy(other.mLongBindings, 0, this.mLongBindings, 0, argCount);
        System.arraycopy(other.mStringBindings, 0, this.mStringBindings, 0, argCount);
        System.arraycopy(other.mBlobBindings, 0, this.mBlobBindings, 0, argCount);
        System.arraycopy(other.mDoubleBindings, 0, this.mDoubleBindings, 0, argCount);
    }

    @Override
    public int getArgCount() {
        return this.mArgCount;
    }

    @Override
    public String getSql() {
        return this.mQuery;
    }

    public void init(String query, int argCount) {
        this.mQuery = query;
        this.mArgCount = argCount;
    }

    public void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }
}
