package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyMatrix3;

public class Functions {
    public static Function3D abs(final Function3D function3D) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return Math.abs(Function3D.this.eval(d10, d11, d12));
            }
        };
    }

    public static Function3D add(final Function3D function3D, final Function3D function3D2) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return Function3D.this.eval(d10, d11, d12) + function3D2.eval(d10, d11, d12);
            }
        };
    }

    public static Function3D clamp(final Function3D function3D, final double d10, final double d11) {
        return new Function3D() {
            @Override
            public double eval(double d12, double d13, double d14) {
                return MathUtils.clamp(Function3D.this.eval(d12, d13, d14), d10, d11);
            }
        };
    }

    public static Function3D constant(final double d10) {
        return new Function3D() {
            @Override
            public double eval(double d11, double d12, double d13) {
                return d10;
            }
        };
    }

    public static Function3D invert(final Function3D function3D) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return -Function3D.this.eval(d10, d11, d12);
            }
        };
    }

    public static Function3D lerp(final Function3D function3D, final Function3D function3D2, final double d10) {
        return new Function3D() {
            @Override
            public double eval(double d11, double d12, double d13) {
                return MathUtils.lerp(d10, function3D.eval(d11, d12, d13), function3D2.eval(d11, d12, d13));
            }
        };
    }

    public static Function3D max(final Function3D function3D, final Function3D function3D2) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return Math.max(Function3D.this.eval(d10, d11, d12), function3D2.eval(d10, d11, d12));
            }
        };
    }

    public static Function3D min(final Function3D function3D, final Function3D function3D2) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return Math.min(Function3D.this.eval(d10, d11, d12), function3D2.eval(d10, d11, d12));
            }
        };
    }

    public static Function3D multiply(final Function3D function3D, final Function3D function3D2) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                return Function3D.this.eval(d10, d11, d12) * function3D2.eval(d10, d11, d12);
            }
        };
    }

    public static Function3D remap(final Function3D function3D, final double d10, final double d11, final double d12, final double d13) {
        return new Function3D() {
            @Override
            public double eval(double d14, double d15, double d16) {
                double eval = Function3D.this.eval(d14, d15, d16);
                double d17 = d10;
                double d18 = (eval - d17) / (d11 - d17);
                double d19 = d13;
                double d20 = d12;
                return (d18 * (d19 - d20)) + d20;
            }
        };
    }

    public static Function3D rotateInput(final Function3D function3D, final ReadOnlyMatrix3 readOnlyMatrix3) {
        return new Function3D() {
            @Override
            public double eval(double d10, double d11, double d12) {
                Vector3 fetchTempInstance = Vector3.fetchTempInstance();
                fetchTempInstance.set(d10, d11, d12);
                ReadOnlyMatrix3.this.applyPost(fetchTempInstance, fetchTempInstance);
                double eval = function3D.eval(fetchTempInstance.getX(), fetchTempInstance.getY(), fetchTempInstance.getZ());
                Vector3.releaseTempInstance(fetchTempInstance);
                return eval;
            }
        };
    }

    public static Function3D scaleBias(final Function3D function3D, final double d10, final double d11) {
        return new Function3D() {
            @Override
            public double eval(double d12, double d13, double d14) {
                return (Function3D.this.eval(d12, d13, d14) * d10) + d11;
            }
        };
    }

    public static Function3D scaleInput(final Function3D function3D, final double d10, final double d11, final double d12) {
        return new Function3D() {
            @Override
            public double eval(double d13, double d14, double d15) {
                return Function3D.this.eval(d10 * d13, d14 * d11, d15 * d12);
            }
        };
    }

    public static Function3D simplexNoise() {
        return new Function3D() {
            SimplexNoise noiseGenerator = new SimplexNoise();

            @Override
            public double eval(double d10, double d11, double d12) {
                return this.noiseGenerator.noise(d10, d11, d12);
            }
        };
    }

    public static Function3D translateInput(final Function3D function3D, final double d10, final double d11, final double d12) {
        return new Function3D() {
            @Override
            public double eval(double d13, double d14, double d15) {
                return Function3D.this.eval(d10 + d13, d14 + d11, d15 + d12);
            }
        };
    }
}
