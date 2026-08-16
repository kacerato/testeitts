package com.jme3.math;

public class Easing {
    public static EaseFunction constant = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return 0.0f;
        }
    };
    public static EaseFunction linear = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10;
        }
    };
    public static EaseFunction inQuad = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10;
        }
    };
    public static EaseFunction inCubic = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10 * f10;
        }
    };
    public static EaseFunction inQuart = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10 * f10 * f10;
        }
    };
    public static EaseFunction inQuint = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10 * f10 * f10 * f10;
        }
    };
    public static EaseFunction outElastic = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return (FastMath.pow(2.0f, (-10.0f) * f10) * FastMath.sin(((f10 - 0.075f) * 6.2831855f) / 0.3f)) + 1.0f;
        }
    };
    public static EaseFunction outBounce = new EaseFunction() {
        @Override
        public float apply(float f10) {
            if (f10 < 0.36363637f) {
                return 7.5625f * f10 * f10;
            }
            if (f10 < 0.72727275f) {
                float f11 = f10 - 0.54545456f;
                return (7.5625f * f11 * f11) + 0.75f;
            }
            if (f10 < 0.9090909090909091d) {
                float f12 = f10 - 0.8181818f;
                return (7.5625f * f12 * f12) + 0.9375f;
            }
            float f13 = f10 - 0.95454544f;
            return (7.5625f * f13 * f13) + 0.984375f;
        }
    };
    public static EaseFunction inElastic = new Invert(outElastic);
    public static EaseFunction inBounce = new Invert(outBounce);
    public static EaseFunction outQuad = new Invert(inQuad);
    public static EaseFunction outCubic = new Invert(inCubic);
    public static EaseFunction outQuart = new Invert(inQuart);
    public static EaseFunction outQuint = new Invert(inQuint);
    public static EaseFunction inOutQuad = new InOut(inQuad, outQuad);
    public static EaseFunction inOutCubic = new InOut(inCubic, outCubic);
    public static EaseFunction inOutQuart = new InOut(inQuart, outQuart);
    public static EaseFunction inOutQuint = new InOut(inQuint, outQuint);
    public static EaseFunction inOutElastic = new InOut(inElastic, outElastic);
    public static EaseFunction inOutBounce = new InOut(inBounce, outBounce);
    public static EaseFunction smoothStep = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10 * (3.0f - (f10 * 2.0f));
        }
    };
    public static EaseFunction smootherStep = new EaseFunction() {
        @Override
        public float apply(float f10) {
            return f10 * f10 * f10 * ((f10 * ((6.0f * f10) - 15.0f)) + 10.0f);
        }
    };

    public static class InOut implements EaseFunction {

        private final EaseFunction f81599in;
        private final EaseFunction out;

        public InOut(EaseFunction easeFunction, EaseFunction easeFunction2) {
            this.f81599in = easeFunction;
            this.out = easeFunction2;
        }

        @Override
        public float apply(float f10) {
            if (f10 < 0.5d) {
                return this.f81599in.apply(f10 * 2.0f) / 2.0f;
            }
            return (this.out.apply((f10 - 0.5f) * 2.0f) / 2.0f) + 0.5f;
        }
    }

    public static class Invert implements EaseFunction {
        private final EaseFunction func;

        public Invert(EaseFunction easeFunction) {
            this.func = easeFunction;
        }

        @Override
        public float apply(float f10) {
            return 1.0f - this.func.apply(1.0f - f10);
        }
    }

    private Easing() {
    }
}
