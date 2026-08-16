package org.openjdk.javax.lang.model.util;

import java.util.List;
import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.VariableElement;

@SupportedSourceVersion(SourceVersion.RELEASE_7)
public class ElementScanner7<R, P> extends ElementScanner6<R, P> {
    public ElementScanner7() {
        super(null);
    }

    @Override
    public R visitVariable(VariableElement variableElement, P p10) {
        return scan(variableElement.getEnclosedElements(), (List<? extends Element>) p10);
    }

    public ElementScanner7(R r10) {
        super(r10);
    }
}
