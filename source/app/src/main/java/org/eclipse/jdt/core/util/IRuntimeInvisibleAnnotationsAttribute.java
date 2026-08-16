package org.eclipse.jdt.core.util;

public interface IRuntimeInvisibleAnnotationsAttribute extends IClassFileAttribute {
    IAnnotation[] getAnnotations();

    int getAnnotationsNumber();
}
