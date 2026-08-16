package org.eclipse.jdt.core.util;

public interface IRuntimeVisibleParameterAnnotationsAttribute extends IClassFileAttribute {
    IParameterAnnotation[] getParameterAnnotations();

    int getParametersNumber();
}
