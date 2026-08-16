package com.android.tools.r8.inspector;

public interface ByteValueInspector extends ValueInspector {
    byte getByteValue();

    @Override
    boolean isPrimitive();
}
