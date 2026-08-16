package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.ModuleElement;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
public class SimpleElementVisitor9<R, P> extends SimpleElementVisitor8<R, P> {
    public SimpleElementVisitor9() {
        super(null);
    }

    @Override
    public R visitModule(ModuleElement moduleElement, P p10) {
        return defaultAction(moduleElement, p10);
    }

    public SimpleElementVisitor9(R r10) {
        super(r10);
    }
}
