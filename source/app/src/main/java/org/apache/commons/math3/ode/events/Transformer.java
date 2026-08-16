package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

enum Transformer {
    UNINITIALIZED {
        @Override
        public double transformed(double d10) {
            return 0.0d;
        }
    },
    PLUS {
        @Override
        public double transformed(double d10) {
            return d10;
        }
    },
    MINUS {
        @Override
        public double transformed(double d10) {
            return -d10;
        }
    },
    MIN {
        @Override
        public double transformed(double d10) {
            return FastMath.min(-Precision.SAFE_MIN, FastMath.min(-d10, d10));
        }
    },
    MAX {
        @Override
        public double transformed(double d10) {
            return FastMath.max(Precision.SAFE_MIN, FastMath.max(-d10, d10));
        }
    };

    public abstract double transformed(double d10);
}
