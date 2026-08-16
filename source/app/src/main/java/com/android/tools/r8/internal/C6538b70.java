package com.android.tools.r8.internal;

public enum C6538b70 extends EnumC6871d70 {
    public C6538b70() {
        super(2, "IS_NULL");
    }

    @Override
    public final boolean apply(Object obj) {
        return obj == null;
    }

    @Override
    public final String toString() {
        return "Predicates.isNull()";
    }
}
