package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

class AnnotationMethodInfoWithTypeAnnotations extends AnnotationMethodInfoWithAnnotations {
    private TypeAnnotationInfo[] typeAnnotations;

    public AnnotationMethodInfoWithTypeAnnotations(MethodInfo methodInfo, Object obj, AnnotationInfo[] annotationInfoArr, TypeAnnotationInfo[] typeAnnotationInfoArr) {
        super(methodInfo, obj, annotationInfoArr);
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
