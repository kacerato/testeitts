package com.android.tools.r8.internal;

import com.google.firebase.analytics.FirebaseAnalytics;

public abstract class U60 {
    public static void a(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(AbstractC4885Aq0.a(str, obj));
        }
    }

    public static void b(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(a(FirebaseAnalytics.d.f67690b0, i10, i11));
        }
    }

    public static void a(int i10, int i11) {
        String a10;
        if (i10 < 0 || i10 >= i11) {
            if (i10 < 0) {
                a10 = AbstractC4885Aq0.a("%s (%s) must not be negative", FirebaseAnalytics.d.f67690b0, Integer.valueOf(i10));
            } else if (i11 >= 0) {
                a10 = AbstractC4885Aq0.a("%s (%s) must be less than size (%s)", FirebaseAnalytics.d.f67690b0, Integer.valueOf(i10), Integer.valueOf(i11));
            } else {
                throw new IllegalArgumentException(T60.a(i11, "negative size: "));
            }
            throw new IndexOutOfBoundsException(a10);
        }
    }

    public static String a(String str, int i10, int i11) {
        if (i10 < 0) {
            return AbstractC4885Aq0.a("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return AbstractC4885Aq0.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException(T60.a(i11, "negative size: "));
    }

    public static void a(int i10, int i11, int i12) {
        String a10;
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            if (i10 < 0 || i10 > i12) {
                a10 = a("start index", i10, i12);
            } else if (i11 >= 0 && i11 <= i12) {
                a10 = AbstractC4885Aq0.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                a10 = a("end index", i11, i12);
            }
            throw new IndexOutOfBoundsException(a10);
        }
    }
}
