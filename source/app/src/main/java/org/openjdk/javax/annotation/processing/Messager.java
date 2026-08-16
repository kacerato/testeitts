package org.openjdk.javax.annotation.processing;

import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.tools.Diagnostic;

public interface Messager {
    void printMessage(Diagnostic.Kind kind, CharSequence charSequence);

    void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element);

    void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element, AnnotationMirror annotationMirror);

    void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue);
}
