package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
public class SimpleTypeVisitor9<R, P> extends SimpleTypeVisitor8<R, P> {
    public SimpleTypeVisitor9() {
        super(null);
    }

    public SimpleTypeVisitor9(R r10) {
        super(r10);
    }
}
