package org.openjdk.javax.lang.model.util;

import java.io.Writer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.openjdk.javax.lang.model.AnnotatedConstruct;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;

public interface Elements {

    public enum Origin {
        EXPLICIT,
        MANDATED,
        SYNTHETIC;

        public boolean isDeclared() {
            return this != SYNTHETIC;
        }
    }

    List<? extends AnnotationMirror> getAllAnnotationMirrors(Element element);

    List<? extends Element> getAllMembers(TypeElement typeElement);

    default Set<? extends ModuleElement> getAllModuleElements() {
        return Collections.emptySet();
    }

    default Set<? extends PackageElement> getAllPackageElements(CharSequence charSequence) {
        Set<? extends ModuleElement> allModuleElements = getAllModuleElements();
        if (allModuleElements.isEmpty()) {
            PackageElement packageElement = getPackageElement(charSequence);
            return packageElement != null ? Collections.singleton(packageElement) : Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(1);
        Iterator<? extends ModuleElement> it = allModuleElements.iterator();
        while (it.hasNext()) {
            PackageElement packageElement2 = getPackageElement(it.next(), charSequence);
            if (packageElement2 != null) {
                linkedHashSet.add(packageElement2);
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    default Set<? extends TypeElement> getAllTypeElements(CharSequence charSequence) {
        Set<? extends ModuleElement> allModuleElements = getAllModuleElements();
        if (allModuleElements.isEmpty()) {
            TypeElement typeElement = getTypeElement(charSequence);
            return typeElement != null ? Collections.singleton(typeElement) : Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(1);
        Iterator<? extends ModuleElement> it = allModuleElements.iterator();
        while (it.hasNext()) {
            TypeElement typeElement2 = getTypeElement(it.next(), charSequence);
            if (typeElement2 != null) {
                linkedHashSet.add(typeElement2);
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    Name getBinaryName(TypeElement typeElement);

    String getConstantExpression(Object obj);

    String getDocComment(Element element);

    Map<? extends ExecutableElement, ? extends AnnotationValue> getElementValuesWithDefaults(AnnotationMirror annotationMirror);

    default ModuleElement getModuleElement(CharSequence charSequence) {
        return null;
    }

    default ModuleElement getModuleOf(Element element) {
        return null;
    }

    Name getName(CharSequence charSequence);

    default Origin getOrigin(Element element) {
        return Origin.EXPLICIT;
    }

    PackageElement getPackageElement(CharSequence charSequence);

    default PackageElement getPackageElement(ModuleElement moduleElement, CharSequence charSequence) {
        return null;
    }

    PackageElement getPackageOf(Element element);

    TypeElement getTypeElement(CharSequence charSequence);

    default TypeElement getTypeElement(ModuleElement moduleElement, CharSequence charSequence) {
        return null;
    }

    boolean hides(Element element, Element element2);

    default boolean isBridge(ExecutableElement executableElement) {
        return false;
    }

    boolean isDeprecated(Element element);

    boolean isFunctionalInterface(TypeElement typeElement);

    boolean overrides(ExecutableElement executableElement, ExecutableElement executableElement2, TypeElement typeElement);

    void printElements(Writer writer, Element... elementArr);

    default Origin getOrigin(AnnotatedConstruct annotatedConstruct, AnnotationMirror annotationMirror) {
        return Origin.EXPLICIT;
    }

    default Origin getOrigin(ModuleElement moduleElement, ModuleElement.Directive directive) {
        return Origin.EXPLICIT;
    }
}
