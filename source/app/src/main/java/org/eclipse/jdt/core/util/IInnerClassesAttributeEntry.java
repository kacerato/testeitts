package org.eclipse.jdt.core.util;

public interface IInnerClassesAttributeEntry {
    int getAccessFlags();

    char[] getInnerClassName();

    int getInnerClassNameIndex();

    char[] getInnerName();

    int getInnerNameIndex();

    char[] getOuterClassName();

    int getOuterClassNameIndex();
}
