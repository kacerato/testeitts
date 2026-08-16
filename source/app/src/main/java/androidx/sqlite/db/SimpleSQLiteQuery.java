package androidx.sqlite.db;

public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    private final Object[] mBindArgs;
    private final String mQuery;

    public SimpleSQLiteQuery(String str, Object[] objArr) {
        this.mQuery = str;
        this.mBindArgs = objArr;
    }

    public static void bind(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            bind(supportSQLiteProgram, i10, obj);
        }
    }

    @Override
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        bind(supportSQLiteProgram, this.mBindArgs);
    }

    @Override
    public int getArgCount() {
        Object[] objArr = this.mBindArgs;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    @Override
    public String getSql() {
        return this.mQuery;
    }

    public SimpleSQLiteQuery(String str) {
        this(str, null);
    }

    private static void bind(SupportSQLiteProgram supportSQLiteProgram, int i10, Object obj) {
        if (obj == null) {
            supportSQLiteProgram.bindNull(i10);
            return;
        }
        if (obj instanceof byte[]) {
            supportSQLiteProgram.bindBlob(i10, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            supportSQLiteProgram.bindDouble(i10, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            supportSQLiteProgram.bindDouble(i10, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Long) {
            supportSQLiteProgram.bindLong(i10, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Integer) {
            supportSQLiteProgram.bindLong(i10, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Short) {
            supportSQLiteProgram.bindLong(i10, ((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Byte) {
            supportSQLiteProgram.bindLong(i10, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof String) {
            supportSQLiteProgram.bindString(i10, (String) obj);
            return;
        }
        if (obj instanceof Boolean) {
            supportSQLiteProgram.bindLong(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            return;
        }
        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
    }
}
