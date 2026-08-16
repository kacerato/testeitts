package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.util.Locale;

public enum C9337rw extends EnumC9504sw {
    public C9337rw() {
        super(6, "LOWER_CASE_WITH_DOTS");
    }

    @Override
    public final String a(Field field) {
        return EnumC9504sw.a(field.getName(), '.').toLowerCase(Locale.ENGLISH);
    }
}
