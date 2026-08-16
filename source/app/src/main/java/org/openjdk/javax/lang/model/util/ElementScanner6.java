package org.openjdk.javax.lang.model.util;

import java.util.Iterator;
import java.util.List;
import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.element.VariableElement;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public class ElementScanner6<R, P> extends AbstractElementVisitor6<R, P> {
    protected final R DEFAULT_VALUE;

    @Deprecated
    public ElementScanner6() {
        this.DEFAULT_VALUE = null;
    }

    public final R scan(Iterable<? extends Element> iterable, P p10) {
        R r10 = this.DEFAULT_VALUE;
        Iterator<? extends Element> it = iterable.iterator();
        while (it.hasNext()) {
            r10 = scan(it.next(), (Element) p10);
        }
        return r10;
    }

    @Override
    public R visitExecutable(ExecutableElement executableElement, P p10) {
        return scan(executableElement.getParameters(), (List<? extends VariableElement>) p10);
    }

    @Override
    public R visitPackage(PackageElement packageElement, P p10) {
        return scan(packageElement.getEnclosedElements(), (List<? extends Element>) p10);
    }

    @Override
    public R visitType(TypeElement typeElement, P p10) {
        return scan(typeElement.getEnclosedElements(), (List<? extends Element>) p10);
    }

    @Override
    public R visitTypeParameter(TypeParameterElement typeParameterElement, P p10) {
        return scan(typeParameterElement.getEnclosedElements(), (List<? extends Element>) p10);
    }

    @Override
    public R visitVariable(VariableElement variableElement, P p10) {
        return variableElement.getKind() != ElementKind.RESOURCE_VARIABLE ? scan(variableElement.getEnclosedElements(), (List<? extends Element>) p10) : visitUnknown(variableElement, p10);
    }

    @Deprecated
    public ElementScanner6(R r10) {
        this.DEFAULT_VALUE = r10;
    }

    public R scan(Element element, P p10) {
        return (R) element.accept(this, p10);
    }

    public final R scan(Element element) {
        return scan(element, (Element) null);
    }
}
