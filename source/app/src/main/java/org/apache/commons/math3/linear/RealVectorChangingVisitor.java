package org.apache.commons.math3.linear;

public interface RealVectorChangingVisitor {
    double end();

    void start(int i10, int i11, int i12);

    double visit(int i10, double d10);
}
