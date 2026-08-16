package com.google.android.gms.internal.measurement;

import com.google.common.collect.AbstractC12564r1;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C12022b {

    public static final AbstractC12564r1 f62226d = AbstractC12564r1.C("_syn", "_err", "_el");

    public String f62227a;

    public final long f62228b;

    public final Map f62229c;

    public C12022b(String str, long j10, Map map) {
        this.f62227a = str;
        this.f62228b = j10;
        HashMap hashMap = new HashMap();
        this.f62229c = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public static Object h(String str, Object obj, Object obj2) {
        if (f62226d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith(ConstantDescs.DEFAULT_NAME)) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    public final long a() {
        return this.f62228b;
    }

    public final String b() {
        return this.f62227a;
    }

    public final void c(String str) {
        this.f62227a = str;
    }

    public final void d(String str, Object obj) {
        if (obj == null) {
            this.f62229c.remove(str);
        } else {
            Map map = this.f62229c;
            map.put(str, h(str, map.get(str), obj));
        }
    }

    public final Object e(String str) {
        Map map = this.f62229c;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12022b)) {
            return false;
        }
        C12022b c12022b = (C12022b) obj;
        if (this.f62228b == c12022b.f62228b && this.f62227a.equals(c12022b.f62227a)) {
            return this.f62229c.equals(c12022b.f62229c);
        }
        return false;
    }

    public final Map f() {
        return this.f62229c;
    }

    public final C12022b clone() {
        return new C12022b(this.f62227a, this.f62228b, new HashMap(this.f62229c));
    }

    public final int hashCode() {
        int hashCode = this.f62227a.hashCode() * 31;
        long j10 = this.f62228b;
        return ((hashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f62229c.hashCode();
    }

    public final String toString() {
        String str = this.f62227a;
        String obj = this.f62229c.toString();
        int length = String.valueOf(str).length();
        long j10 = this.f62228b;
        StringBuilder sb2 = new StringBuilder(length + 25 + String.valueOf(j10).length() + 9 + obj.length() + 1);
        sb2.append("Event{name='");
        sb2.append(str);
        sb2.append("', timestamp=");
        sb2.append(j10);
        sb2.append(", params=");
        sb2.append(obj);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
