package com.android.tools.r8.inspector;

public interface StringValueInspector extends ValueInspector {
    String getStringValue();

    @Override
    boolean isPrimitive();
}
