package org.eclipse.jdt.core.util;

public interface IAnnotationComponent {
    char[] getComponentName();

    int getComponentNameIndex();

    IAnnotationComponentValue getComponentValue();
}
