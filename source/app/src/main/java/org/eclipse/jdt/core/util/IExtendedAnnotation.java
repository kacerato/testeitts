package org.eclipse.jdt.core.util;

public interface IExtendedAnnotation extends IAnnotation {
    int getAnnotationTypeIndex();

    int getExceptionTableIndex();

    int getLocalVariableRefenceInfoLength();

    ILocalVariableReferenceInfo[] getLocalVariableTable();

    int getOffset();

    int getParameterIndex();

    int getTargetType();

    int getTypeParameterBoundIndex();

    int getTypeParameterIndex();

    int[][] getTypePath();
}
