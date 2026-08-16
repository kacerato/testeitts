package org.apache.commons.math3;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NullArgumentException;

public interface FieldElement<T> {
    T add(T t10) throws NullArgumentException;

    T divide(T t10) throws NullArgumentException, MathArithmeticException;

    Field<T> getField();

    T multiply(int i10);

    T multiply(T t10) throws NullArgumentException;

    T negate();

    T reciprocal() throws MathArithmeticException;

    T subtract(T t10) throws NullArgumentException;
}
