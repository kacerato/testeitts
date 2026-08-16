package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.VariableElement;

@SupportedSourceVersion(SourceVersion.RELEASE_7)
public class SimpleElementVisitor7<R, P> extends SimpleElementVisitor6<R, P> {
    public SimpleElementVisitor7() {
        super(null);
    }

    @Override
    public R visitVariable(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public SimpleElementVisitor7(R r10) {
        super(r10);
    }
}
