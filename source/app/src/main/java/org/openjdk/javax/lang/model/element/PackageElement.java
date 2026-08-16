package org.openjdk.javax.lang.model.element;

import java.util.List;

public interface PackageElement extends Element, QualifiedNameable {
    @Override
    List<? extends Element> getEnclosedElements();

    @Override
    Element getEnclosingElement();

    @Override
    Name getQualifiedName();

    @Override
    Name getSimpleName();

    boolean isUnnamed();
}
