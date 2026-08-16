package org.eclipse.jdt.core.util;

public interface IRuntimeInvisibleParameterAnnotationsAttribute extends IClassFileAttribute {
    IParameterAnnotation[] getParameterAnnotations();

    int getParametersNumber();
}
