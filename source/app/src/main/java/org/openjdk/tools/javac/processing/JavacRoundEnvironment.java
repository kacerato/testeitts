package org.openjdk.tools.javac.processing;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.annotation.processing.RoundEnvironment;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.util.ElementScanner9;
import org.openjdk.javax.lang.model.util.Elements;

public class JavacRoundEnvironment implements RoundEnvironment {
    private static final String NOT_AN_ANNOTATION_TYPE = "The argument does not represent an annotation type: ";
    private final Elements eltUtils;
    private final boolean errorRaised;
    private final ProcessingEnvironment processingEnv;
    private final boolean processingOver;
    private final Set<? extends Element> rootElements;

    public class AnnotationSetMultiScanner extends ElementScanningIncludingTypeParameters<Set<Element>, Set<TypeElement>> {
        private Set<Element> annotatedElements;

        public AnnotationSetMultiScanner(Set<Element> set) {
            super(set);
            this.annotatedElements = new LinkedHashSet();
        }

        @Override
        public Set<Element> scan(Element element, Set<TypeElement> set) {
            Iterator<? extends AnnotationMirror> it = JavacRoundEnvironment.this.eltUtils.getAllAnnotationMirrors(element).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (set.contains(JavacRoundEnvironment.this.mirrorAsElement(it.next()))) {
                    this.annotatedElements.add(element);
                    break;
                }
            }
            element.accept(this, set);
            return this.annotatedElements;
        }
    }

    public class AnnotationSetScanner extends ElementScanningIncludingTypeParameters<Set<Element>, TypeElement> {
        private Set<Element> annotatedElements;

        public AnnotationSetScanner(Set<Element> set) {
            super(set);
            this.annotatedElements = new LinkedHashSet();
        }

        @Override
        public Set<Element> scan(Element element, TypeElement typeElement) {
            Iterator<? extends AnnotationMirror> it = JavacRoundEnvironment.this.eltUtils.getAllAnnotationMirrors(element).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (typeElement.equals(JavacRoundEnvironment.this.mirrorAsElement(it.next()))) {
                    this.annotatedElements.add(element);
                    break;
                }
            }
            element.accept(this, typeElement);
            return this.annotatedElements;
        }
    }

    public static abstract class ElementScanningIncludingTypeParameters<R, P> extends ElementScanner9<R, P> {
        public ElementScanningIncludingTypeParameters(R r10) {
            super(r10);
        }

        @Override
        public R visitExecutable(ExecutableElement executableElement, P p10) {
            scan(executableElement.getTypeParameters(), (List<? extends TypeParameterElement>) p10);
            return (R) super.visitExecutable(executableElement, p10);
        }

        @Override
        public R visitType(TypeElement typeElement, P p10) {
            scan(typeElement.getTypeParameters(), (List<? extends TypeParameterElement>) p10);
            return (R) super.visitType(typeElement, p10);
        }
    }

    public JavacRoundEnvironment(boolean z10, boolean z11, Set<? extends Element> set, ProcessingEnvironment processingEnvironment) {
        this.processingOver = z10;
        this.errorRaised = z11;
        this.rootElements = set;
        this.processingEnv = processingEnvironment;
        this.eltUtils = processingEnvironment.getElementUtils();
    }

    public Element mirrorAsElement(AnnotationMirror annotationMirror) {
        return annotationMirror.getAnnotationType().asElement();
    }

    private void throwIfNotAnnotation(Class<? extends Annotation> cls) {
        if (cls.isAnnotation()) {
            return;
        }
        throw new IllegalArgumentException(NOT_AN_ANNOTATION_TYPE + ((Object) cls));
    }

    @Override
    public boolean errorRaised() {
        return this.errorRaised;
    }

    @Override
    public Set<? extends Element> getElementsAnnotatedWith(TypeElement typeElement) {
        throwIfNotAnnotation(typeElement);
        Set<Element> emptySet = Collections.emptySet();
        AnnotationSetScanner annotationSetScanner = new AnnotationSetScanner(emptySet);
        Iterator<? extends Element> it = this.rootElements.iterator();
        while (it.hasNext()) {
            emptySet = annotationSetScanner.scan(it.next(), (Element) typeElement);
        }
        return emptySet;
    }

    @Override
    public Set<? extends Element> getElementsAnnotatedWithAny(TypeElement... typeElementArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(typeElementArr.length);
        for (TypeElement typeElement : typeElementArr) {
            throwIfNotAnnotation(typeElement);
            linkedHashSet.add(typeElement);
        }
        Set<Element> emptySet = Collections.emptySet();
        AnnotationSetMultiScanner annotationSetMultiScanner = new AnnotationSetMultiScanner(emptySet);
        Iterator<? extends Element> it = this.rootElements.iterator();
        while (it.hasNext()) {
            emptySet = annotationSetMultiScanner.scan(it.next(), (Element) linkedHashSet);
        }
        return emptySet;
    }

    @Override
    public Set<? extends Element> getRootElements() {
        return this.rootElements;
    }

    @Override
    public boolean processingOver() {
        return this.processingOver;
    }

    public String toString() {
        return String.format("[errorRaised=%b, rootElements=%s, processingOver=%b]", Boolean.valueOf(this.errorRaised), this.rootElements, Boolean.valueOf(this.processingOver));
    }

    private void throwIfNotAnnotation(TypeElement typeElement) {
        if (typeElement.getKind() == ElementKind.ANNOTATION_TYPE) {
            return;
        }
        throw new IllegalArgumentException(NOT_AN_ANNOTATION_TYPE + ((Object) typeElement));
    }

    @Override
    public Set<? extends Element> getElementsAnnotatedWith(Class<? extends Annotation> cls) {
        throwIfNotAnnotation(cls);
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return Collections.emptySet();
        }
        TypeElement typeElement = this.eltUtils.getTypeElement(canonicalName);
        if (typeElement == null) {
            return Collections.emptySet();
        }
        return getElementsAnnotatedWith(typeElement);
    }

    @Override
    public Set<? extends Element> getElementsAnnotatedWithAny(Set<Class<? extends Annotation>> set) {
        ArrayList arrayList = new ArrayList(set.size());
        for (Class<? extends Annotation> cls : set) {
            throwIfNotAnnotation(cls);
            String canonicalName = cls.getCanonicalName();
            if (canonicalName != null) {
                arrayList.add(this.eltUtils.getTypeElement(canonicalName));
            }
        }
        return getElementsAnnotatedWithAny((TypeElement[]) arrayList.toArray(new TypeElement[0]));
    }
}
