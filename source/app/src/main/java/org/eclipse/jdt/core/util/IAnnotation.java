package org.eclipse.jdt.core.util;

public interface IAnnotation {
    IAnnotationComponent[] getComponents();

    int getComponentsNumber();

    int getTypeIndex();

    char[] getTypeName();
}
