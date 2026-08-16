package org.openjdk.javax.lang.model.type;

import org.openjdk.javax.lang.model.element.Element;

public interface TypeVariable extends ReferenceType {
    Element asElement();

    TypeMirror getLowerBound();

    TypeMirror getUpperBound();
}
