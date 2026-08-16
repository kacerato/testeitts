package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;

public class AnnotationMethodInfoWithAnnotations extends AnnotationMethodInfo {
    private AnnotationInfo[] annotations;

    public AnnotationMethodInfoWithAnnotations(MethodInfo methodInfo, Object obj, AnnotationInfo[] annotationInfoArr) {
        super(methodInfo, obj);
        this.annotations = annotationInfoArr;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public void initialize() {
        AnnotationInfo[] annotationInfoArr = this.annotations;
        int length = annotationInfoArr == null ? 0 : annotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AnnotationInfo annotationInfo = this.annotations[i10];
            if (annotationInfo != null) {
                annotationInfo.initialize();
            }
        }
        super.initialize();
    }

    @Override
    public void reset() {
        AnnotationInfo[] annotationInfoArr = this.annotations;
        int length = annotationInfoArr == null ? 0 : annotationInfoArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AnnotationInfo annotationInfo = this.annotations[i10];
            if (annotationInfo != null) {
                annotationInfo.reset();
            }
        }
        super.reset();
    }
}
