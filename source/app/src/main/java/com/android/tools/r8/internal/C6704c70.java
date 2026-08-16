package com.android.tools.r8.internal;

public enum C6704c70 extends EnumC6871d70 {
    public C6704c70() {
        super(3, "NOT_NULL");
    }

    @Override
    public final boolean apply(Object obj) {
        return obj != null;
    }

    @Override
    public final String toString() {
        return "Predicates.notNull()";
    }
}
