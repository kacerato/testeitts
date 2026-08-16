package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.IntersectionType;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public abstract class AbstractTypeVisitor8<R, P> extends AbstractTypeVisitor7<R, P> {
    @Override
    public abstract R visitIntersection(IntersectionType intersectionType, P p10);
}
