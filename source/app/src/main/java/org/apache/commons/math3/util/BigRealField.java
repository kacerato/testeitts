package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

public class BigRealField implements Field<BigReal>, Serializable {
    private static final long serialVersionUID = 4756431066541037559L;

    public static class LazyHolder {
        private static final BigRealField INSTANCE = new BigRealField();

        private LazyHolder() {
        }
    }

    public static BigRealField getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override
    public Class<? extends FieldElement<BigReal>> getRuntimeClass() {
        return BigReal.class;
    }

    private BigRealField() {
    }

    @Override
    public BigReal getOne() {
        return BigReal.ONE;
    }

    @Override
    public BigReal getZero() {
        return BigReal.ZERO;
    }
}
