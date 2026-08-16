package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public interface IBinaryField extends IGenericField {
    IBinaryAnnotation[] getAnnotations();

    Constant getConstant();

    char[] getGenericSignature();

    char[] getName();

    long getTagBits();

    IBinaryTypeAnnotation[] getTypeAnnotations();

    char[] getTypeName();
}
