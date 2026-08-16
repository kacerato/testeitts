package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12062f3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public final class w7 {

    public C12026b3 f63684a;

    public Long f63685b;

    public long f63686c;

    public final C12278e f63687d;

    public w7(C12278e c12278e, byte[] bArr) {
        Objects.requireNonNull(c12278e);
        this.f63687d = c12278e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f1, code lost:
    
        if (r4 == null) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d4  */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C12026b3 a(String str, C12026b3 c12026b3) {
        Cursor cursor;
        Pair pair;
        Object obj;
        String H10 = c12026b3.H();
        List E10 = c12026b3.E();
        C12278e c12278e = this.f63687d;
        c7 c7Var = c12278e.f62657b;
        c7Var.K0();
        Long l10 = (Long) h7.u(c12026b3, "_eid");
        if (l10 != null) {
            if (H10.equals("_ep")) {
                G0.A.r(l10);
                c7Var.K0();
                String str2 = (String) h7.u(c12026b3, "_en");
                ?? r72 = 0;
                if (TextUtils.isEmpty(str2)) {
                    c12278e.f62917a.a().p().b("Extra parameter without an event name. eventId", l10);
                    return null;
                }
                if (this.f63684a == null || this.f63685b == null || l10.longValue() != this.f63685b.longValue()) {
                    C12421w F02 = c7Var.F0();
                    F02.h();
                    F02.j();
                    try {
                        try {
                            cursor = F02.w0().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l10.toString()});
                            try {
                            } catch (SQLiteException e10) {
                                e = e10;
                                F02.f62917a.a().o().b("Error selecting main event", e);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r72 = c7Var;
                            if (r72 != 0) {
                                r72.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e11) {
                        e = e11;
                        cursor = null;
                    } catch (Throwable th3) {
                        th = th3;
                        if (r72 != 0) {
                        }
                        throw th;
                    }
                    if (cursor.moveToFirst()) {
                        try {
                            pair = Pair.create((C12026b3) ((C12017a3) h7.W(C12026b3.O(), cursor.getBlob(0))).q(), Long.valueOf(cursor.getLong(1)));
                            cursor.close();
                        } catch (IOException e12) {
                            F02.f62917a.a().o().d("Failed to merge main event. appId, eventId", B2.x(str), l10, e12);
                        }
                        if (pair != null || (obj = pair.first) == null) {
                            this.f63687d.f62917a.a().p().c("Extra parameter without existing main event. eventName, eventId", str2, l10);
                            return null;
                        }
                        this.f63684a = (C12026b3) obj;
                        this.f63686c = ((Long) pair.second).longValue();
                        this.f63687d.f62657b.K0();
                        this.f63685b = (Long) h7.u(this.f63684a, "_eid");
                    } else {
                        F02.f62917a.a().w().a("Main event not found");
                    }
                    cursor.close();
                    pair = null;
                    if (pair != null) {
                    }
                    this.f63687d.f62917a.a().p().c("Extra parameter without existing main event. eventName, eventId", str2, l10);
                    return null;
                }
                long j10 = this.f63686c - 1;
                this.f63686c = j10;
                if (j10 <= 0) {
                    C12421w F03 = this.f63687d.f62657b.F0();
                    F03.h();
                    F03.f62917a.a().w().b("Clearing complex main event info. appId", str);
                    try {
                        F03.w0().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e13) {
                        F03.f62917a.a().o().b("Error clearing complex main event", e13);
                    }
                } else {
                    this.f63687d.f62657b.F0().H(str, l10, this.f63686c, this.f63684a);
                }
                ArrayList arrayList = new ArrayList();
                for (C12062f3 c12062f3 : this.f63684a.E()) {
                    this.f63687d.f62657b.K0();
                    if (h7.r(c12026b3, c12062f3.F()) == null) {
                        arrayList.add(c12062f3);
                    }
                }
                if (arrayList.isEmpty()) {
                    this.f63687d.f62917a.a().p().b("No unique parameters in main event. eventName", str2);
                } else {
                    arrayList.addAll(E10);
                    E10 = arrayList;
                }
                H10 = str2;
            } else {
                this.f63685b = l10;
                this.f63684a = c12026b3;
                c7Var.K0();
                long longValue = ((Long) h7.v(c12026b3, "_epc", 0L)).longValue();
                this.f63686c = longValue;
                if (longValue <= 0) {
                    c12278e.f62917a.a().p().b("Complex event with zero extra param count. eventName", H10);
                } else {
                    c7Var.F0().H(str, (Long) G0.A.r(l10), this.f63686c, c12026b3);
                }
            }
        }
        C12017a3 c12017a3 = (C12017a3) c12026b3.q();
        c12017a3.E(H10);
        c12017a3.B();
        c12017a3.A(E10);
        return (C12026b3) c12017a3.q();
    }
}
