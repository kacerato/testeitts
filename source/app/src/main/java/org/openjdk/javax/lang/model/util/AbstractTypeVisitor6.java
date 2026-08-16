package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.IntersectionType;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVisitor;
import org.openjdk.javax.lang.model.type.UnionType;
import org.openjdk.javax.lang.model.type.UnknownTypeException;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public abstract class AbstractTypeVisitor6<R, P> implements TypeVisitor<R, P> {
    @Deprecated
    public AbstractTypeVisitor6() {
    }

    @Override
    public final R visit(TypeMirror typeMirror, P p10) {
        return (R) typeMirror.accept(this, p10);
    }

    @Override
    public R visitIntersection(IntersectionType intersectionType, P p10) {
        return visitUnknown(intersectionType, p10);
    }

    @Override
    public R visitUnion(UnionType unionType, P p10) {
        return visitUnknown(unionType, p10);
    }

    @Override
    public R visitUnknown(TypeMirror typeMirror, P p10) {
        throw new UnknownTypeException(typeMirror, p10);
    }

    @Override
    public final R visit(TypeMirror typeMirror) {
        return (R) typeMirror.accept(this, null);
    }
}
