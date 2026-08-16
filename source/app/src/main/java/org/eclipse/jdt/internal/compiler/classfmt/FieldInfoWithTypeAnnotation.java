package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public final class FieldInfoWithTypeAnnotation extends FieldInfoWithAnnotation {
    private TypeAnnotationInfo[] typeAnnotations;

    public FieldInfoWithTypeAnnotation(FieldInfo fieldInfo, AnnotationInfo[] annotationInfoArr, TypeAnnotationInfo[] typeAnnotationInfoArr) {
        super(fieldInfo, annotationInfoArr);
        this.typeAnnotations = typeAnnotationInfoArr;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    @Override
    public void initialize() {
        int length = this.typeAnnotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.typeAnnotations[i10].initialize();
        }
        super.initialize();
    }

    @Override
    public void reset() {
        TypeAnnotationInfo[] typeAnnotationInfoArr = this.typeAnnotations;
        if (typeAnnotationInfoArr != null) {
            int length = typeAnnotationInfoArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.typeAnnotations[i10].reset();
            }
        }
        super.reset();
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(FieldInfoWithTypeAnnotation.class.getName());
        if (this.typeAnnotations != null) {
            stringBuffer.append('\n');
            stringBuffer.append("type annotations:");
            int i10 = 0;
            while (true) {
                TypeAnnotationInfo[] typeAnnotationInfoArr = this.typeAnnotations;
                if (i10 >= typeAnnotationInfoArr.length) {
                    break;
                }
                stringBuffer.append((Object) typeAnnotationInfoArr[i10]);
                stringBuffer.append('\n');
                i10++;
            }
        }
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }
}
