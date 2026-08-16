package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Iterator;

public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase database) {
        super(database);
    }

    public abstract void bind(SupportSQLiteStatement statement, T entity);

    @Override
    public abstract String createQuery();

    public final int handle(T entity) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, entity);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(Iterable<? extends T> entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            Iterator<? extends T> it = entities.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                bind(acquire, it.next());
                i10 += acquire.executeUpdateDelete();
            }
            return i10;
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(T[] entities) {
        SupportSQLiteStatement acquire = acquire();
        try {
            int i10 = 0;
            for (T t10 : entities) {
                bind(acquire, t10);
                i10 += acquire.executeUpdateDelete();
            }
            return i10;
        } finally {
            release(acquire);
        }
    }
}
