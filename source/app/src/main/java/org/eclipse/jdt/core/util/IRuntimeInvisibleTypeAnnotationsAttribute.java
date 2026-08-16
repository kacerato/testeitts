package org.eclipse.jdt.core.util;

public interface IRuntimeInvisibleTypeAnnotationsAttribute extends IClassFileAttribute {
    IExtendedAnnotation[] getExtendedAnnotations();

    int getExtendedAnnotationsNumber();
}
