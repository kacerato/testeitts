package org.apache.commons.math3;

import org.apache.commons.math3.exception.DimensionMismatchException;

public interface RealFieldElement<T> extends FieldElement<T> {
    T abs();

    T acos();

    T acosh();

    T add(double d10);

    T asin();

    T asinh();

    T atan();

    T atan2(T t10) throws DimensionMismatchException;

    T atanh();

    T cbrt();

    T ceil();

    T copySign(double d10);

    T copySign(T t10);

    T cos();

    T cosh();

    T divide(double d10);

    T exp();

    T expm1();

    T floor();

    double getReal();

    T hypot(T t10) throws DimensionMismatchException;

    T linearCombination(double d10, T t10, double d11, T t11);

    T linearCombination(double d10, T t10, double d11, T t11, double d12, T t12);

    T linearCombination(double d10, T t10, double d11, T t11, double d12, T t12, double d13, T t13);

    T linearCombination(T t10, T t11, T t12, T t13);

    T linearCombination(T t10, T t11, T t12, T t13, T t14, T t15);

    T linearCombination(T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17);

    T linearCombination(double[] dArr, T[] tArr) throws DimensionMismatchException;

    T linearCombination(T[] tArr, T[] tArr2) throws DimensionMismatchException;

    T log();

    T log1p();

    T multiply(double d10);

    T pow(double d10);

    T pow(int i10);

    T pow(T t10) throws DimensionMismatchException;

    @Override
    T reciprocal();

    T remainder(double d10);

    T remainder(T t10) throws DimensionMismatchException;

    T rint();

    T rootN(int i10);

    long round();

    T scalb(int i10);

    T signum();

    T sin();

    T sinh();

    T sqrt();

    T subtract(double d10);

    T tan();

    T tanh();
}
