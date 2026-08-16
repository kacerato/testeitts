package org.eclipse.jdt.core.util;

public interface IConstantPool {
    IConstantPoolEntry decodeEntry(int i10);

    int getConstantPoolCount();

    int getEntryKind(int i10);
}
