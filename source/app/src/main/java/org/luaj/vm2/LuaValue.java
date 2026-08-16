package org.luaj.vm2;

import android.accounts.AccountManager;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import org.luaj.vm2.Varargs;

public abstract class LuaValue extends Varargs {
    private static final int MAXTAGLOOP = 100;
    public static final int TBOOLEAN = 1;
    public static final int TFUNCTION = 6;
    public static final int TINT = -2;
    public static final int TLIGHTUSERDATA = 2;
    public static final int TNIL = 0;
    public static final int TNONE = -1;
    public static final int TNUMBER = 3;
    public static final int TSTRING = 4;
    public static final int TTABLE = 5;
    public static final int TTHREAD = 8;
    public static final int TUSERDATA = 7;
    public static final int TVALUE = 9;
    public static final String[] TYPE_NAMES = {"nil", TypedValues.Custom.S_BOOLEAN, "lightuserdata", "number", TypedValues.Custom.S_STRING, "table", "function", AccountManager.KEY_USERDATA, "thread", "value"};
    public static final LuaValue NIL = LuaNil._NIL;
    public static final LuaBoolean TRUE = LuaBoolean._TRUE;
    public static final LuaBoolean FALSE = LuaBoolean._FALSE;
    public static final LuaValue NONE = None._NONE;
    public static final LuaNumber ZERO = LuaInteger.valueOf(0);
    public static final LuaNumber ONE = LuaInteger.valueOf(1);
    public static final LuaNumber MINUSONE = LuaInteger.valueOf(-1);
    public static final LuaValue[] NOVALS = new LuaValue[0];
    public static LuaString ENV = valueOf("_ENV");
    public static final LuaString INDEX = valueOf("__index");
    public static final LuaString NEWINDEX = valueOf("__newindex");
    public static final LuaString CALL = valueOf("__call");
    public static final LuaString MODE = valueOf("__mode");
    public static final LuaString METATABLE = valueOf("__metatable");
    public static final LuaString ADD = valueOf("__add");
    public static final LuaString SUB = valueOf("__sub");
    public static final LuaString DIV = valueOf("__div");
    public static final LuaString MUL = valueOf("__mul");
    public static final LuaString POW = valueOf("__pow");
    public static final LuaString MOD = valueOf("__mod");
    public static final LuaString UNM = valueOf("__unm");
    public static final LuaString LEN = valueOf("__len");
    public static final LuaString EQ = valueOf("__eq");
    public static final LuaString LT = valueOf("__lt");
    public static final LuaString LE = valueOf("__le");
    public static final LuaString TOSTRING = valueOf("__tostring");
    public static final LuaString CONCAT = valueOf("__concat");
    public static final LuaString EMPTYSTRING = valueOf("");
    private static int MAXSTACK = 250;
    public static final LuaValue[] NILS = new LuaValue[250];

    public static final class None extends LuaNil {
        static None _NONE = new None();

        private None() {
        }

        @Override
        public LuaValue arg(int i10) {
            return LuaValue.NIL;
        }

        @Override
        public LuaValue arg1() {
            return LuaValue.NIL;
        }

        @Override
        public void copyto(LuaValue[] luaValueArr, int i10, int i11) {
            while (i11 > 0) {
                luaValueArr[i10] = LuaValue.NIL;
                i11--;
                i10++;
            }
        }

        @Override
        public int narg() {
            return 0;
        }

        @Override
        public Varargs subargs(int i10) {
            return i10 > 0 ? this : LuaValue.argerror(1, "start must be > 0");
        }

        @Override
        public String tojstring() {
            return "none";
        }
    }

    static {
        for (int i10 = 0; i10 < MAXSTACK; i10++) {
            NILS[i10] = NIL;
        }
    }

    public static LuaValue argerror(int i10, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("bad argument #");
        stringBuffer.append(i10);
        stringBuffer.append(": ");
        stringBuffer.append(str);
        throw new LuaError(stringBuffer.toString());
    }

