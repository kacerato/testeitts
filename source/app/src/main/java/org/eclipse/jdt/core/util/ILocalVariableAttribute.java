package org.eclipse.jdt.core.util;

public interface ILocalVariableAttribute extends IClassFileAttribute {
    ILocalVariableTableEntry[] getLocalVariableTable();

    int getLocalVariableTableLength();
}
