package org.eclipse.jdt.core.util;

public interface ILocalVariableTypeTableEntry {
    int getIndex();

    int getLength();

    char[] getName();

    int getNameIndex();

    char[] getSignature();

    int getSignatureIndex();

    int getStartPC();
}
