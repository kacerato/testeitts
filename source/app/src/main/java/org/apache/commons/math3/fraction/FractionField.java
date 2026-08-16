package org.apache.commons.math3.fraction;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

public class FractionField implements Field<Fraction>, Serializable {
    private static final long serialVersionUID = -1257768487499119313L;

    public static class LazyHolder {
        private static final FractionField INSTANCE = new FractionField();

        private LazyHolder() {
        }
    }

    public static FractionField getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override
    public Class<? extends FieldElement<Fraction>> getRuntimeClass() {
        return Fraction.class;
    }

    private FractionField() {
    }

    @Override
    public Fraction getOne() {
        return Fraction.ONE;
    }

    @Override
    public Fraction getZero() {
        return Fraction.ZERO;
    }
}
