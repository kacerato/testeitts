package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.IntersectionType;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class TypeKindVisitor8<R, P> extends TypeKindVisitor7<R, P> {
    public TypeKindVisitor8() {
        super(null);
    }

    @Override
    public R visitIntersection(IntersectionType intersectionType, P p10) {
        return defaultAction(intersectionType, p10);
    }

    public TypeKindVisitor8(R r10) {
        super(r10);
    }
}
