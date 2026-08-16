package com.android.tools.r8.inspector;

public interface FloatValueInspector extends ValueInspector {
    float getFloatValue();

    @Override
    boolean isPrimitive();
}
