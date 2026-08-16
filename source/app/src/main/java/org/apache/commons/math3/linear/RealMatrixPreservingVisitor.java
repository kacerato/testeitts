package org.apache.commons.math3.linear;

public interface RealMatrixPreservingVisitor {
    double end();

    void start(int i10, int i11, int i12, int i13, int i14, int i15);

    void visit(int i10, int i11, double d10);
}
