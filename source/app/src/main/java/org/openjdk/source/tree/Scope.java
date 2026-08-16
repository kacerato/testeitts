package org.openjdk.source.tree;

import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;

public interface Scope {
    TypeElement getEnclosingClass();

    ExecutableElement getEnclosingMethod();

    Scope getEnclosingScope();

    Iterable<? extends Element> getLocalElements();
}
