package com.android.tools.r8.inspector;

public interface ShortValueInspector extends ValueInspector {
    short getShortValue();

    @Override
    boolean isPrimitive();
}
