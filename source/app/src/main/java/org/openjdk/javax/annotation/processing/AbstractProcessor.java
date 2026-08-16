package org.openjdk.javax.annotation.processing;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.tools.Diagnostic;

public abstract class AbstractProcessor implements Processor {
    static final boolean $assertionsDisabled = false;
    private boolean initialized = false;
    protected ProcessingEnvironment processingEnv;

    private static Set<String> arrayToSet(String[] strArr, boolean z10) {
        int indexOf;
        HashSet hashSet = new HashSet(strArr.length);
        for (String str : strArr) {
            if (z10 && (indexOf = str.indexOf(47)) != -1) {
                str = str.substring(indexOf + 1);
            }
            hashSet.add(str);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override
    public Iterable<? extends Completion> getCompletions(Element element, AnnotationMirror annotationMirror, ExecutableElement executableElement, String str) {
        return Collections.emptyList();
    }

    @Override
    public Set<String> getSupportedAnnotationTypes() {
        SupportedAnnotationTypes supportedAnnotationTypes = (SupportedAnnotationTypes) getClass().getAnnotation(SupportedAnnotationTypes.class);
        boolean isInitialized = isInitialized();
        if (supportedAnnotationTypes != null) {
            return arrayToSet(supportedAnnotationTypes.value(), isInitialized && this.processingEnv.getSourceVersion().compareTo(SourceVersion.RELEASE_8) <= 0);
        }
        if (isInitialized) {
            this.processingEnv.getMessager().printMessage(Diagnostic.Kind.WARNING, "No SupportedAnnotationTypes annotation found on " + getClass().getName() + ", returning an empty set.");
        }
        return Collections.emptySet();
    }

    @Override
    public Set<String> getSupportedOptions() {
        SupportedOptions supportedOptions = (SupportedOptions) getClass().getAnnotation(SupportedOptions.class);
        return supportedOptions == null ? Collections.emptySet() : arrayToSet(supportedOptions.value(), false);
    }

    @Override
    public SourceVersion getSupportedSourceVersion() {
        SupportedSourceVersion supportedSourceVersion = (SupportedSourceVersion) getClass().getAnnotation(SupportedSourceVersion.class);
        if (supportedSourceVersion != null) {
            return supportedSourceVersion.value();
        }
        SourceVersion sourceVersion = SourceVersion.RELEASE_6;
        if (!isInitialized()) {
            return sourceVersion;
        }
        this.processingEnv.getMessager().printMessage(Diagnostic.Kind.WARNING, "No SupportedSourceVersion annotation found on " + getClass().getName() + ", returning " + ((Object) sourceVersion) + ".");
        return sourceVersion;
    }

    @Override
    public synchronized void init(ProcessingEnvironment processingEnvironment) {
        if (this.initialized) {
            throw new IllegalStateException("Cannot call init more than once.");
        }
        Objects.requireNonNull(processingEnvironment, "Tool provided null ProcessingEnvironment");
        this.processingEnv = processingEnvironment;
        this.initialized = true;
    }

    public synchronized boolean isInitialized() {
        return this.initialized;
    }

    @Override
    public abstract boolean process(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment);
}
