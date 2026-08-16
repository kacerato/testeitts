package org.eclipse.jdt.core.util;

public interface IRuntimeVisibleAnnotationsAttribute extends IClassFileAttribute {
    IAnnotation[] getAnnotations();

    int getAnnotationsNumber();
}
