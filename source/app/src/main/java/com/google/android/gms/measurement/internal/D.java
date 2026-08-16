package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;

public final class D {

    public final String f62586a;

    public final String f62587b;

    public final String f62588c;

    public final long f62589d;

    public final long f62590e;

    public final G f62591f;

    public D(C12370p3 c12370p3, String str, String str2, String str3, long j10, long j11, Bundle bundle) {
        G g10;
        G0.A.l(str2);
        G0.A.l(str3);
        this.f62586a = str2;
        this.f62587b = str3;
        this.f62588c = true == TextUtils.isEmpty(str) ? null : str;
        this.f62589d = j10;
        this.f62590e = j11;
        if (j11 != 0 && j11 > j10) {
            c12370p3.a().r().b("Event created with reverse previous/current timestamps. appId", B2.x(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    c12370p3.a().o().a("Param name can't be null");
                    it.remove();
                } else {
                    Object s10 = c12370p3.C().s(next, bundle2.get(next));
                    if (s10 == null) {
                        c12370p3.a().r().b("Param value can't be null", c12370p3.D().b(next));
                        it.remove();
                    } else {
                        c12370p3.C().A(bundle2, next, s10);
                    }
                }
            }
            g10 = new G(bundle2);
        } else {
            g10 = new G(new Bundle());
        }
        this.f62591f = g10;
    }

    public final D a(C12370p3 c12370p3, long j10) {
        return new D(c12370p3, this.f62588c, this.f62586a, this.f62587b, this.f62589d, j10, this.f62591f);
    }

    public final String toString() {
        String obj = this.f62591f.toString();
        String str = this.f62586a;
        int length = String.valueOf(str).length();
        String str2 = this.f62587b;
        StringBuilder sb2 = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + obj.length() + 1);
        sb2.append("Event{appId='");
        sb2.append(str);
        sb2.append("', name='");
        sb2.append(str2);
        sb2.append("', params=");
        sb2.append(obj);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public D(C12370p3 c12370p3, String str, String str2, String str3, long j10, long j11, G g10) {
        G0.A.l(str2);
        G0.A.l(str3);
        G0.A.r(g10);
        this.f62586a = str2;
        this.f62587b = str3;
        this.f62588c = true == TextUtils.isEmpty(str) ? null : str;
        this.f62589d = j10;
        this.f62590e = j11;
        if (j11 != 0 && j11 > j10) {
            c12370p3.a().r().c("Event created with reverse previous/current timestamps. appId, name", B2.x(str2), B2.x(str3));
        }
        this.f62591f = g10;
    }
}
