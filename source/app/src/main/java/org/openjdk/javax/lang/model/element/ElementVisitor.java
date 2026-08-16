package org.openjdk.javax.lang.model.element;

public interface ElementVisitor<R, P> {
    default R visit(Element element) {
        return visit(element, null);
    }

    R visit(Element element, P p10);

    R visitExecutable(ExecutableElement executableElement, P p10);

    default R visitModule(ModuleElement moduleElement, P p10) {
        return visitUnknown(moduleElement, p10);
    }

    R visitPackage(PackageElement packageElement, P p10);

    R visitType(TypeElement typeElement, P p10);

    R visitTypeParameter(TypeParameterElement typeParameterElement, P p10);

    R visitUnknown(Element element, P p10);

    R visitVariable(VariableElement variableElement, P p10);
}
