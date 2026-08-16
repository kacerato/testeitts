package com.android.tools.r8.inspector;

public interface CharValueInspector extends ValueInspector {
    char getCharValue();

    @Override
    boolean isPrimitive();
}
