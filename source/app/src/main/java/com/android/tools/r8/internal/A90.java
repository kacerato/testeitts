package com.android.tools.r8.internal;

import android.provider.CalendarContract;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class A90 implements PI {

    public static final A90 f38548c = new A90(SuffixConstants.EXTENSION_CLASS, 0, 0);

    public static final A90 f38549d = new A90("PACKAGE", 1, 1);

    public static final A90 f38550e = new A90(CalendarContract.ACCOUNT_TYPE_LOCAL, 2, 2);

    public final int f38551b;

    public A90(String str, int i10, int i11) {
        this.f38551b = i11;
    }

    @Override
    public final int getNumber() {
        return this.f38551b;
    }
}
