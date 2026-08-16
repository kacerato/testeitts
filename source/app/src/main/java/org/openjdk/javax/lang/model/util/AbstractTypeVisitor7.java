package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.UnionType;

@SupportedSourceVersion(SourceVersion.RELEASE_7)
public abstract class AbstractTypeVisitor7<R, P> extends AbstractTypeVisitor6<R, P> {
    @Override
    public abstract R visitUnion(UnionType unionType, P p10);
}
