package org.openjdk.javax.lang.model.util;

import java.util.List;
import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.TypeMirror;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public class SimpleAnnotationValueVisitor6<R, P> extends AbstractAnnotationValueVisitor6<R, P> {
    protected final R DEFAULT_VALUE;

    @Deprecated
    public SimpleAnnotationValueVisitor6() {
        this.DEFAULT_VALUE = null;
    }

    public R defaultAction(Object obj, P p10) {
        return this.DEFAULT_VALUE;
    }

    @Override
    public R visitAnnotation(AnnotationMirror annotationMirror, P p10) {
        return defaultAction(annotationMirror, p10);
    }

    @Override
    public R visitArray(List<? extends AnnotationValue> list, P p10) {
        return defaultAction(list, p10);
    }

    @Override
    public R visitBoolean(boolean z10, P p10) {
        return defaultAction(Boolean.valueOf(z10), p10);
    }

    @Override
    public R visitByte(byte b10, P p10) {
        return defaultAction(Byte.valueOf(b10), p10);
    }

    @Override
    public R visitChar(char c10, P p10) {
        return defaultAction(Character.valueOf(c10), p10);
    }

    @Override
    public R visitDouble(double d10, P p10) {
        return defaultAction(Double.valueOf(d10), p10);
    }

    @Override
    public R visitEnumConstant(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    @Override
    public R visitFloat(float f10, P p10) {
        return defaultAction(Float.valueOf(f10), p10);
    }

    @Override
    public R visitInt(int i10, P p10) {
        return defaultAction(Integer.valueOf(i10), p10);
    }

    @Override
    public R visitLong(long j10, P p10) {
        return defaultAction(Long.valueOf(j10), p10);
    }

    @Override
    public R visitShort(short s10, P p10) {
        return defaultAction(Short.valueOf(s10), p10);
    }

    @Override
    public R visitString(String str, P p10) {
        return defaultAction(str, p10);
    }

    @Override
    public R visitType(TypeMirror typeMirror, P p10) {
        return defaultAction(typeMirror, p10);
    }

    @Deprecated
    public SimpleAnnotationValueVisitor6(R r10) {
        this.DEFAULT_VALUE = r10;
    }
}
