package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.util.Locale;

public enum C9171qw extends EnumC9504sw {
    public C9171qw() {
        super(5, "LOWER_CASE_WITH_DASHES");
    }

    @Override
    public final String a(Field field) {
        return EnumC9504sw.a(field.getName(), '-').toLowerCase(Locale.ENGLISH);
    }
}
