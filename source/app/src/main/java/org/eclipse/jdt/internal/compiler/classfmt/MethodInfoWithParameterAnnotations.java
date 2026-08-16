package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;

class MethodInfoWithParameterAnnotations extends MethodInfoWithAnnotations {
    private AnnotationInfo[][] parameterAnnotations;

    public MethodInfoWithParameterAnnotations(MethodInfo methodInfo, AnnotationInfo[] annotationInfoArr, AnnotationInfo[][] annotationInfoArr2) {
        super(methodInfo, annotationInfoArr);
        this.parameterAnnotations = annotationInfoArr2;
    }

    @Override
    public int getAnnotatedParametersCount() {
        AnnotationInfo[][] annotationInfoArr = this.parameterAnnotations;
        if (annotationInfoArr == null) {
            return 0;
        }
        return annotationInfoArr.length;
    }

    @Override
    public IBinaryAnnotation[] getParameterAnnotations(int i10, char[] cArr) {
        try {
            AnnotationInfo[][] annotationInfoArr = this.parameterAnnotations;
            if (annotationInfoArr == null) {
                return null;
            }
            return annotationInfoArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            StringBuffer stringBuffer = new StringBuffer("Mismatching number of parameter annotations, ");
            stringBuffer.append(i10);
            stringBuffer.append('>');
            stringBuffer.append(this.parameterAnnotations.length - 1);
            stringBuffer.append(" in ");
            stringBuffer.append(getSelector());
            char[] genericSignature = getGenericSignature();
            if (genericSignature != null) {
                stringBuffer.append(genericSignature);
            } else {
                stringBuffer.append(getMethodDescriptor());
            }
            if (cArr != null) {
                stringBuffer.append(" in ");
                stringBuffer.append(cArr);
            }
            throw new IllegalStateException(stringBuffer.toString(), e10);
        }
    }

    @Override
    public void initialize() {
        AnnotationInfo[][] annotationInfoArr = this.parameterAnnotations;
        int length = annotationInfoArr == null ? 0 : annotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AnnotationInfo[] annotationInfoArr2 = this.parameterAnnotations[i10];
            int length2 = annotationInfoArr2 == null ? 0 : annotationInfoArr2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                annotationInfoArr2[i11].initialize();
            }
        }
        super.initialize();
    }

    @Override
    public void reset() {
        AnnotationInfo[][] annotationInfoArr = this.parameterAnnotations;
        int length = annotationInfoArr == null ? 0 : annotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AnnotationInfo[] annotationInfoArr2 = this.parameterAnnotations[i10];
            int length2 = annotationInfoArr2 == null ? 0 : annotationInfoArr2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                annotationInfoArr2[i11].reset();
            }
        }
        super.reset();
    }
}
