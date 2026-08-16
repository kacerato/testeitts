package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    public EntityInsertionAdapter(RoomDatabase database) {
        super(database);
    }

    public abstract void bind(SupportSQLiteStatement statement, T entity);

    public final void insert(T entity) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, entity);
            acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T entity) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, entity);
            return acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<? extends T> entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            long[] jArr = new long[entities.size()];
            Iterator<? extends T> it = entities.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                bind(acquire, it.next());
                jArr[i10] = acquire.executeInsert();
                i10++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            Long[] lArr = new Long[entities.size()];
            Iterator<? extends T> it = entities.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                bind(acquire, it.next());
                lArr[i10] = Long.valueOf(acquire.executeInsert());
                i10++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(T[] entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(entities.length);
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                arrayList.add(i10, Long.valueOf(acquire.executeInsert()));
                i10++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }

    public final void insert(T[] entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            for (T t10 : entities) {
                bind(acquire, t10);
                acquire.executeInsert();
            }
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(T[] entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            long[] jArr = new long[entities.length];
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                jArr[i10] = acquire.executeInsert();
                i10++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(T[] entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            Long[] lArr = new Long[entities.length];
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                lArr[i10] = Long.valueOf(acquire.executeInsert());
                i10++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<? extends T> entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(entities.size());
            Iterator<? extends T> it = entities.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                bind(acquire, it.next());
                arrayList.add(i10, Long.valueOf(acquire.executeInsert()));
                i10++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }

    public final void insert(Iterable<? extends T> entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            Iterator<? extends T> it = entities.iterator();
            while (it.hasNext()) {
                bind(acquire, it.next());
                acquire.executeInsert();
            }
        } finally {
            release(acquire);
        }
    }
}
