package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;

public class FieldInfoWithAnnotation extends FieldInfo {
    private AnnotationInfo[] annotations;

    public FieldInfoWithAnnotation(FieldInfo fieldInfo, AnnotationInfo[] annotationInfoArr) {
        super(fieldInfo.reference, fieldInfo.constantPoolOffsets, fieldInfo.structOffset, fieldInfo.version);
        this.accessFlags = fieldInfo.accessFlags;
        this.attributeBytes = fieldInfo.attributeBytes;
        this.constant = fieldInfo.constant;
        this.constantPoolOffsets = fieldInfo.constantPoolOffsets;
        this.descriptor = fieldInfo.descriptor;
        this.name = fieldInfo.name;
        this.signature = fieldInfo.signature;
        this.signatureUtf8Offset = fieldInfo.signatureUtf8Offset;
        this.tagBits = fieldInfo.tagBits;
        this.wrappedConstantValue = fieldInfo.wrappedConstantValue;
        this.annotations = annotationInfoArr;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public void initialize() {
        AnnotationInfo[] annotationInfoArr = this.annotations;
        if (annotationInfoArr != null) {
            int length = annotationInfoArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.annotations[i10].initialize();
            }
        }
        super.initialize();
    }

    @Override
    public void reset() {
        AnnotationInfo[] annotationInfoArr = this.annotations;
        if (annotationInfoArr != null) {
            int length = annotationInfoArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.annotations[i10].reset();
            }
        }
        super.reset();
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        if (this.annotations != null) {
            stringBuffer.append('\n');
            int i10 = 0;
            while (true) {
                AnnotationInfo[] annotationInfoArr = this.annotations;
                if (i10 >= annotationInfoArr.length) {
                    break;
                }
                stringBuffer.append((Object) annotationInfoArr[i10]);
                stringBuffer.append('\n');
                i10++;
            }
        }
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }
}
