package org.apache.commons.math3.linear;

import org.apache.commons.math3.FieldElement;

public interface FieldMatrixChangingVisitor<T extends FieldElement<?>> {
    T end();

    void start(int i10, int i11, int i12, int i13, int i14, int i15);

    T visit(int i10, int i11, T t10);
}
