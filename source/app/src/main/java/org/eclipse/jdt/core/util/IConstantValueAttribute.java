package org.eclipse.jdt.core.util;

public interface IConstantValueAttribute extends IClassFileAttribute {
    IConstantPoolEntry getConstantValue();

    int getConstantValueIndex();
}
