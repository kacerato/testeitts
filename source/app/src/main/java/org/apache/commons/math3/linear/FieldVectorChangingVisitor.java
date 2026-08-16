package org.apache.commons.math3.linear;

import org.apache.commons.math3.FieldElement;

public interface FieldVectorChangingVisitor<T extends FieldElement<?>> {
    T end();

    void start(int i10, int i11, int i12);

    T visit(int i10, T t10);
}
