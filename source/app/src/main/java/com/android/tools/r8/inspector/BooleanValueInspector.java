package com.android.tools.r8.inspector;

public interface BooleanValueInspector extends ValueInspector {
    boolean getBooleanValue();

    @Override
    boolean isPrimitive();
}
