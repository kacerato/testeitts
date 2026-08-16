package org.apache.commons.math3.util;

public interface DoubleArray {
    void addElement(double d10);

    double addElementRolling(double d10);

    void addElements(double[] dArr);

    void clear();

    double getElement(int i10);

    double[] getElements();

    int getNumElements();

    void setElement(int i10, double d10);
}
