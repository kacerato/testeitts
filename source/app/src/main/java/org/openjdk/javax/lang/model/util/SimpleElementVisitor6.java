package org.openjdk.javax.lang.model.util;

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
public class SimpleElementVisitor6<R, P> extends AbstractElementVisitor6<R, P> {
    protected final R DEFAULT_VALUE;

    @Deprecated
    public SimpleElementVisitor6() {
        this.DEFAULT_VALUE = null;
    }

    public R defaultAction(Element element, P p10) {
        return this.DEFAULT_VALUE;
    }

    @Override
    public R visitExecutable(ExecutableElement executableElement, P p10) {
        return defaultAction(executableElement, p10);
    }

    @Override
    public R visitPackage(PackageElement packageElement, P p10) {
        return defaultAction(packageElement, p10);
    }

    @Override
    public R visitType(TypeElement typeElement, P p10) {
        return defaultAction(typeElement, p10);
    }

    @Override
    public R visitTypeParameter(TypeParameterElement typeParameterElement, P p10) {
        return defaultAction(typeParameterElement, p10);
    }

    @Override
    public R visitVariable(VariableElement variableElement, P p10) {
        return variableElement.getKind() != ElementKind.RESOURCE_VARIABLE ? defaultAction(variableElement, p10) : visitUnknown(variableElement, p10);
    }

    @Deprecated
    public SimpleElementVisitor6(R r10) {
        this.DEFAULT_VALUE = r10;
    }
}
