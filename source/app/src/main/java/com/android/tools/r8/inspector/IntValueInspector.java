package com.android.tools.r8.inspector;

public interface IntValueInspector extends ValueInspector {
    int getIntValue();

    @Override
    boolean isPrimitive();
}
