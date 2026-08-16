package org.eclipse.jdt.core.util;

public interface IExceptionAttribute extends IClassFileAttribute {
    int[] getExceptionIndexes();

    char[][] getExceptionNames();

    int getExceptionsNumber();
}