    public static void assert_(boolean z10, String str) {
        if (!z10) {
            throw new LuaError(str);
        }
    }

    public static final boolean eqmtcall(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        LuaString luaString = EQ;
        LuaValue rawget = luaValue2.rawget(luaString);
        if (rawget.isnil() || rawget != luaValue4.rawget(luaString)) {
            return false;
        }
        return rawget.call(luaValue, luaValue3).toboolean();
    }

    public static LuaValue error(String str) {
        throw new LuaError(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0020, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static LuaValue gettable(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue metatag;
        int i10 = 0;
        while (true) {
            if (luaValue.istable()) {
                LuaValue rawget = luaValue.rawget(luaValue2);
                if (!rawget.isnil()) {
                    break;
                }
                LuaValue metatag2 = luaValue.metatag(INDEX);
                if (metatag2.isnil()) {
                    break;
                }
                metatag = metatag2;
            } else {
                metatag = luaValue.metatag(INDEX);
                if (metatag.isnil()) {
                    luaValue.indexerror();
                }
            }
            if (metatag.isfunction()) {
                return metatag.call(luaValue, luaValue2);
            }
            i10++;
            if (i10 >= 100) {
                error("loop in gettable");
                return NIL;
            }
            luaValue = metatag;
        }
    }

    private void indexerror() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to index ? (a ");
        stringBuffer.append(typename());
        stringBuffer.append(" value)");
        error(stringBuffer.toString());
    }

    public static LuaTable listOf(LuaValue[] luaValueArr) {
        return new LuaTable(null, luaValueArr, null);
    }

    public static Metatable metatableOf(LuaValue luaValue) {
        if (luaValue == null || !luaValue.istable()) {
            if (luaValue != null) {
                return new NonTableMetatable(luaValue);
            }
            return null;
        }
        LuaValue rawget = luaValue.rawget(MODE);
        if (rawget.isstring()) {
            String str = rawget.tojstring();
            boolean z10 = str.indexOf(107) >= 0;
            boolean z11 = str.indexOf(118) >= 0;
            if (z10 || z11) {
                return new WeakTable(z10, z11, luaValue);
            }
        }
        return (LuaTable) luaValue;
    }

    public static boolean settable(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue metatag;
        int i10 = 0;
        while (true) {
            if (!luaValue.istable()) {
                metatag = luaValue.metatag(NEWINDEX);
                if (metatag.isnil()) {
                    luaValue.typerror(FirebaseAnalytics.d.f67690b0);
                }
            } else {
                if (!luaValue.rawget(luaValue2).isnil()) {
                    break;
                }
                metatag = luaValue.metatag(NEWINDEX);
                if (metatag.isnil()) {
                    break;
                }
            }
            if (metatag.isfunction()) {
                metatag.call(luaValue, luaValue2, luaValue3);
                return true;
            }
            i10++;
            if (i10 >= 100) {
                error("loop in settable");
                return false;
            }
            luaValue = metatag;
        }
        luaValue.rawset(luaValue2, luaValue3);
        return true;
    }

    public static LuaTable tableOf() {
        return new LuaTable();
    }

    public static Varargs tailcallOf(LuaValue luaValue, Varargs varargs) {
        return new TailcallVarargs(luaValue, varargs);
    }

    public static LuaUserdata userdataOf(Object obj) {
        return new LuaUserdata(obj);
    }

    public static LuaBoolean valueOf(boolean z10) {
        return z10 ? TRUE : FALSE;
    }

    public static Varargs varargsOf(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        return varargs.narg() != 0 ? new Varargs.ArrayPartVarargs(new LuaValue[]{luaValue, luaValue2}, 0, 2, varargs) : new Varargs.PairVarargs(luaValue, luaValue2);
    }

    public LuaValue add(double d10) {
        return arithmtwith(ADD, d10);
    }

    public LuaValue and(LuaValue luaValue) {
        return toboolean() ? luaValue : this;
    }

    @Override
    public LuaValue arg(int i10) {
        return i10 == 1 ? this : NIL;
    }

    @Override
    public LuaValue arg1() {
        return this;
    }

    public LuaValue aritherror() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to perform arithmetic on ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue arithmt(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue metatag = metatag(luaValue);
        if (metatag.isnil()) {
            metatag = luaValue2.metatag(luaValue);
            if (metatag.isnil()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("attempt to perform arithmetic ");
                stringBuffer.append((Object) luaValue);
                stringBuffer.append(" on ");
                stringBuffer.append(typename());
                stringBuffer.append(" and ");
                stringBuffer.append(luaValue2.typename());
                error(stringBuffer.toString());
            }
        }
        return metatag.call(this, luaValue2);
    }

    public LuaValue arithmtwith(LuaValue luaValue, double d10) {
        LuaValue metatag = metatag(luaValue);
        if (metatag.isnil()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("attempt to perform arithmetic ");
            stringBuffer.append((Object) luaValue);
            stringBuffer.append(" on number and ");
            stringBuffer.append(typename());
            error(stringBuffer.toString());
        }
        return metatag.call(valueOf(d10), this);
    }

    public Buffer buffer() {
        return new Buffer(this);
    }

    public LuaValue call() {
        return callmt().call(this);
    }

    public LuaValue callmt() {
        return checkmetatag(CALL, "attempt to call ");
    }

    public boolean checkboolean() {
        argerror(TypedValues.Custom.S_BOOLEAN);
        return false;
    }

    public LuaClosure checkclosure() {
        argerror("closure");
        return null;
    }

    public double checkdouble() {
        argerror("double");
        return 0.0d;
    }

    public LuaFunction checkfunction() {
        argerror("function");
        return null;
    }

    public Globals checkglobals() {
        argerror("globals");
        return null;
    }

    public int checkint() {
        argerror("int");
        return 0;
    }

    public LuaInteger checkinteger() {
        argerror(TypedValues.Custom.S_INT);
        return null;
    }

    public String checkjstring() {
        argerror(TypedValues.Custom.S_STRING);
        return null;
    }

    public long checklong() {
        argerror("long");
        return 0L;
    }

    public LuaValue checkmetatag(LuaValue luaValue, String str) {
        LuaValue metatag = metatag(luaValue);
        if (!metatag.isnil()) {
            return metatag;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue checknotnil() {
        return this;
    }

    public LuaNumber checknumber() {
        argerror("number");
        return null;
    }

    public LuaString checkstring() {
        argerror(TypedValues.Custom.S_STRING);
        return null;
    }

    public LuaTable checktable() {
        argerror("table");
        return null;
    }

    public LuaThread checkthread() {
        argerror("thread");
        return null;
    }

    public Object checkuserdata() {
        argerror(AccountManager.KEY_USERDATA);
        return null;
    }

    public LuaValue compareerror(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to compare ");
        stringBuffer.append(typename());
        stringBuffer.append(" with ");
        stringBuffer.append(str);
        throw new LuaError(stringBuffer.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
    
        if (r1.isnil() == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LuaValue comparemt(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue metatag = metatag(luaValue);
        if (metatag.isnil()) {
            metatag = luaValue2.metatag(luaValue);
            if (metatag.isnil()) {
                if (LE.raweq(luaValue)) {
                    LuaString luaString = LT;
                    LuaValue metatag2 = metatag(luaString);
                    if (metatag2.isnil()) {
                        metatag2 = luaValue2.metatag(luaString);
                    }
                    return metatag2.call(luaValue2, this).not();
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("attempt to compare ");
                stringBuffer.append((Object) luaValue);
                stringBuffer.append(" on ");
                stringBuffer.append(typename());
                stringBuffer.append(" and ");
                stringBuffer.append(luaValue2.typename());
                return error(stringBuffer.toString());
            }
        }
        return metatag.call(this, luaValue2);
    }

    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    public LuaValue concatTo(LuaNumber luaNumber) {
        return luaNumber.concatmt(this);
    }

    public LuaValue concatmt(LuaValue luaValue) {
        LuaString luaString = CONCAT;
        LuaValue metatag = metatag(luaString);
        if (metatag.isnil()) {
            metatag = luaValue.metatag(luaString);
            if (metatag.isnil()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("attempt to concatenate ");
                stringBuffer.append(typename());
                stringBuffer.append(" and ");
                stringBuffer.append(luaValue.typename());
                error(stringBuffer.toString());
            }
        }
        return metatag.call(this, luaValue);
    }

    public LuaValue div(double d10) {
        return aritherror("div");
    }

    public LuaValue divInto(double d10) {
        return arithmtwith(DIV, d10);
    }

    public LuaValue eq(LuaValue luaValue) {
        return this == luaValue ? TRUE : FALSE;
    }

    public boolean eq_b(LuaValue luaValue) {
        return this == luaValue;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public LuaValue get(int i10) {
        return get(LuaInteger.valueOf(i10));
    }

    public LuaValue getmetatable() {
        return null;
    }

    public LuaValue gt(double d10) {
        return compareerror("number");
    }

    public boolean gt_b(double d10) {
        compareerror("number");
        return false;
    }

    public LuaValue gteq(double d10) {
        return compareerror("number");
    }

    public boolean gteq_b(double d10) {
        compareerror("number");
        return false;
    }

    public LuaValue illegal(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("illegal operation '");
        stringBuffer.append(str);
        stringBuffer.append("' for ");
        stringBuffer.append(str2);
        throw new LuaError(stringBuffer.toString());
    }

    public Varargs inext(LuaValue luaValue) {
        return typerror("table");
    }

    public void initupvalue1(LuaValue luaValue) {
    }

    public Varargs invoke() {
        return invoke(NONE);
    }

    public Varargs invokemethod(String str) {
        return get(str).invoke(this);
    }

    public boolean isboolean() {
        return false;
    }

    public boolean isclosure() {
        return false;
    }

    public boolean isfunction() {
        return false;
    }

    public boolean isint() {
        return false;
    }

    public boolean isinttype() {
        return false;
    }

    public boolean islong() {
        return false;
    }

    public boolean isnil() {
        return false;
    }

    public boolean isnumber() {
        return false;
    }

    public boolean isstring() {
        return false;
    }

    public boolean istable() {
        return false;
    }

    public boolean isthread() {
        return false;
    }

    public boolean isuserdata() {
        return false;
    }

    public boolean isvalidkey() {
        return true;
    }

    public LuaValue len() {
        return checkmetatag(LEN, "attempt to get length of ").call(this);
    }

    public LuaValue lenerror() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to get length of ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public int length() {
        return len().toint();
    }

    public LuaValue load(LuaValue luaValue) {
        return luaValue.call(EMPTYSTRING, this);
    }

    public LuaValue lt(double d10) {
        return compareerror("number");
    }

    public boolean lt_b(double d10) {
        compareerror("number");
        return false;
    }

    public LuaValue lteq(double d10) {
        return compareerror("number");
    }

    public boolean lteq_b(double d10) {
        compareerror("number");
        return false;
    }

    public LuaValue metatag(LuaValue luaValue) {
        LuaValue luaValue2 = getmetatable();
        return luaValue2 == null ? NIL : luaValue2.rawget(luaValue);
    }

    public LuaValue method(String str) {
        return get(str).call(this);
    }

    public LuaValue mod(double d10) {
        return aritherror("mod");
    }

    public LuaValue modFrom(double d10) {
        return arithmtwith(MOD, d10);
    }

    public LuaValue mul(double d10) {
        return arithmtwith(MUL, d10);
    }

    @Override
    public int narg() {
        return 1;
    }

    public LuaValue neg() {
        return checkmetatag(UNM, "attempt to perform arithmetic on ").call(this);
    }

    public LuaValue neq(LuaValue luaValue) {
        return eq_b(luaValue) ? FALSE : TRUE;
    }

    public boolean neq_b(LuaValue luaValue) {
        return !eq_b(luaValue);
    }

    public Varargs next(LuaValue luaValue) {
        return typerror("table");
    }

    public LuaValue not() {
        return FALSE;
    }

    public Varargs onInvoke(Varargs varargs) {
        return invoke(varargs);
    }

    public boolean optboolean(boolean z10) {
        argerror(TypedValues.Custom.S_BOOLEAN);
        return false;
    }

    public LuaClosure optclosure(LuaClosure luaClosure) {
        argerror("closure");
        return null;
    }

    public double optdouble(double d10) {
        argerror("double");
        return 0.0d;
    }

    public LuaFunction optfunction(LuaFunction luaFunction) {
        argerror("function");
        return null;
    }

    public int optint(int i10) {
        argerror("int");
        return 0;
    }

    public LuaInteger optinteger(LuaInteger luaInteger) {
        argerror(TypedValues.Custom.S_INT);
        return null;
    }

    public String optjstring(String str) {
        argerror(SerializableShaderEntry.f81157k);
        return null;
    }

    public long optlong(long j10) {
        argerror("long");
        return 0L;
    }

    public LuaNumber optnumber(LuaNumber luaNumber) {
        argerror("number");
        return null;
    }

    public LuaString optstring(LuaString luaString) {
        argerror(TypedValues.Custom.S_STRING);
        return null;
    }

    public LuaTable opttable(LuaTable luaTable) {
        argerror("table");
        return null;
    }

    public LuaThread optthread(LuaThread luaThread) {
        argerror("thread");
        return null;
    }

    public Object optuserdata(Class cls, Object obj) {
        argerror(cls.getName());
        return null;
    }

    public LuaValue optvalue(LuaValue luaValue) {
        return this;
    }

    public LuaValue or(LuaValue luaValue) {
        return toboolean() ? this : luaValue;
    }

    public LuaValue pow(double d10) {
        return aritherror("pow");
    }

    public LuaValue powWith(double d10) {
        return arithmtwith(POW, d10);
    }

    public void presize(int i10) {
        typerror("table");
    }

    public boolean raweq(double d10) {
        return false;
    }

    public LuaValue rawget(int i10) {
        return rawget(valueOf(i10));
    }

    public int rawlen() {
        typerror("table or string");
        return 0;
    }

    public void rawset(int i10, String str) {
        rawset(i10, valueOf(str));
    }

    public void rawsetlist(int i10, Varargs varargs) {
        int narg = varargs.narg();
        int i11 = 0;
        while (i11 < narg) {
            int i12 = i10 + i11;
            i11++;
            rawset(i12, varargs.arg(i11));
        }
    }

    public void set(int i10, String str) {
        set(i10, valueOf(str));
    }

    public LuaValue setmetatable(LuaValue luaValue) {
        return argerror("table");
    }

    public int strcmp(LuaString luaString) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to compare ");
        stringBuffer.append(typename());
        error(stringBuffer.toString());
        return 0;
    }

    public LuaValue strongvalue() {
        return this;
    }

    public LuaString strvalue() {
        typerror("strValue");
        return null;
    }

    public LuaValue sub(double d10) {
        return aritherror(Telephony.BaseMmsColumns.SUBJECT);
    }

    public LuaValue subFrom(double d10) {
        return arithmtwith(SUB, d10);
    }

    @Override
    public Varargs subargs(int i10) {
        return i10 == 1 ? this : i10 > 1 ? NONE : argerror(1, "start must be > 0");
    }

    public boolean testfor_b(LuaValue luaValue, LuaValue luaValue2) {
        return luaValue2.gt_b(0) ? lteq_b(luaValue) : gteq_b(luaValue);
    }

    @Override
    public String toString() {
        return tojstring();
    }

    public boolean toboolean() {
        return true;
    }

    public byte tobyte() {
        return (byte) 0;
    }

    public char tochar() {
        return (char) 0;
    }

    public double todouble() {
        return 0.0d;
    }

    public float tofloat() {
        return 0.0f;
    }

    public int toint() {
        return 0;
    }

    @Override
    public String tojstring() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(typename());
        stringBuffer.append(": ");
        stringBuffer.append(Integer.toHexString(hashCode()));
        return stringBuffer.toString();
    }

    public long tolong() {
        return 0L;
    }

    public LuaValue tonumber() {
        return NIL;
    }

    public short toshort() {
        return (short) 0;
    }

    public LuaValue tostring() {
        return NIL;
    }

    public Object touserdata() {
        return null;
    }

    public abstract int type();

    public abstract String typename();

    public LuaValue typerror(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(" expected, got ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue unimplemented(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("'");
        stringBuffer.append(str);
        stringBuffer.append("' not implemented for ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public static LuaTable listOf(LuaValue[] luaValueArr, Varargs varargs) {
        return new LuaTable(null, luaValueArr, varargs);
    }

    public static LuaTable tableOf(int i10, int i11) {
        return new LuaTable(i10, i11);
    }

    public static LuaUserdata userdataOf(Object obj, LuaValue luaValue) {
        return new LuaUserdata(obj, luaValue);
    }

    public static LuaInteger valueOf(int i10) {
        return LuaInteger.valueOf(i10);
    }

    public static Varargs varargsOf(LuaValue luaValue, Varargs varargs) {
        return varargs.narg() != 0 ? new Varargs.PairVarargs(luaValue, varargs) : luaValue;
    }

    public LuaValue add(int i10) {
        return add(i10);
    }

    public LuaValue argerror(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("bad argument: ");
        stringBuffer.append(str);
        stringBuffer.append(" expected, got ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue aritherror(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to perform arithmetic '");
        stringBuffer.append(str);
        stringBuffer.append("' on ");
        stringBuffer.append(typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue call(String str) {
        return call(valueOf(str));
    }

    public LuaNumber checknumber(String str) {
        throw new LuaError(str);
    }

    public Object checkuserdata(Class cls) {
        argerror(AccountManager.KEY_USERDATA);
        return null;
    }

    public LuaValue compareerror(LuaValue luaValue) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to compare ");
        stringBuffer.append(typename());
        stringBuffer.append(" with ");
        stringBuffer.append(luaValue.typename());
        throw new LuaError(stringBuffer.toString());
    }

    public LuaValue concat(LuaValue luaValue) {
        return concatmt(luaValue);
    }

    public LuaValue concatTo(LuaString luaString) {
        return luaString.concatmt(this);
    }

    public LuaValue div(int i10) {
        return aritherror("div");
    }

    public LuaValue get(String str) {
        return get(valueOf(str));
    }

    public LuaValue gt(int i10) {
        return compareerror("number");
    }

    public boolean gt_b(int i10) {
        compareerror("number");
        return false;
    }

    public LuaValue gteq(int i10) {
        return valueOf(todouble() >= ((double) i10));
    }

    public boolean gteq_b(int i10) {
        compareerror("number");
        return false;
    }

    public Varargs invoke(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        return invoke(varargsOf(luaValue, luaValue2, varargs));
    }

    public Varargs invokemethod(String str, Varargs varargs) {
        return get(str).invoke(varargsOf(this, varargs));
    }

    public boolean isuserdata(Class cls) {
        return false;
    }

    public LuaValue lt(int i10) {
        return compareerror("number");
    }

    public boolean lt_b(int i10) {
        compareerror("number");
        return false;
    }

    public LuaValue lteq(int i10) {
        return compareerror("number");
    }

    public boolean lteq_b(int i10) {
        compareerror("number");
        return false;
    }

    public LuaValue method(String str, LuaValue luaValue) {
        return get(str).call(this, luaValue);
    }

    public LuaValue mod(int i10) {
        return aritherror("mod");
    }

    public LuaValue mul(int i10) {
        return mul(i10);
    }

    public Object optuserdata(Object obj) {
        argerror("object");
        return null;
    }

    public LuaValue pow(int i10) {
        return aritherror("pow");
    }

    public LuaValue powWith(int i10) {
        return powWith(i10);
    }

    public boolean raweq(int i10) {
        return false;
    }

    public LuaValue rawget(String str) {
        return rawget(valueOf(str));
    }

    public void rawset(int i10, LuaValue luaValue) {
        rawset(valueOf(i10), luaValue);
    }

    public void set(int i10, LuaValue luaValue) {
        set(LuaInteger.valueOf(i10), luaValue);
    }

    public int strcmp(LuaValue luaValue) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("attempt to compare ");
        stringBuffer.append(typename());
        error(stringBuffer.toString());
        return 0;
    }

    public LuaValue sub(int i10) {
        return aritherror(Telephony.BaseMmsColumns.SUBJECT);
    }

    public LuaValue subFrom(int i10) {
        return subFrom(i10);
    }

    public Object touserdata(Class cls) {
        return null;
    }

    public static LuaTable tableOf(Varargs varargs, int i10) {
        return new LuaTable(varargs, i10);
    }

    public static LuaNumber valueOf(double d10) {
        return LuaDouble.valueOf(d10);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr) {
        int length = luaValueArr.length;
        return length != 0 ? length != 1 ? length != 2 ? new Varargs.ArrayVarargs(luaValueArr, NONE) : new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]) : luaValueArr[0] : NONE;
    }

    public LuaValue add(LuaValue luaValue) {
        return arithmt(ADD, luaValue);
    }

    public LuaValue call(LuaValue luaValue) {
        return callmt().call(this, luaValue);
    }

    public LuaValue concatTo(LuaValue luaValue) {
        return luaValue.concatmt(this);
    }

    public LuaValue div(LuaValue luaValue) {
        return arithmt(DIV, luaValue);
    }

    public LuaValue get(LuaValue luaValue) {
        return gettable(this, luaValue);
    }

    public LuaValue gt(LuaValue luaValue) {
        return luaValue.comparemt(LE, this);
    }

    public boolean gt_b(LuaValue luaValue) {
        return luaValue.comparemt(LE, this).toboolean();
    }

    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.comparemt(LT, this);
    }

    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.comparemt(LT, this).toboolean();
    }

    public Varargs invoke(LuaValue luaValue, Varargs varargs) {
        return invoke(varargsOf(luaValue, varargs));
    }

    public Varargs invokemethod(String str, LuaValue[] luaValueArr) {
        return get(str).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public LuaValue lt(LuaValue luaValue) {
        return comparemt(LT, luaValue);
    }

    public boolean lt_b(LuaValue luaValue) {
        return comparemt(LT, luaValue).toboolean();
    }

    public LuaValue lteq(LuaValue luaValue) {
        return comparemt(LE, luaValue);
    }

    public boolean lteq_b(LuaValue luaValue) {
        return comparemt(LE, luaValue).toboolean();
    }

    public LuaValue method(String str, LuaValue luaValue, LuaValue luaValue2) {
        return get(str).call(this, luaValue, luaValue2);
    }

    public LuaValue mod(LuaValue luaValue) {
        return arithmt(MOD, luaValue);
    }

    public LuaValue mul(LuaValue luaValue) {
        return arithmt(MUL, luaValue);
    }

    public LuaValue pow(LuaValue luaValue) {
        return arithmt(POW, luaValue);
    }

    public boolean raweq(LuaString luaString) {
        return false;
    }

    public LuaValue rawget(LuaValue luaValue) {
        return unimplemented("rawget");
    }

    public void rawset(String str, double d10) {
        rawset(valueOf(str), valueOf(d10));
    }

    public void set(String str, double d10) {
        set(valueOf(str), valueOf(d10));
    }

    public LuaValue sub(LuaValue luaValue) {
        return arithmt(SUB, luaValue);
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr) {
        return new LuaTable(luaValueArr, null, null);
    }

    public static LuaString valueOf(String str) {
        return LuaString.valueOf(str);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i10, int i11) {
        return i11 != 0 ? i11 != 1 ? i11 != 2 ? new Varargs.ArrayPartVarargs(luaValueArr, i10, i11, NONE) : new Varargs.PairVarargs(luaValueArr[i10], luaValueArr[i10 + 1]) : luaValueArr[i10] : NONE;
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return callmt().call(this, luaValue, luaValue2);
    }

    public Varargs invoke(Varargs varargs) {
        return callmt().invoke(this, varargs);
    }

    public Varargs invokemethod(LuaValue luaValue) {
        return get(luaValue).invoke(this);
    }

    public LuaValue method(LuaValue luaValue) {
        return get(luaValue).call(this);
    }

    public boolean raweq(LuaUserdata luaUserdata) {
        return false;
    }

    public void rawset(String str, int i10) {
        rawset(valueOf(str), valueOf(i10));
    }

    public void set(String str, int i10) {
        set(valueOf(str), valueOf(i10));
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2) {
        return new LuaTable(luaValueArr, luaValueArr2, null);
    }

    public static LuaString valueOf(byte[] bArr) {
        return LuaString.valueOf(bArr);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i10, int i11, Varargs varargs) {
        if (i11 == 0) {
            return varargs;
        }
        if (i11 == 1) {
            return varargs.narg() > 0 ? new Varargs.PairVarargs(luaValueArr[i10], varargs) : luaValueArr[i10];
        }
        if (i11 == 2 && varargs.narg() <= 0) {
            return new Varargs.PairVarargs(luaValueArr[i10], luaValueArr[i10 + 1]);
        }
        return new Varargs.ArrayPartVarargs(luaValueArr, i10, i11, varargs);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return callmt().invoke(new LuaValue[]{this, luaValue, luaValue2, luaValue3}).arg1();
    }

    public Varargs invoke(LuaValue[] luaValueArr) {
        return invoke(varargsOf(luaValueArr));
    }

    public Varargs invokemethod(LuaValue luaValue, Varargs varargs) {
        return get(luaValue).invoke(varargsOf(this, varargs));
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2) {
        return get(luaValue).call(this, luaValue2);
    }

    public boolean raweq(LuaValue luaValue) {
        return this == luaValue;
    }

    public void rawset(String str, String str2) {
        rawset(valueOf(str), valueOf(str2));
    }

    public void set(String str, String str2) {
        set(valueOf(str), valueOf(str2));
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        return new LuaTable(luaValueArr, luaValueArr2, varargs);
    }

    public static LuaString valueOf(byte[] bArr, int i10, int i11) {
        return LuaString.valueOf(bArr, i10, i11);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, Varargs varargs) {
        int length = luaValueArr.length;
        if (length == 0) {
            return varargs;
        }
        if (length == 1) {
            return varargs.narg() > 0 ? new Varargs.PairVarargs(luaValueArr[0], varargs) : luaValueArr[0];
        }
        if (length == 2 && varargs.narg() <= 0) {
            return new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]);
        }
        return new Varargs.ArrayVarargs(luaValueArr, varargs);
    }

    public Varargs invoke(LuaValue[] luaValueArr, Varargs varargs) {
        return invoke(varargsOf(luaValueArr, varargs));
    }

    public Varargs invokemethod(LuaValue luaValue, LuaValue[] luaValueArr) {
        return get(luaValue).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return get(luaValue).call(this, luaValue2, luaValue3);
    }

    public void rawset(String str, LuaValue luaValue) {
        rawset(valueOf(str), luaValue);
    }

    public void set(String str, LuaValue luaValue) {
        set(valueOf(str), luaValue);
    }

    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        unimplemented("rawset");
    }

    public void set(LuaValue luaValue, LuaValue luaValue2) {
        settable(this, luaValue, luaValue2);
    }
}
