package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.YS;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class J2 extends AbstractC4406d4 implements YS {

    public static final boolean f36495e = true;

    public static Object a(J2 j22, J2 j23, BiFunction biFunction, BiFunction biFunction2, BiFunction biFunction3) {
        j22.getClass();
        if (j22 instanceof M2) {
            return biFunction.apply(j22.o0(), j23.o0());
        }
        if (j22.p0()) {
            return biFunction2.apply(j22.l0(), j23.l0());
        }
        if (j22.r0()) {
            return biFunction3.apply(j22.n0(), j23.n0());
        }
        throw new C5417Jv0();
    }

    public abstract M2 S();

    public abstract Object a(Function function, Function function2, Function function3);

    public abstract void a(C4798y c4798y, com.android.tools.r8.dex.M m10);

    public abstract void a(Consumer consumer, Consumer consumer2, Consumer consumer3);

    public abstract int b(J2 j22);

    public C4554l1 l0() {
        return null;
    }

    public AbstractC4744v2 m0() {
        return null;
    }

    public A2 n0() {
        return null;
    }

    public M2 o0() {
        return null;
    }

    public boolean p0() {
        return false;
    }

    public boolean q0() {
        return false;
    }

    public boolean r0() {
        return false;
    }
}
