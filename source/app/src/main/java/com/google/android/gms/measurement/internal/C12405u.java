package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12026b3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

public final class C12405u {

    public final String f63604a;

    public long f63605b;

    public final C12421w f63606c;

    public C12405u(C12421w c12421w, String str) {
        Objects.requireNonNull(c12421w);
        this.f63606c = c12421w;
        G0.A.l(str);
        this.f63604a = str;
        this.f63605b = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List a() {
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = this.f63606c.w0().query("raw_events", new String[]{"rowid", "name", "timestamp", "metadata_fingerprint", "data", "realtime"}, "app_id = ? and rowid > ?", new String[]{this.f63604a, String.valueOf(this.f63605b)}, null, null, "rowid", "1000");
            } catch (SQLiteException e10) {
                this.f63606c.f62917a.a().o().c("Data loss. Error querying raw events batch. appId", B2.x(this.f63604a), e10);
            }
            if (!cursor.moveToFirst()) {
                arrayList = Collections.emptyList();
                return arrayList;
            }
            do {
                long j10 = cursor.getLong(0);
                long j11 = cursor.getLong(3);
                boolean z10 = cursor.getLong(5) == 1;
                byte[] blob = cursor.getBlob(4);
                if (j10 > this.f63605b) {
                    this.f63605b = j10;
                }
                try {
                    C12017a3 c12017a3 = (C12017a3) h7.W(C12026b3.O(), blob);
                    String string = cursor.getString(1);
                    if (string == null) {
                        string = "";
                    }
                    c12017a3.E(string);
                    c12017a3.H(cursor.getLong(2));
                    arrayList.add(new C12397t(j10, j11, z10, (C12026b3) c12017a3.q()));
                } catch (IOException e11) {
                    this.f63606c.f62917a.a().o().c("Data loss. Failed to merge raw event. appId", B2.x(this.f63604a), e11);
                }
            } while (cursor.moveToNext());
            return arrayList;
        } finally {
            if (0 != 0) {
                cursor.close();
            }
        }
    }

    public C12405u(C12421w c12421w, String str, long j10) {
        Objects.requireNonNull(c12421w);
        this.f63606c = c12421w;
        G0.A.l(str);
        this.f63604a = str;
        this.f63605b = c12421w.f0("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j10)}, -1L);
    }
}
