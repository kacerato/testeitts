package org.eclipse.jdt.core.util;

public interface ICodeAttribute extends IClassFileAttribute {
    IClassFileAttribute[] getAttributes();

    int getAttributesCount();

    byte[] getBytecodes();

    long getCodeLength();

    IExceptionTableEntry[] getExceptionTable();

    int getExceptionTableLength();

    ILineNumberAttribute getLineNumberAttribute();

    ILocalVariableAttribute getLocalVariableAttribute();

    int getMaxLocals();

    int getMaxStack();

    void traverse(IBytecodeVisitor iBytecodeVisitor) throws ClassFormatException;
}
