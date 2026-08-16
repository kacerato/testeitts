package org.eclipse.jdt.core.util;

public interface ILocalVariableTypeTableAttribute extends IClassFileAttribute {
    ILocalVariableTypeTableEntry[] getLocalVariableTypeTable();

    int getLocalVariableTypeTableLength();
}
