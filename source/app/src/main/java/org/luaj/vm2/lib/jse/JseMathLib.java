package org.luaj.vm2.lib.jse;

import android.provider.Telephony;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.MathLib;

public class JseMathLib extends MathLib {

    public static final class acos extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.acos(d10);
        }
    }

    public static final class asin extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.asin(d10);
        }
    }

    public static final class atan extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.atan(d10);
        }
    }

    public static final class atan2 extends MathLib.BinaryOp {
        @Override
        public double call(double d10, double d11) {
            return Math.atan2(d10, d11);
        }
    }

    public static final class cosh extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.cosh(d10);
        }
    }

    public static final class exp extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.exp(d10);
        }
    }

    public static final class log extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.log(d10);
        }
    }

    public static final class pow extends MathLib.BinaryOp {
        @Override
        public double call(double d10, double d11) {
            return Math.pow(d10, d11);
        }
    }

    public static final class sinh extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.sinh(d10);
        }
    }

    public static final class tanh extends MathLib.UnaryOp {
        @Override
        public double call(double d10) {
            return Math.tanh(d10);
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        LuaValue luaValue3 = luaValue2.get("math");
        luaValue3.set("acos", new acos());
        luaValue3.set("asin", new asin());
        luaValue3.set("atan", new atan());
        luaValue3.set("atan2", new atan2());
        luaValue3.set("cosh", new cosh());
        luaValue3.set(Telephony.BaseMmsColumns.EXPIRY, new exp());
        luaValue3.set("log", new log());
        luaValue3.set("pow", new pow());
        luaValue3.set("sinh", new sinh());
        luaValue3.set("tanh", new tanh());
        return luaValue3;
    }

    @Override
    public double dpow_lib(double d10, double d11) {
        return Math.pow(d10, d11);
    }
}
