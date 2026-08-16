package org.luaj.vm2.lib;

import android.provider.Telephony;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class Bit32Lib extends TwoArgFunction {
    static Class class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2;
    static Class class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV;

    public static final class Bit32Lib2 extends TwoArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int i10 = this.opcode;
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? LuaValue.NIL : Bit32Lib.rshift(luaValue.checkint(), luaValue2.checkint()) : Bit32Lib.rrotate(luaValue.checkint(), luaValue2.checkint()) : Bit32Lib.lshift(luaValue.checkint(), luaValue2.checkint()) : Bit32Lib.lrotate(luaValue.checkint(), luaValue2.checkint()) : Bit32Lib.arshift(luaValue.checkint(), luaValue2.checkint());
        }
    }

    public static final class Bit32LibV extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            switch (this.opcode) {
                case 0:
                    return Bit32Lib.band(varargs);
                case 1:
                    return Bit32Lib.bnot(varargs);
                case 2:
                    return Bit32Lib.bor(varargs);
                case 3:
                    return Bit32Lib.btest(varargs);
                case 4:
                    return Bit32Lib.bxor(varargs);
                case 5:
                    return Bit32Lib.extract(varargs.checkint(1), varargs.checkint(2), varargs.optint(3, 1));
                case 6:
                    return Bit32Lib.replace(varargs.checkint(1), varargs.checkint(2), varargs.checkint(3), varargs.optint(4, 1));
                default:
                    return LuaValue.NIL;
            }
        }
    }

    public static LuaValue arshift(int i10, int i11) {
        return bitsToValue(i11 >= 0 ? i10 >> i11 : i10 << (-i11));
    }

    public static Varargs band(Varargs varargs) {
        int i10 = -1;
        for (int i11 = 1; i11 <= varargs.narg(); i11++) {
            i10 &= varargs.checkint(i11);
        }
        return bitsToValue(i10);
    }

    private static LuaValue bitsToValue(int i10) {
        return i10 < 0 ? LuaValue.valueOf(i10 & 4294967295L) : LuaValue.valueOf(i10);
    }

    public static Varargs bnot(Varargs varargs) {
        return bitsToValue(~varargs.checkint(1));
    }

    public static Varargs bor(Varargs varargs) {
        int i10 = 0;
        for (int i11 = 1; i11 <= varargs.narg(); i11++) {
            i10 |= varargs.checkint(i11);
        }
        return bitsToValue(i10);
    }

    public static Varargs btest(Varargs varargs) {
        int i10 = -1;
        for (int i11 = 1; i11 <= varargs.narg(); i11++) {
            i10 &= varargs.checkint(i11);
        }
        return LuaValue.valueOf(i10 != 0);
    }

    public static Varargs bxor(Varargs varargs) {
        int i10 = 0;
        for (int i11 = 1; i11 <= varargs.narg(); i11++) {
            i10 ^= varargs.checkint(i11);
        }
        return bitsToValue(i10);
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static LuaValue extract(int i10, int i11, int i12) {
        if (i11 < 0) {
            LuaValue.argerror(2, "field cannot be negative");
        }
        if (i12 < 0) {
            LuaValue.argerror(3, "width must be postive");
        }
        if (i11 + i12 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        return bitsToValue((i10 >>> i11) & ((-1) >>> (32 - i12)));
    }

    public static LuaValue lrotate(int i10, int i11) {
        if (i11 < 0) {
            return rrotate(i10, -i11);
        }
        int i12 = i11 & 31;
        return bitsToValue((i10 >>> (32 - i12)) | (i10 << i12));
    }

    public static LuaValue lshift(int i10, int i11) {
        if (i11 >= 32 || i11 <= -32) {
            return LuaValue.ZERO;
        }
        return bitsToValue(i11 >= 0 ? i10 << i11 : i10 >>> (-i11));
    }

    public static LuaValue replace(int i10, int i11, int i12, int i13) {
        if (i12 < 0) {
            LuaValue.argerror(3, "field cannot be negative");
        }
        if (i13 < 0) {
            LuaValue.argerror(4, "width must be postive");
        }
        if (i12 + i13 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        int i14 = (-1) >>> (32 - i13);
        return bitsToValue((i10 & (~(i14 << i12))) | ((i11 & i14) << i12));
    }

    public static LuaValue rrotate(int i10, int i11) {
        if (i11 < 0) {
            return lrotate(i10, -i11);
        }
        int i12 = i11 & 31;
        return bitsToValue((i10 << (32 - i12)) | (i10 >>> i12));
    }

    public static LuaValue rshift(int i10, int i11) {
        if (i11 >= 32 || i11 <= -32) {
            return LuaValue.ZERO;
        }
        return bitsToValue(i11 >= 0 ? i10 >>> i11 : i10 << (-i11));
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        Class cls = class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV;
        if (cls == null) {
            cls = class$("org.luaj.vm2.lib.Bit32Lib$Bit32LibV");
            class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV = cls;
        }
        bind(luaTable, cls, new String[]{"band", "bnot", "bor", "btest", "bxor", "extract", "replace"});
        Class cls2 = class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2;
        if (cls2 == null) {
            cls2 = class$("org.luaj.vm2.lib.Bit32Lib$Bit32Lib2");
            class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2 = cls2;
        }
        bind(luaTable, cls2, new String[]{"arshift", "lrotate", "lshift", "rrotate", "rshift"});
        luaValue2.set("bit32", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("bit32", luaTable);
        return luaTable;
    }
}
