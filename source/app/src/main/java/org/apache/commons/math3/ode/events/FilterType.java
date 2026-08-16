package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.exception.MathInternalError;

public enum FilterType {
    TRIGGER_ONLY_DECREASING_EVENTS {
        @Override
        public boolean getTriggeredIncreasing() {
            return false;
        }

        @Override
        public Transformer selectTransformer(Transformer transformer, double d10, boolean z10) {
            if (z10) {
                int i10 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
                if (i10 == 1) {
                    return d10 > 0.0d ? Transformer.MAX : d10 < 0.0d ? Transformer.PLUS : Transformer.UNINITIALIZED;
                }
                if (i10 == 2) {
                    return d10 >= 0.0d ? Transformer.MIN : transformer;
                }
                if (i10 == 3) {
                    return d10 >= 0.0d ? Transformer.MAX : transformer;
                }
                if (i10 == 4) {
                    return d10 <= 0.0d ? Transformer.MINUS : transformer;
                }
                if (i10 == 5) {
                    return d10 <= 0.0d ? Transformer.PLUS : transformer;
                }
                throw new MathInternalError();
            }
            int i11 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
            if (i11 == 1) {
                return d10 > 0.0d ? Transformer.MINUS : d10 < 0.0d ? Transformer.MIN : Transformer.UNINITIALIZED;
            }
            if (i11 == 2) {
                return d10 <= 0.0d ? Transformer.MAX : transformer;
            }
            if (i11 == 3) {
                return d10 <= 0.0d ? Transformer.MIN : transformer;
            }
            if (i11 == 4) {
                return d10 >= 0.0d ? Transformer.PLUS : transformer;
            }
            if (i11 == 5) {
                return d10 >= 0.0d ? Transformer.MINUS : transformer;
            }
            throw new MathInternalError();
        }
    },
    TRIGGER_ONLY_INCREASING_EVENTS {
        @Override
        public boolean getTriggeredIncreasing() {
            return true;
        }

        @Override
        public Transformer selectTransformer(Transformer transformer, double d10, boolean z10) {
            if (z10) {
                int i10 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
                if (i10 == 1) {
                    return d10 > 0.0d ? Transformer.PLUS : d10 < 0.0d ? Transformer.MIN : Transformer.UNINITIALIZED;
                }
                if (i10 == 2) {
                    return d10 <= 0.0d ? Transformer.MAX : transformer;
                }
                if (i10 == 3) {
                    return d10 <= 0.0d ? Transformer.MIN : transformer;
                }
                if (i10 == 4) {
                    return d10 >= 0.0d ? Transformer.PLUS : transformer;
                }
                if (i10 == 5) {
                    return d10 >= 0.0d ? Transformer.MINUS : transformer;
                }
                throw new MathInternalError();
            }
            int i11 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
            if (i11 == 1) {
                return d10 > 0.0d ? Transformer.MAX : d10 < 0.0d ? Transformer.MINUS : Transformer.UNINITIALIZED;
            }
            if (i11 == 2) {
                return d10 >= 0.0d ? Transformer.MIN : transformer;
            }
            if (i11 == 3) {
                return d10 >= 0.0d ? Transformer.MAX : transformer;
            }
            if (i11 == 4) {
                return d10 <= 0.0d ? Transformer.MINUS : transformer;
            }
            if (i11 == 5) {
                return d10 <= 0.0d ? Transformer.PLUS : transformer;
            }
            throw new MathInternalError();
        }
    };

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$org$apache$commons$math3$ode$events$Transformer;

        static {
            int[] iArr = new int[Transformer.values().length];
            $SwitchMap$org$apache$commons$math3$ode$events$Transformer = iArr;
            try {
                iArr[Transformer.UNINITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MINUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MAX.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public abstract boolean getTriggeredIncreasing();

    public abstract Transformer selectTransformer(Transformer transformer, double d10, boolean z10);
}
