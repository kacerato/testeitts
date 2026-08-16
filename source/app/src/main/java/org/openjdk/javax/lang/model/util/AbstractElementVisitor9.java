package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.ModuleElement;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
public abstract class AbstractElementVisitor9<R, P> extends AbstractElementVisitor8<R, P> {
    @Override
    public abstract R visitModule(ModuleElement moduleElement, P p10);
}
