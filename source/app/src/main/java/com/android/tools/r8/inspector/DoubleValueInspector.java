package com.android.tools.r8.inspector;

public interface DoubleValueInspector extends ValueInspector {
    double getDoubleValue();

    @Override
    boolean isPrimitive();
}
