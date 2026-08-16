package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.util.Locale;

public enum C8837ow extends EnumC9504sw {
    public C8837ow() {
        super(3, "UPPER_CASE_WITH_UNDERSCORES");
    }

    @Override
    public final String a(Field field) {
        return EnumC9504sw.a(field.getName(), '_').toUpperCase(Locale.ENGLISH);
    }
}
