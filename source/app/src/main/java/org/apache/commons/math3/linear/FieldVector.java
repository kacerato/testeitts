package org.apache.commons.math3.linear;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;

public interface FieldVector<T extends FieldElement<T>> {
    FieldVector<T> add(FieldVector<T> fieldVector) throws DimensionMismatchException;

    FieldVector<T> append(T t10);

    FieldVector<T> append(FieldVector<T> fieldVector);

    FieldVector<T> copy();

    T dotProduct(FieldVector<T> fieldVector) throws DimensionMismatchException;

    FieldVector<T> ebeDivide(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException;

    FieldVector<T> ebeMultiply(FieldVector<T> fieldVector) throws DimensionMismatchException;

    @Deprecated
    T[] getData();

    int getDimension();

    T getEntry(int i10) throws OutOfRangeException;

    Field<T> getField();

    FieldVector<T> getSubVector(int i10, int i11) throws OutOfRangeException, NotPositiveException;

    FieldVector<T> mapAdd(T t10) throws NullArgumentException;

    FieldVector<T> mapAddToSelf(T t10) throws NullArgumentException;

    FieldVector<T> mapDivide(T t10) throws NullArgumentException, MathArithmeticException;

    FieldVector<T> mapDivideToSelf(T t10) throws NullArgumentException, MathArithmeticException;

    FieldVector<T> mapInv() throws MathArithmeticException;

    FieldVector<T> mapInvToSelf() throws MathArithmeticException;

    FieldVector<T> mapMultiply(T t10) throws NullArgumentException;

    FieldVector<T> mapMultiplyToSelf(T t10) throws NullArgumentException;

    FieldVector<T> mapSubtract(T t10) throws NullArgumentException;

    FieldVector<T> mapSubtractToSelf(T t10) throws NullArgumentException;

    FieldMatrix<T> outerProduct(FieldVector<T> fieldVector);

    FieldVector<T> projection(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException;

    void set(T t10);

    void setEntry(int i10, T t10) throws OutOfRangeException;

    void setSubVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException;

    FieldVector<T> subtract(FieldVector<T> fieldVector) throws DimensionMismatchException;

    T[] toArray();
}
