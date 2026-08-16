package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
public class SimpleAnnotationValueVisitor9<R, P> extends SimpleAnnotationValueVisitor8<R, P> {
    public SimpleAnnotationValueVisitor9() {
        super(null);
    }

    public SimpleAnnotationValueVisitor9(R r10) {
        super(r10);
    }
}
