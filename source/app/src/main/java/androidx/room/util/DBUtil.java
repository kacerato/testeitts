package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;

public class DBUtil {
    private DBUtil() {
    }

    public static CancellationSignal createCancellationSignal() {
        return new CancellationSignal();
    }

    public static void dropFtsSyncTriggers(SupportSQLiteDatabase db2) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor query = db2.query("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (query.moveToNext()) {
            try {
                arrayList.add(query.getString(0));
            } catch (Throwable th2) {
                query.close();
                throw th2;
            }
        }
        query.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                db2.execSQL("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    @Deprecated
    public static Cursor query(RoomDatabase db2, SupportSQLiteQuery sqLiteQuery, boolean maybeCopy) {
        return query(db2, sqLiteQuery, maybeCopy, null);
    }

    public static int readVersion(File databaseFile) throws IOException {
        AutoCloseable autoCloseable = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(databaseFile).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            allocate.rewind();
            int i10 = allocate.getInt();
            channel.close();
            return i10;
        } catch (Throwable th2) {
            if (0 != 0) {
                autoCloseable.close();
            }
            throw th2;
        }
    }

    public static Cursor query(RoomDatabase db2, SupportSQLiteQuery sqLiteQuery, boolean maybeCopy, CancellationSignal signal) {
        Cursor query = db2.query(sqLiteQuery, signal);
        if (!maybeCopy || !(query instanceof AbstractWindowedCursor)) {
            return query;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) query;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? CursorUtil.copyAndClose(abstractWindowedCursor) : query;
    }
}
