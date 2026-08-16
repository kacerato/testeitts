package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.AbstractC12032c0;
import java.util.Objects;

public final class C12377q2 extends AbstractC12032c0 {

    public final C12392s2 f63528b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12377q2(C12392s2 c12392s2, Context context, String str) {
        super(context, "google_app_measurement_local.db", null, 1);
        Objects.requireNonNull(c12392s2);
        this.f63528b = c12392s2;
    }

    @Override
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e10) {
            throw e10;
        } catch (SQLiteException unused) {
            C12370p3 c12370p3 = this.f63528b.f62917a;
            c12370p3.a().o().a("Opening the local database failed, dropping and recreating it");
            c12370p3.w();
            if (!c12370p3.d().getDatabasePath("google_app_measurement_local.db").delete()) {
                c12370p3.a().o().b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e11) {
                this.f63528b.f62917a.a().o().b("Failed to open local database. Events will bypass local storage", e11);
                return null;
            }
        }
    }

    @Override
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C12429x.b(this.f63528b.f62917a.a(), sQLiteDatabase);
    }

    @Override
    @WorkerThread
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override
    @WorkerThread
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        strArr = C12392s2.f63571e;
        C12429x.a(this.f63528b.f62917a.a(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", strArr);
    }

    @Override
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
