package org.openjdk.javax.lang.model.element;

import java.util.Map;
import org.openjdk.javax.lang.model.type.DeclaredType;

public interface AnnotationMirror {
    DeclaredType getAnnotationType();

    Map<? extends ExecutableElement, ? extends AnnotationValue> getElementValues();
}
