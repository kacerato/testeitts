package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class BinaryTypeFormatter {
    public static String annotationToString(IBinaryAnnotation iBinaryAnnotation) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('@');
        stringBuffer.append(iBinaryAnnotation.getTypeName());
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        if (elementValuePairs != null) {
            stringBuffer.append('(');
            stringBuffer.append("\n\t");
            int length = elementValuePairs.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(",\n\t");
                }
                stringBuffer.append((Object) elementValuePairs[i10]);
            }
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }

    public static String methodToString(IBinaryMethod iBinaryMethod) {
        StringBuffer stringBuffer = new StringBuffer();
        methodToStringContent(stringBuffer, iBinaryMethod);
        return stringBuffer.toString();
    }

    public static void methodToStringContent(StringBuffer stringBuffer, IBinaryMethod iBinaryMethod) {
        int modifiers = iBinaryMethod.getModifiers();
        char[] genericSignature = iBinaryMethod.getGenericSignature();
        if (genericSignature == null) {
            genericSignature = iBinaryMethod.getMethodDescriptor();
        }
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        StringBuilder sb2 = new StringBuilder(String.valueOf((1048576 & modifiers) != 0 ? "deprecated " : Util.EMPTY_STRING));
        sb2.append((modifiers & 1) == 1 ? "public " : Util.EMPTY_STRING);
        sb2.append((modifiers & 2) == 2 ? "private " : Util.EMPTY_STRING);
        sb2.append((modifiers & 4) == 4 ? "protected " : Util.EMPTY_STRING);
        sb2.append((modifiers & 8) == 8 ? "static " : Util.EMPTY_STRING);
        sb2.append((modifiers & 16) == 16 ? "final " : Util.EMPTY_STRING);
        sb2.append((modifiers & 64) == 64 ? "bridge " : Util.EMPTY_STRING);
        sb2.append((modifiers & 128) == 128 ? "varargs " : Util.EMPTY_STRING);
        stringBuffer.append(sb2.toString());
        stringBuffer.append(iBinaryMethod.getSelector());
        stringBuffer.append(genericSignature);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        Object defaultValue = iBinaryMethod.getDefaultValue();
        if (defaultValue != null) {
            stringBuffer.append(" default ");
            if (defaultValue instanceof Object[]) {
                stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                Object[] objArr = (Object[]) defaultValue;
                int length = objArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(objArr[i10]);
                }
                stringBuffer.append(JavaElement.JEM_ANNOTATION);
            } else {
                stringBuffer.append(defaultValue);
            }
            stringBuffer.append('\n');
        }
        IBinaryAnnotation[] annotations = iBinaryMethod.getAnnotations();
        int length2 = annotations == null ? 0 : annotations.length;
        for (int i11 = 0; i11 < length2; i11++) {
            stringBuffer.append((Object) annotations[i11]);
            stringBuffer.append('\n');
        }
        int annotatedParametersCount = iBinaryMethod.getAnnotatedParametersCount();
        for (int i12 = 0; i12 < annotatedParametersCount; i12++) {
            StringBuilder sb3 = new StringBuilder("param");
            sb3.append(i12 - 1);
            stringBuffer.append(sb3.toString());
            stringBuffer.append('\n');
            IBinaryAnnotation[] parameterAnnotations = iBinaryMethod.getParameterAnnotations(i12, new char[0]);
            int length3 = parameterAnnotations == null ? 0 : parameterAnnotations.length;
            for (int i13 = 0; i13 < length3; i13++) {
                stringBuffer.append((Object) parameterAnnotations[i13]);
                stringBuffer.append('\n');
            }
        }
    }

    public static String annotationToString(IBinaryTypeAnnotation iBinaryTypeAnnotation) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((Object) iBinaryTypeAnnotation.getAnnotation());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append("target_type=");
        stringBuffer.append(iBinaryTypeAnnotation.getTargetType());
        stringBuffer.append(", info=");
        stringBuffer.append(iBinaryTypeAnnotation.getSupertypeIndex());
        stringBuffer.append(", info2=");
        stringBuffer.append(iBinaryTypeAnnotation.getBoundIndex());
        int[] typePath = iBinaryTypeAnnotation.getTypePath();
        if (typePath != null && typePath.length != 0) {
            stringBuffer.append(", location=[");
            int length = typePath.length;
            for (int i10 = 0; i10 < length; i10 += 2) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                int i11 = typePath[i10];
                if (i11 == 0) {
                    stringBuffer.append("ARRAY");
                } else if (i11 == 1) {
                    stringBuffer.append("INNER_TYPE");
                } else if (i11 == 2) {
                    stringBuffer.append("WILDCARD");
                } else if (i11 == 3) {
                    stringBuffer.append("TYPE_ARGUMENT(");
                    stringBuffer.append(typePath[i10 + 1]);
                    stringBuffer.append(')');
                }
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return stringBuffer.toString();
    }
}
