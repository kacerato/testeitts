package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.util.Locale;

public enum C9004pw extends EnumC9504sw {
    public C9004pw() {
        super(4, "LOWER_CASE_WITH_UNDERSCORES");
    }

    @Override
    public final String a(Field field) {
        return EnumC9504sw.a(field.getName(), '_').toLowerCase(Locale.ENGLISH);
    }
}
