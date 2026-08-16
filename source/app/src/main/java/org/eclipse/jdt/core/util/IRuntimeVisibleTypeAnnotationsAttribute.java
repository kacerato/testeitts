package org.eclipse.jdt.core.util;

public interface IRuntimeVisibleTypeAnnotationsAttribute extends IClassFileAttribute {
    IExtendedAnnotation[] getExtendedAnnotations();

    int getExtendedAnnotationsNumber();
}
