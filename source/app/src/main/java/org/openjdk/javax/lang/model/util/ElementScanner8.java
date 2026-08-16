package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;

@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class ElementScanner8<R, P> extends ElementScanner7<R, P> {
    public ElementScanner8() {
        super(null);
    }

    public ElementScanner8(R r10) {
        super(r10);
    }
}
