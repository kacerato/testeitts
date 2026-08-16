package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.IntersectionType;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class SimpleTypeVisitor8<R, P> extends SimpleTypeVisitor7<R, P> {
    public SimpleTypeVisitor8() {
        super(null);
    }

    @Override
    public R visitIntersection(IntersectionType intersectionType, P p10) {
        return defaultAction(intersectionType, p10);
    }

    public SimpleTypeVisitor8(R r10) {
        super(r10);
    }
}
