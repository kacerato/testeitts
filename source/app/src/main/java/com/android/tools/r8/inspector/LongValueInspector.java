package com.android.tools.r8.inspector;

public interface LongValueInspector extends ValueInspector {
    long getLongValue();

    @Override
    boolean isPrimitive();
}
