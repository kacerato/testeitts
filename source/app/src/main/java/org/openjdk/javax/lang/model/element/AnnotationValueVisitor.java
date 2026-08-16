package org.openjdk.javax.lang.model.element;

import java.util.List;
import org.openjdk.javax.lang.model.type.TypeMirror;

public interface AnnotationValueVisitor<R, P> {
    default R visit(AnnotationValue annotationValue) {
        return visit(annotationValue, null);
    }

    R visit(AnnotationValue annotationValue, P p10);

    R visitAnnotation(AnnotationMirror annotationMirror, P p10);

    R visitArray(List<? extends AnnotationValue> list, P p10);

    R visitBoolean(boolean z10, P p10);

    R visitByte(byte b10, P p10);

    R visitChar(char c10, P p10);

    R visitDouble(double d10, P p10);

    R visitEnumConstant(VariableElement variableElement, P p10);

    R visitFloat(float f10, P p10);

    R visitInt(int i10, P p10);

    R visitLong(long j10, P p10);

    R visitShort(short s10, P p10);

    R visitString(String str, P p10);

    R visitType(TypeMirror typeMirror, P p10);

    R visitUnknown(AnnotationValue annotationValue, P p10);
}
