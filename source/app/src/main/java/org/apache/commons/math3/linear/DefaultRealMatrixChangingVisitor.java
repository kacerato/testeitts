package org.apache.commons.math3.linear;

public class DefaultRealMatrixChangingVisitor implements RealMatrixChangingVisitor {
    @Override
    public double end() {
        return 0.0d;
    }

    @Override
    public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
    }

    @Override
    public double visit(int i10, int i11, double d10) {
        return d10;
    }
}
