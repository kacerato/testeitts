package org.openjdk.javax.annotation.processing;

import java.util.Set;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;

public interface Processor {
    Iterable<? extends Completion> getCompletions(Element element, AnnotationMirror annotationMirror, ExecutableElement executableElement, String str);

    Set<String> getSupportedAnnotationTypes();

    Set<String> getSupportedOptions();

    SourceVersion getSupportedSourceVersion();

    void init(ProcessingEnvironment processingEnvironment);

    boolean process(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment);
}
