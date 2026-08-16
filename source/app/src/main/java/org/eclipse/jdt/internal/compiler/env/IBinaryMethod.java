package org.eclipse.jdt.internal.compiler.env;

public interface IBinaryMethod extends IGenericMethod {
    int getAnnotatedParametersCount();

    IBinaryAnnotation[] getAnnotations();

    Object getDefaultValue();

    char[][] getExceptionTypeNames();

    char[] getGenericSignature();

    char[] getMethodDescriptor();

    IBinaryAnnotation[] getParameterAnnotations(int i10, char[] cArr);

    char[] getSelector();

    long getTagBits();

    IBinaryTypeAnnotation[] getTypeAnnotations();

    boolean isClinit();
}
