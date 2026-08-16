package org.eclipse.jdt.core.util;

public interface IClassFileAttribute {
    long getAttributeLength();

    char[] getAttributeName();

    int getAttributeNameIndex();
}
