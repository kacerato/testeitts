package org.luaj.vm2.lib;

import E2.d;
import android.provider.Telephony;
import java.util.Random;
import org.luaj.vm2.LuaDouble;
import org.luaj.vm2.LuaNumber;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class MathLib extends TwoArgFunction {
    public static MathLib MATHLIB;

    public static abstract class BinaryOp extends TwoArgFunction {
        public abstract double call(double d10, double d11);

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(call(luaValue.checkdouble(), luaValue2.checkdouble()));
        }
    }

    public static abstract class UnaryOp extends OneArgFunction {
        public abstract double call(double d10);

        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(call(luaValue.checkdouble()));
        }
    }

    public static final class abs extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.abs(d10);
        }
    }

    public static final class ceil extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.ceil(d10);
        }
    }

    public static final class cos extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.cos(d10);
        }
    }

    public static final class deg extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.toDegrees(d10);
        }
    }

    public static final class exp extends UnaryOp {
        final MathLib mathlib;

        public exp(MathLib mathLib) {
            this.mathlib = mathLib;
        }

        @Override
        public double call(double d10) {
            return this.mathlib.dpow_lib(2.718281828459045d, d10);
        }
    }

    public static final class floor extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.floor(d10);
        }
    }

    public static final class fmod extends BinaryOp {
        @Override
        public double call(double d10, double d11) {
            double d12 = d10 / d11;
            return d10 - (d11 * (d12 >= 0.0d ? Math.floor(d12) : Math.ceil(d12)));
        }
    }

    public static class frexp extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            double checkdouble = varargs.checkdouble(1);
            if (checkdouble == 0.0d) {
                LuaNumber luaNumber = LuaValue.ZERO;
                return LuaValue.varargsOf(luaNumber, luaNumber);
            }
            return LuaValue.varargsOf(LuaValue.valueOf(((d.f5375a & r0) + 4503599627370496L) * (Double.doubleToLongBits(checkdouble) >= 0 ? 1.1102230246251565E-16d : -1.1102230246251565E-16d)), LuaValue.valueOf((((int) (r0 >> 52)) & 2047) + Double.MIN_EXPONENT));
        }
    }

    public static final class ldexp extends BinaryOp {
        @Override
        public double call(double d10, double d11) {
            return d10 * Double.longBitsToDouble((((long) d11) + 1023) << 52);
        }
    }

    public static class max extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            double checkdouble = varargs.checkdouble(1);
            int narg = varargs.narg();
            for (int i10 = 2; i10 <= narg; i10++) {
                checkdouble = Math.max(checkdouble, varargs.checkdouble(i10));
            }
            return LuaValue.valueOf(checkdouble);
        }
    }

    public static class min extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            double checkdouble = varargs.checkdouble(1);
            int narg = varargs.narg();
            for (int i10 = 2; i10 <= narg; i10++) {
                checkdouble = Math.min(checkdouble, varargs.checkdouble(i10));
            }
            return LuaValue.valueOf(checkdouble);
        }
    }

    public static class modf extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            double checkdouble = varargs.checkdouble(1);
            double floor = checkdouble > 0.0d ? Math.floor(checkdouble) : Math.ceil(checkdouble);
            return LuaValue.varargsOf(LuaValue.valueOf(floor), LuaValue.valueOf(checkdouble - floor));
        }
    }

    public static final class pow extends BinaryOp {
        @Override
        public double call(double d10, double d11) {
            return MathLib.dpow_default(d10, d11);
        }
    }

    public static final class rad extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.toRadians(d10);
        }
    }

    public static class random extends LibFunction {
        Random random = new Random();

        @Override
        public LuaValue call() {
            return LuaValue.valueOf(this.random.nextDouble());
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            int checkint = luaValue.checkint();
            if (checkint < 1) {
                LuaValue.argerror(1, "interval is empty");
            }
            return LuaValue.valueOf(this.random.nextInt(checkint) + 1);
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int checkint = luaValue.checkint();
            int checkint2 = luaValue2.checkint();
            if (checkint2 < checkint) {
                LuaValue.argerror(2, "interval is empty");
            }
            return LuaValue.valueOf(checkint + this.random.nextInt((checkint2 + 1) - checkint));
        }
    }

    public static class randomseed extends OneArgFunction {
        final random random;

        public randomseed(random randomVar) {
            this.random = randomVar;
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            long checklong = luaValue.checklong();
            this.random.random = new Random(checklong);
            return LuaValue.NONE;
        }
    }

    public static final class sin extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.sin(d10);
        }
    }

    public static final class sqrt extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.sqrt(d10);
        }
    }

    public static final class tan extends UnaryOp {
        @Override
        public double call(double d10) {
            return Math.tan(d10);
        }
    }

    public MathLib() {
        MATHLIB = this;
    }

    public static LuaValue dpow(double d10, double d11) {
        MathLib mathLib = MATHLIB;
        return LuaDouble.valueOf(mathLib != null ? mathLib.dpow_lib(d10, d11) : dpow_default(d10, d11));
    }

    public static double dpow_d(double d10, double d11) {
        MathLib mathLib = MATHLIB;
        return mathLib != null ? mathLib.dpow_lib(d10, d11) : dpow_default(d10, d11);
    }

    public static double dpow_default(double d10, double d11) {
        double d12 = 1.0d;
        if (d11 < 0.0d) {
            return 1.0d / dpow_default(d10, -d11);
        }
        int i10 = (int) d11;
        double d13 = d10;
        while (i10 > 0) {
            if ((i10 & 1) != 0) {
                d12 *= d13;
            }
            i10 >>= 1;
            d13 *= d13;
        }
        double d14 = d11 - i10;
        if (d14 > 0.0d) {
            for (int i11 = (int) (d14 * 65536.0d); (65535 & i11) != 0; i11 <<= 1) {
                d10 = Math.sqrt(d10);
                if ((32768 & i11) != 0) {
                    d12 *= d10;
                }
            }
        }
        return d12;
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaTable = new LuaTable(0, 30);
        luaTable.set("abs", new abs());
        luaTable.set("ceil", new ceil());
        luaTable.set("cos", new cos());
        luaTable.set("deg", new deg());
        luaTable.set(Telephony.BaseMmsColumns.EXPIRY, new exp(this));
        luaTable.set("floor", new floor());
        luaTable.set("fmod", new fmod());
        luaTable.set("frexp", new frexp());
        luaTable.set("huge", LuaDouble.POSINF);
        luaTable.set("ldexp", new ldexp());
        luaTable.set("max", new max());
        luaTable.set("min", new min());
        luaTable.set("modf", new modf());
        luaTable.set("pi", 3.141592653589793d);
        luaTable.set("pow", new pow());
        random randomVar = new random();
        luaTable.set("random", randomVar);
        luaTable.set("randomseed", new randomseed(randomVar));
        luaTable.set("rad", new rad());
        luaTable.set("sin", new sin());
        luaTable.set("sqrt", new sqrt());
        luaTable.set("tan", new tan());
        luaValue2.set("math", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("math", luaTable);
        return luaTable;
    }

    public double dpow_lib(double d10, double d11) {
        return dpow_default(d10, d11);
    }
}
