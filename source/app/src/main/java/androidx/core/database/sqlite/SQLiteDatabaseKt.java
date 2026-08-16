package androidx.core.database.sqlite;

import Mf.l;
import android.database.sqlite.SQLiteDatabase;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;

public final class SQLiteDatabaseKt {
    public static final <T> T transaction(SQLiteDatabase sQLiteDatabase, boolean z10, l<? super SQLiteDatabase, ? extends T> body) {
        M.p(sQLiteDatabase, "<this>");
        M.p(body, "body");
        if (z10) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            T invoke = body.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            return invoke;
        } finally {
            J.d(1);
            sQLiteDatabase.endTransaction();
            J.c(1);
        }
    }

    public static Object transaction$default(SQLiteDatabase sQLiteDatabase, boolean z10, l body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        M.p(sQLiteDatabase, "<this>");
        M.p(body, "body");
        if (z10) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            Object invoke = body.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            return invoke;
        } finally {
            J.d(1);
            sQLiteDatabase.endTransaction();
            J.c(1);
        }
    }
}
