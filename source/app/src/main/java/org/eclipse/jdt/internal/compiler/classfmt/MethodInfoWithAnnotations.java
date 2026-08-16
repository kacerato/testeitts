package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;

public class MethodInfoWithAnnotations extends MethodInfo {
    protected AnnotationInfo[] annotations;

    public MethodInfoWithAnnotations(MethodInfo methodInfo, AnnotationInfo[] annotationInfoArr) {
        super(methodInfo.reference, methodInfo.constantPoolOffsets, methodInfo.structOffset, methodInfo.version);
        this.annotations = annotationInfoArr;
        this.accessFlags = methodInfo.accessFlags;
        this.attributeBytes = methodInfo.attributeBytes;
        this.descriptor = methodInfo.descriptor;
        this.exceptionNames = methodInfo.exceptionNames;
        this.name = methodInfo.name;
        this.signature = methodInfo.signature;
        this.signatureUtf8Offset = methodInfo.signatureUtf8Offset;
        this.tagBits = methodInfo.tagBits;
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
