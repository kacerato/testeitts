package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.UnionType;

@SupportedSourceVersion(SourceVersion.RELEASE_7)
public class TypeKindVisitor7<R, P> extends TypeKindVisitor6<R, P> {
    public TypeKindVisitor7() {
        super(null);
    }

    @Override
    public R visitUnion(UnionType unionType, P p10) {
        return defaultAction(unionType, p10);
    }

    public TypeKindVisitor7(R r10) {
        super(r10);
    }
}
