package org.apache.commons.math3.linear;

import org.apache.commons.math3.FieldElement;

public class DefaultFieldMatrixChangingVisitor<T extends FieldElement<T>> implements FieldMatrixChangingVisitor<T> {
    private final T zero;

    public DefaultFieldMatrixChangingVisitor(T t10) {
        this.zero = t10;
    }

    @Override
    public T end() {
        return this.zero;
    }

    @Override
    public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
    }

    @Override
    public T visit(int i10, int i11, T t10) {
        return t10;
    }
}
