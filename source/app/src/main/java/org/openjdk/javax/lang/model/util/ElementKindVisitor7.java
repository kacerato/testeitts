package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.VariableElement;

@SupportedSourceVersion(SourceVersion.RELEASE_7)
public class ElementKindVisitor7<R, P> extends ElementKindVisitor6<R, P> {
    public ElementKindVisitor7() {
        super(null);
    }

    @Override
    public R visitVariableAsResourceVariable(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public ElementKindVisitor7(R r10) {
        super(r10);
    }
}
