package org.eclipse.jdt.core;

public interface IAnnotatable {
    IAnnotation getAnnotation(String str);

    IAnnotation[] getAnnotations() throws JavaModelException;
}
