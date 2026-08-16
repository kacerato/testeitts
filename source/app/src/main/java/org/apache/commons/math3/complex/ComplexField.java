package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

public class ComplexField implements Field<Complex>, Serializable {
    private static final long serialVersionUID = -6130362688700788798L;

    public static class LazyHolder {
        private static final ComplexField INSTANCE = new ComplexField();

        private LazyHolder() {
        }
    }

    public static ComplexField getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override
    public Class<? extends FieldElement<Complex>> getRuntimeClass() {
        return Complex.class;
    }

    private ComplexField() {
    }

    @Override
    public Complex getOne() {
        return Complex.ONE;
    }

    @Override
    public Complex getZero() {
        return Complex.ZERO;
    }
}
