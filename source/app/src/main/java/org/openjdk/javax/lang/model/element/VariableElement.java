package org.openjdk.javax.lang.model.element;

public interface VariableElement extends Element {
    Object getConstantValue();

    @Override
    Element getEnclosingElement();

    @Override
    Name getSimpleName();
}
