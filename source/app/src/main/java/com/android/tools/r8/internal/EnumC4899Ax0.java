package com.android.tools.r8.internal;

import android.provider.CalendarContract;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC4899Ax0 {

    public static final C8831ou f38748c = new C8831ou(new EnumC4899Ax0[]{new EnumC4899Ax0("INTERNAL", 0, 0), new EnumC4899Ax0("PRIVATE", 1, 1), new EnumC4899Ax0("PROTECTED", 2, 2), new EnumC4899Ax0("PUBLIC", 3, 3), new EnumC4899Ax0("PRIVATE_TO_THIS", 4, 4), new EnumC4899Ax0(CalendarContract.ACCOUNT_TYPE_LOCAL, 5, 5)});

    public final C9841ux f38749b;

    public EnumC4899Ax0(String str, int i10, int i11) {
        C10175wx c10175wx = AbstractC10509yx.f54220c;
        GJ.b(c10175wx, "VISIBILITY");
        this.f38749b = new C9841ux(c10175wx, i11);
    }
}
