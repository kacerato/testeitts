package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

class MethodInfoWithTypeAnnotations extends MethodInfoWithParameterAnnotations {
    private TypeAnnotationInfo[] typeAnnotations;

    public MethodInfoWithTypeAnnotations(MethodInfo methodInfo, AnnotationInfo[] annotationInfoArr, AnnotationInfo[][] annotationInfoArr2, TypeAnnotationInfo[] typeAnnotationInfoArr) {
        super(methodInfo, annotationInfoArr, annotationInfoArr2);
        this.typeAnnotations = typeAnnotationInfoArr;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    @Override
    public void initialize() {
        TypeAnnotationInfo[] typeAnnotationInfoArr = this.typeAnnotations;
        int length = typeAnnotationInfoArr == null ? 0 : typeAnnotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.typeAnnotations[i10].initialize();
        }
        super.initialize();
    }

    @Override
    public void reset() {
        TypeAnnotationInfo[] typeAnnotationInfoArr = this.typeAnnotations;
        int length = typeAnnotationInfoArr == null ? 0 : typeAnnotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.typeAnnotations[i10].reset();
        }
        super.reset();
    }
}
