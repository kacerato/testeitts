package org.eclipse.jdt.core.util;

public interface ILocalVariableTableEntry {
    char[] getDescriptor();

    int getDescriptorIndex();

    int getIndex();

    int getLength();

    char[] getName();

    int getNameIndex();

    int getStartPC();
}
