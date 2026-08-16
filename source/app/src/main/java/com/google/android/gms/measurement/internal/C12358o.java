package com.google.android.gms.measurement.internal;

import java.util.EnumMap;

public final class C12358o {

    public final EnumMap f63426a;

    public C12358o() {
        this.f63426a = new EnumMap(Y3.class);
    }

    public static C12358o d(String str) {
        EnumMap enumMap = new EnumMap(Y3.class);
        if (str.length() >= Y3.values().length) {
            int i10 = 0;
            if (str.charAt(0) == '1') {
                Y3[] values = Y3.values();
                int length = values.length;
                int i11 = 1;
                while (i10 < length) {
                    enumMap.put((EnumMap) values[i10], (Y3) EnumC12350n.a(str.charAt(i11)));
                    i10++;
                    i11++;
                }
                return new C12358o(enumMap);
            }
        }
        return new C12358o();
    }

    public final EnumC12350n a(Y3 y32) {
        EnumC12350n enumC12350n = (EnumC12350n) this.f63426a.get(y32);
        return enumC12350n == null ? EnumC12350n.UNSET : enumC12350n;
    }

    public final void b(Y3 y32, int i10) {
        EnumC12350n enumC12350n = EnumC12350n.UNSET;
        if (i10 != -30) {
            if (i10 != -20) {
                if (i10 == -10) {
                    enumC12350n = EnumC12350n.MANIFEST;
                } else if (i10 != 0) {
                    if (i10 == 30) {
                        enumC12350n = EnumC12350n.INITIALIZATION;
                    }
                }
            }
            enumC12350n = EnumC12350n.API;
        } else {
            enumC12350n = EnumC12350n.TCF;
        }
        this.f63426a.put((EnumMap) y32, (Y3) enumC12350n);
    }

    public final void c(Y3 y32, EnumC12350n enumC12350n) {
        this.f63426a.put((EnumMap) y32, (Y3) enumC12350n);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("1");
        for (Y3 y32 : Y3.values()) {
            EnumC12350n enumC12350n = (EnumC12350n) this.f63426a.get(y32);
            if (enumC12350n == null) {
                enumC12350n = EnumC12350n.UNSET;
            }
            sb2.append(enumC12350n.b());
        }
        return sb2.toString();
    }

    public C12358o(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(Y3.class);
        this.f63426a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
