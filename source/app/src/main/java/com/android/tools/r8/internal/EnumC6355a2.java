package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Set;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnumC6355a2 {

    public static final EnumC6355a2 f46396b;

    public static final EnumC6355a2 f46397c;

    public static final EnumC6355a2 f46398d;

    public static final EnumC6355a2 f46399e;

    public static final C7286ff0 f46400f;

    public static final EnumC6355a2[] f46401g;

    public static final boolean f46402h = true;

    static {
        C7286ff0 c7286ff0;
        EnumC6355a2 enumC6355a2 = new EnumC6355a2(0, "PUBLIC");
        f46396b = enumC6355a2;
        EnumC6355a2 enumC6355a22 = new EnumC6355a2(1, "PROTECTED");
        f46397c = enumC6355a22;
        EnumC6355a2 enumC6355a23 = new EnumC6355a2(2, "PACKAGE_PRIVATE");
        f46398d = enumC6355a23;
        EnumC6355a2 enumC6355a24 = new EnumC6355a2(3, "PRIVATE");
        f46399e = enumC6355a24;
        EnumC6355a2[] enumC6355a2Arr = {enumC6355a2, enumC6355a22, enumC6355a23, enumC6355a24};
        f46401g = enumC6355a2Arr;
        EnumC6355a2[] enumC6355a2Arr2 = (EnumC6355a2[]) enumC6355a2Arr.clone();
        int i10 = WC.f45336g;
        C6935dZ c6935dZ = C6935dZ.f47416b;
        int length = enumC6355a2Arr2.length;
        Comparable[] comparableArr = (Comparable[]) enumC6355a2Arr2.clone();
        if (length == 0) {
            c7286ff0 = WC.a(c6935dZ);
        } else {
            AbstractC9694u30.a(length, comparableArr);
            Arrays.sort(comparableArr, 0, length, c6935dZ);
            int i11 = 1;
            for (int i12 = 1; i12 < length; i12++) {
                Comparable comparable = comparableArr[i12];
                Comparable comparable2 = comparableArr[i11 - 1];
                comparable.getClass();
                comparable2.getClass();
                if (comparable.compareTo(comparable2) != 0) {
                    comparableArr[i11] = comparable;
                    i11++;
                }
            }
            Arrays.fill(comparableArr, i11, length, (Object) null);
            c7286ff0 = new C7286ff0(AbstractC7552hC.b(i11, comparableArr), c6935dZ);
        }
        f46400f = c7286ff0;
    }

    public EnumC6355a2(int i10, String str) {
    }

    public final String a() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return "public";
        }
        if (ordinal == 1) {
            return "protected";
        }
        if (ordinal == 2) {
            throw new FN("No source syntax for package-private visibility.");
        }
        if (ordinal == 3) {
            return "private";
        }
        throw new FN("Unexpected access visibility: " + ((Object) this));
    }

    public static boolean a(Set set) {
        return set.size() == ((EnumC6355a2[]) f46401g.clone()).length;
    }
}
