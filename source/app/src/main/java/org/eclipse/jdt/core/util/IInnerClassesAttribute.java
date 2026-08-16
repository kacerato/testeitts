package org.eclipse.jdt.core.util;

public interface IInnerClassesAttribute extends IClassFileAttribute {
    IInnerClassesAttributeEntry[] getInnerClassAttributesEntries();

    int getNumberOfClasses();
}
