package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class ElementKindVisitor8<R, P> extends ElementKindVisitor7<R, P> {
    public ElementKindVisitor8() {
        super(null);
    }

    public ElementKindVisitor8(R r10) {
        super(r10);
    }
}
