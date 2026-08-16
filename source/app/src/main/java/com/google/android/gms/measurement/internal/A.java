package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.openjdk.tools.doclint.DocLint;

public final class A {

    public static final A f62521f = new A((Boolean) null, 100, (Boolean) null, (String) null);

    public final int f62522a;

    public final String f62523b;

    public final Boolean f62524c;

    public final String f62525d;

    public final EnumMap f62526e;

    public A(Boolean bool, int i10, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(Y3.class);
        this.f62526e = enumMap;
        enumMap.put((EnumMap) Y3.AD_USER_DATA, (Y3) Z3.h(bool));
        this.f62522a = i10;
        this.f62523b = l();
        this.f62524c = bool2;
        this.f62525d = str;
    }

    public static A a(W3 w32, int i10) {
        EnumMap enumMap = new EnumMap(Y3.class);
        enumMap.put((EnumMap) Y3.AD_USER_DATA, (Y3) w32);
        return new A(enumMap, -10, (Boolean) null, (String) null);
    }

    public static A g(String str) {
        if (str == null || str.length() <= 0) {
            return f62521f;
        }
        String[] split = str.split(b3.s.f32937c);
        int parseInt = Integer.parseInt(split[0]);
        EnumMap enumMap = new EnumMap(Y3.class);
        Y3[] a10 = X3.DMA.a();
        int length = a10.length;
        int i10 = 1;
        int i11 = 0;
        while (i11 < length) {
            enumMap.put((EnumMap) a10[i11], (Y3) Z3.j(split[i10].charAt(0)));
            i11++;
            i10++;
        }
        return new A(enumMap, parseInt, (Boolean) null, (String) null);
    }

    public static A h(Bundle bundle, int i10) {
        if (bundle == null) {
            return new A((Boolean) null, i10, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(Y3.class);
        for (Y3 y32 : X3.DMA.a()) {
            enumMap.put((EnumMap) y32, (Y3) Z3.g(bundle.getString(y32.zze)));
        }
        return new A(enumMap, i10, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public static Boolean i(Bundle bundle) {
        W3 g10;
        if (bundle == null || (g10 = Z3.g(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int ordinal = g10.ordinal();
        if (ordinal == 2) {
            return Boolean.FALSE;
        }
        if (ordinal != 3) {
            return null;
        }
        return Boolean.TRUE;
    }

    public final int b() {
        return this.f62522a;
    }

    public final W3 c() {
        W3 w32 = (W3) this.f62526e.get(Y3.AD_USER_DATA);
        return w32 == null ? W3.UNINITIALIZED : w32;
    }

    public final boolean d() {
        Iterator it = this.f62526e.values().iterator();
        while (it.hasNext()) {
            if (((W3) it.next()) != W3.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final String e() {
        return this.f62523b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof A)) {
            return false;
        }
        A a10 = (A) obj;
        if (this.f62523b.equalsIgnoreCase(a10.f62523b) && Objects.equals(this.f62524c, a10.f62524c)) {
            return Objects.equals(this.f62525d, a10.f62525d);
        }
        return false;
    }

    public final Bundle f() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f62526e.entrySet()) {
            String i10 = Z3.i((W3) entry.getValue());
            if (i10 != null) {
                bundle.putString(((Y3) entry.getKey()).zze, i10);
            }
        }
        Boolean bool = this.f62524c;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.f62525d;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final int hashCode() {
        Boolean bool = this.f62524c;
        int i10 = bool == null ? 3 : true != bool.booleanValue() ? 13 : 7;
        String str = this.f62525d;
        return this.f62523b.hashCode() + (i10 * 29) + ((str == null ? 17 : str.hashCode()) * 137);
    }

    public final Boolean j() {
        return this.f62524c;
    }

    public final String k() {
        return this.f62525d;
    }

    public final String l() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f62522a);
        for (Y3 y32 : X3.DMA.a()) {
            sb2.append(b3.s.f32937c);
            sb2.append(Z3.m((W3) this.f62526e.get(y32)));
        }
        return sb2.toString();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(Z3.d(this.f62522a));
        for (Y3 y32 : X3.DMA.a()) {
            sb2.append(DocLint.SEPARATOR);
            sb2.append(y32.zze);
            sb2.append("=");
            W3 w32 = (W3) this.f62526e.get(y32);
            if (w32 == null) {
                sb2.append("uninitialized");
            } else {
                int ordinal = w32.ordinal();
                if (ordinal == 0) {
                    sb2.append("uninitialized");
                } else if (ordinal == 1) {
                    sb2.append("eu_consent_policy");
                } else if (ordinal == 2) {
                    sb2.append("denied");
                } else if (ordinal == 3) {
                    sb2.append("granted");
                }
            }
        }
        Boolean bool = this.f62524c;
        if (bool != null) {
            sb2.append(",isDmaRegion=");
            sb2.append((Object) bool);
        }
        String str = this.f62525d;
        if (str != null) {
            sb2.append(",cpsDisplayStr=");
            sb2.append(str);
        }
        return sb2.toString();
    }

    public A(EnumMap enumMap, int i10, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(Y3.class);
        this.f62526e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f62522a = i10;
        this.f62523b = l();
        this.f62524c = bool;
        this.f62525d = str;
    }
}
