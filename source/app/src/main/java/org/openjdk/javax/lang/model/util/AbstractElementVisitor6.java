package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementVisitor;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.UnknownElementException;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public abstract class AbstractElementVisitor6<R, P> implements ElementVisitor<R, P> {
    @Deprecated
    public AbstractElementVisitor6() {
    }

    @Override
    public final R visit(Element element, P p10) {
        return (R) element.accept(this, p10);
    }

    @Override
    public R visitModule(ModuleElement moduleElement, P p10) {
        return (R) super.visitModule(moduleElement, p10);
    }

    @Override
    public R visitUnknown(Element element, P p10) {
        throw new UnknownElementException(element, p10);
    }

    @Override
    public final R visit(Element element) {
        return (R) element.accept(this, null);
    }
}
