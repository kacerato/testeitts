package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class SimpleAnnotationValueVisitor8<R, P> extends SimpleAnnotationValueVisitor7<R, P> {
    public SimpleAnnotationValueVisitor8() {
        super(null);
    }

    public SimpleAnnotationValueVisitor8(R r10) {
        super(r10);
    }
}
