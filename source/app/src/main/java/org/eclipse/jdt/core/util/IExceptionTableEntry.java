package org.eclipse.jdt.core.util;

public interface IExceptionTableEntry {
    char[] getCatchType();

    int getCatchTypeIndex();

    int getEndPC();

    int getHandlerPC();

    int getStartPC();
}
