package com.jme3.anim.tween;

import com.jme3.anim.util.Primitives;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Tweens {
    private static final CurveFunction SINE;
    private static final CurveFunction SMOOTH;
    private static final Logger log = Logger.getLogger(Tweens.class.getName());

    public static class CallMethod extends AbstractTween {
        private Object[] args;
        private Method method;
        private Object target;

        public CallMethod(Object obj, String str, Object... objArr) {
            super(0.0d);
            if (obj == null) {
                throw new IllegalArgumentException("Target cannot be null.");
            }
            this.target = obj;
            this.args = objArr;
            if (objArr == null) {
                this.method = findMethod(obj.getClass(), str, new Object[0]);
            } else {
                this.method = findMethod(obj.getClass(), str, objArr);
            }
            Method method = this.method;
            if (method != null) {
                method.setAccessible(true);
                return;
            }
            throw new IllegalArgumentException("Method not found for:" + str + " on type:" + ((Object) obj.getClass()));
        }

        private static Method findMethod(Class cls, String str, Object... objArr) {
            for (Method method : cls.getDeclaredMethods()) {
                if (Objects.equals(method.getName(), str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != objArr.length) {
                        continue;
                    } else {
                        int i10 = 0;
                        for (int i11 = 0; i11 < objArr.length; i11++) {
                            if (parameterTypes[i11].isInstance(objArr[i11]) || Primitives.wrap(parameterTypes[i11]).isInstance(objArr[i11])) {
                                i10++;
                            }
                        }
                        if (i10 == objArr.length) {
                            return method;
                        }
                    }
                }
            }
            if (cls.getSuperclass() != null) {
                return findMethod(cls.getSuperclass(), str, objArr);
            }
            return null;
        }

        @Override
        public void doInterpolate(double d10) {
            try {
                this.method.invoke(this.target, this.args);
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new RuntimeException("Error running method:" + ((Object) this.method) + " for object:" + this.target, e10);
            }
        }

        public String toString() {
            return getClass().getSimpleName() + "[method=" + ((Object) this.method) + ", parms=" + ((Object) Arrays.asList(this.args)) + "]";
        }
    }

    public static class CallTweenMethod extends AbstractTween {
        private Object[] args;
        private boolean isFloat;
        private Method method;
        private int tIndex;
        private Object target;

        public CallTweenMethod(double d10, Object obj, String str, Object... objArr) {
            super(d10);
            this.tIndex = -1;
            int i10 = 0;
            this.isFloat = false;
            if (obj == null) {
                throw new IllegalArgumentException("Target cannot be null.");
            }
            this.target = obj;
            Method findMethod = findMethod(obj.getClass(), str, objArr);
            this.method = findMethod;
            if (findMethod == null) {
                throw new IllegalArgumentException("Method not found for:" + str + " on type:" + ((Object) obj.getClass()));
            }
            findMethod.setAccessible(true);
            this.args = new Object[objArr.length + 1];
            if (this.tIndex != 0) {
                while (i10 < objArr.length) {
                    this.args[i10] = objArr[i10];
                    i10++;
                }
            } else {
                while (i10 < objArr.length) {
                    int i11 = i10 + 1;
                    this.args[i11] = objArr[i10];
                    i10 = i11;
                }
            }
        }

        private Method findMethod(Class cls, String str, Object... objArr) {
            for (Method method : cls.getDeclaredMethods()) {
                if (Objects.equals(method.getName(), str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != objArr.length + 1) {
                        Logger logger = Tweens.log;
                        Level level = Level.FINE;
                        if (logger.isLoggable(level)) {
                            Tweens.log.log(level, "Param lengths of [" + ((Object) method) + "] differ.  method arg count:" + parameterTypes.length + "  looking for:" + (objArr.length + 1));
                        }
                    } else {
                        if (isFloatType(parameterTypes[0]) || isDoubleType(parameterTypes[0])) {
                            int i10 = 0;
                            for (int i11 = 1; i11 < parameterTypes.length; i11++) {
                                if (parameterTypes[i11].isInstance(objArr[i11 - 1])) {
                                    i10++;
                                }
                            }
                            if (i10 == objArr.length) {
                                this.tIndex = 0;
                                this.isFloat = isFloatType(parameterTypes[0]);
                            } else {
                                Logger logger2 = Tweens.log;
                                Level level2 = Level.FINE;
                                if (logger2.isLoggable(level2)) {
                                    Tweens.log.log(level2, ((Object) method) + " Leading float check failed because of type mismatches, for:" + ((Object) method));
                                }
                            }
                        }
                        if (this.tIndex >= 0) {
                            return method;
                        }
                        int length = parameterTypes.length - 1;
                        if (isFloatType(parameterTypes[length]) || isDoubleType(parameterTypes[length])) {
                            int i12 = 0;
                            for (int i13 = 0; i13 < length; i13++) {
                                if (parameterTypes[i13].isInstance(objArr[i13])) {
                                    i12++;
                                }
                            }
                            if (i12 == objArr.length) {
                                this.tIndex = length;
                                this.isFloat = isFloatType(parameterTypes[length]);
                                return method;
                            }
                            Logger logger3 = Tweens.log;
                            Level level3 = Level.FINE;
                            if (logger3.isLoggable(level3)) {
                                Tweens.log.log(level3, "Trailing float check failed because of type mismatches, for:" + ((Object) method));
                            }
                        }
                    }
                }
            }
            if (cls.getSuperclass() != null) {
                return findMethod(cls.getSuperclass(), str, objArr);
            }
            return null;
        }

        private static boolean isDoubleType(Class cls) {
            return cls == Double.TYPE || cls == Double.class;
        }

        private static boolean isFloatType(Class cls) {
            return cls == Float.TYPE || cls == Float.class;
        }

        @Override
        public void doInterpolate(double d10) {
            try {
                if (this.isFloat) {
                    this.args[this.tIndex] = Float.valueOf((float) d10);
                } else {
                    this.args[this.tIndex] = Double.valueOf(d10);
                }
                this.method.invoke(this.target, this.args);
            } catch (IllegalAccessException e10) {
                e = e10;
                throw new RuntimeException("Error running method:" + ((Object) this.method) + " for object:" + this.target, e);
            } catch (InvocationTargetException e11) {
                e = e11;
                throw new RuntimeException("Error running method:" + ((Object) this.method) + " for object:" + this.target, e);
            }
        }

        public String toString() {
            return getClass().getSimpleName() + "[method=" + ((Object) this.method) + ", parms=" + ((Object) Arrays.asList(this.args)) + "]";
        }
    }

    public static class Curve implements Tween {
        private final Tween delegate;
        private final CurveFunction func;
        private final double length;

        public Curve(Tween tween, CurveFunction curveFunction) {
            this.delegate = tween;
            this.func = curveFunction;
            this.length = tween.getLength();
        }

        @Override
        public double getLength() {
            return this.length;
        }

        @Override
        public boolean interpolate(double d10) {
            if (d10 < 0.0d) {
                return true;
            }
            double d11 = this.length;
            if (d11 == 0.0d) {
                return this.delegate.interpolate(d10);
            }
            return this.delegate.interpolate(this.func.curve(d10 / d11) * this.length);
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegate=" + ((Object) this.delegate) + ", func=" + ((Object) this.func) + "]";
        }
    }

    public interface CurveFunction {
        double curve(double d10);
    }

    public static class Delay extends AbstractTween {
        public Delay(double d10) {
            super(d10);
        }

        @Override
        public void doInterpolate(double d10) {
        }
    }

    public static class Invert extends AbstractTween implements ContainsTweens {
        private final Tween[] delegate;

        public Invert(Tween tween) {
            super(tween.getLength());
            this.delegate = r0;
            Tween[] tweenArr = {tween};
        }

        @Override
        public void doInterpolate(double d10) {
            this.delegate[0].interpolate((1.0d - d10) * getLength());
        }

        @Override
        public Tween[] getTweens() {
            return this.delegate;
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegate=" + ((Object) this.delegate[0]) + ", length=" + getLength() + "]";
        }
    }

    public static class Parallel implements Tween, ContainsTweens {
        private final Tween[] delegates;
        private final boolean[] done;
        private double lastTime;
        private double length;

        public Parallel(Tween... tweenArr) {
            this.delegates = tweenArr;
            this.done = new boolean[tweenArr.length];
            for (Tween tween : tweenArr) {
                if (tween.getLength() > this.length) {
                    this.length = tween.getLength();
                }
            }
        }

        @Override
        public double getLength() {
            return this.length;
        }

        @Override
        public Tween[] getTweens() {
            return this.delegates;
        }

        @Override
        public boolean interpolate(double d10) {
            if (d10 < 0.0d) {
                return true;
            }
            if (d10 < this.lastTime) {
                reset();
            }
            this.lastTime = d10;
            int length = this.delegates.length;
            int i10 = 0;
            while (true) {
                if (i10 >= this.delegates.length) {
                    break;
                }
                boolean[] zArr = this.done;
                if (!zArr[i10]) {
                    zArr[i10] = !r4[i10].interpolate(d10);
                }
                if (this.done[i10]) {
                    length--;
                }
                i10++;
            }
            return length > 0;
        }

        public void reset() {
            int i10 = 0;
            while (true) {
                boolean[] zArr = this.done;
                if (i10 >= zArr.length) {
                    return;
                }
                zArr[i10] = false;
                i10++;
            }
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegates=" + ((Object) Arrays.asList(this.delegates)) + "]";
        }
    }

    public static class Sequence implements Tween, ContainsTweens {
        private double baseTime;
        private int current = 0;
        private final Tween[] delegates;
        private double length;

        public Sequence(Tween... tweenArr) {
            this.delegates = tweenArr;
            for (Tween tween : tweenArr) {
                this.length += tween.getLength();
            }
        }

        @Override
        public double getLength() {
            return this.length;
        }

        @Override
        public Tween[] getTweens() {
            return this.delegates;
        }

        @Override
        public boolean interpolate(double d10) {
            if (d10 < 0.0d) {
                return true;
            }
            if (d10 < this.baseTime) {
                this.current = 0;
                this.baseTime = 0.0d;
            }
            if (this.current >= this.delegates.length) {
                return false;
            }
            while (!this.delegates[this.current].interpolate(d10 - this.baseTime)) {
                this.baseTime += this.delegates[this.current].getLength();
                int i10 = this.current + 1;
                this.current = i10;
                if (i10 >= this.delegates.length) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegates=" + ((Object) Arrays.asList(this.delegates)) + "]";
        }
    }

    public static class Sine implements CurveFunction {
        private Sine() {
        }

        @Override
        public double curve(double d10) {
            if (d10 < 0.0d) {
                return 0.0d;
            }
            if (d10 > 1.0d) {
                return 1.0d;
            }
            return (Math.sin((d10 * 3.141592653589793d) - 1.5707963267948966d) + 1.0d) * 0.5d;
        }
    }

    public static class SmoothStep implements CurveFunction {
        private SmoothStep() {
        }

        @Override
        public double curve(double d10) {
            if (d10 < 0.0d) {
                return 0.0d;
            }
            if (d10 > 1.0d) {
                return 1.0d;
            }
            return d10 * d10 * (3.0d - (d10 * 2.0d));
        }
    }

    public static class Stretch implements Tween, ContainsTweens {
        private final Tween[] delegate;
        private final double length;
        private final double scale;

        public Stretch(Tween tween, double d10) {
            this.delegate = r0;
            Tween[] tweenArr = {tween};
            this.length = d10;
            if (d10 != 0.0d) {
                this.scale = tween.getLength() / d10;
            } else {
                this.scale = 0.0d;
            }
        }

        @Override
        public double getLength() {
            return this.length;
        }

        @Override
        public Tween[] getTweens() {
            return this.delegate;
        }

        @Override
        public boolean interpolate(double d10) {
            if (d10 < 0.0d) {
                return true;
            }
            double d11 = this.length;
            if (d11 > 0.0d) {
                d11 = d10 * this.scale;
            }
            return this.delegate[0].interpolate(d11);
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegate=" + ((Object) this.delegate[0]) + ", length=" + this.length + "]";
        }
    }

    static {
        SMOOTH = new SmoothStep();
        SINE = new Sine();
    }

    private Tweens() {
    }

    public static Tween callMethod(Object obj, String str, Object... objArr) {
        return new CallMethod(obj, str, objArr);
    }

    public static Tween callTweenMethod(double d10, Object obj, String str, Object... objArr) {
        return new CallTweenMethod(d10, obj, str, objArr);
    }

    public static Tween cycle(Tween tween) {
        return sequence(tween, invert(tween));
    }

    public static Tween delay(double d10) {
        return new Delay(d10);
    }

    public static Tween invert(Tween tween) {
        return new Invert(tween);
    }

    public static Tween loopCount(int i10, Tween... tweenArr) {
        return tweenArr.length == 1 ? new Loop(tweenArr[0], i10) : new Loop(sequence(tweenArr), i10);
    }

    public static Tween loopDuration(double d10, Tween... tweenArr) {
        return tweenArr.length == 1 ? new Loop(tweenArr[0], d10) : new Loop(sequence(tweenArr), d10);
    }

    public static Tween parallel(Tween... tweenArr) {
        return new Parallel(tweenArr);
    }

    public static Tween sequence(Tween... tweenArr) {
        return new Sequence(tweenArr);
    }

    public static Tween sineStep(Tween... tweenArr) {
        return tweenArr.length == 1 ? new Curve(tweenArr[0], SINE) : new Curve(sequence(tweenArr), SINE);
    }

    public static Tween smoothStep(Tween... tweenArr) {
        return tweenArr.length == 1 ? new Curve(tweenArr[0], SMOOTH) : new Curve(sequence(tweenArr), SMOOTH);
    }

    public static Tween stretch(double d10, Tween... tweenArr) {
        return tweenArr.length == 1 ? new Stretch(tweenArr[0], d10) : new Stretch(sequence(tweenArr), d10);
    }

    public static class Loop implements Tween, ContainsTweens {
        private double baseTime;
        private int current = 0;
        private final Tween[] delegate;
        private final double length;
        private final int loopCount;

        public Loop(Tween tween, double d10) {
            Tween[] tweenArr = new Tween[1];
            this.delegate = tweenArr;
            if (tween.getLength() <= 0.0d) {
                throw new IllegalArgumentException("Delegate length must be greater than 0");
            }
            if (d10 > 0.0d) {
                tweenArr[0] = tween;
                this.length = d10;
                this.loopCount = (int) Math.ceil(d10 / tween.getLength());
                return;
            }
            throw new IllegalArgumentException("Duration must be greater than 0");
        }

        @Override
        public double getLength() {
            return this.length;
        }

        @Override
        public Tween[] getTweens() {
            return this.delegate;
        }

        @Override
        public boolean interpolate(double d10) {
            if (d10 < 0.0d) {
                return true;
            }
            if (d10 < this.baseTime) {
                this.current = 0;
                this.baseTime = 0.0d;
            }
            if (this.current >= this.loopCount) {
                return false;
            }
            while (!this.delegate[0].interpolate(d10 - this.baseTime)) {
                this.baseTime += this.delegate[0].getLength();
                int i10 = this.current + 1;
                this.current = i10;
                if (i10 >= this.loopCount) {
                    return false;
                }
            }
            return d10 < this.length;
        }

        public String toString() {
            return getClass().getSimpleName() + "[delegate=" + ((Object) this.delegate[0]) + ", length=" + this.length + "]";
        }

        public Loop(Tween tween, int i10) {
            Tween[] tweenArr = new Tween[1];
            this.delegate = tweenArr;
            if (i10 > 0) {
                tweenArr[0] = tween;
                this.length = i10 * tween.getLength();
                this.loopCount = i10;
                return;
            }
            throw new IllegalArgumentException("Loop count must be greater than 0");
        }
    }
}
