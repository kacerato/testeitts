package org.luaj.vm2;

import org.openjdk.tools.doclint.DocLint;

public abstract class Varargs {

    public static final class ArrayPartVarargs extends Varargs {
        private final int length;
        private final Varargs more;
        private final int offset;

        private final LuaValue[] f102766v;

        public ArrayPartVarargs(LuaValue[] luaValueArr, int i10, int i11) {
            this.f102766v = luaValueArr;
            this.offset = i10;
            this.length = i11;
            this.more = LuaValue.NONE;
        }

        @Override
        public LuaValue arg(int i10) {
            if (i10 < 1) {
                return LuaValue.NIL;
            }
            int i11 = this.length;
            return i10 <= i11 ? this.f102766v[(this.offset + i10) - 1] : this.more.arg(i10 - i11);
        }

        @Override
        public LuaValue arg1() {
            return this.length > 0 ? this.f102766v[this.offset] : this.more.arg1();
        }

        @Override
        public void copyto(LuaValue[] luaValueArr, int i10, int i11) {
            int min = Math.min(this.length, i11);
            System.arraycopy(this.f102766v, this.offset, luaValueArr, i10, min);
            this.more.copyto(luaValueArr, i10 + min, i11 - min);
        }

        @Override
        public int narg() {
            return this.length + this.more.narg();
        }

        @Override
        public Varargs subargs(int i10) {
            if (i10 <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i10 == 1) {
                return this;
            }
            int i11 = this.length;
            return i10 > i11 ? this.more.subargs(i10 - i11) : LuaValue.varargsOf(this.f102766v, (this.offset + i10) - 1, i11 - (i10 - 1), this.more);
        }

        public ArrayPartVarargs(LuaValue[] luaValueArr, int i10, int i11, Varargs varargs) {
            this.f102766v = luaValueArr;
            this.offset = i10;
            this.length = i11;
            this.more = varargs;
        }
    }

    public static final class ArrayVarargs extends Varargs {

        private final Varargs f102767r;

        private final LuaValue[] f102768v;

        public ArrayVarargs(LuaValue[] luaValueArr, Varargs varargs) {
            this.f102768v = luaValueArr;
            this.f102767r = varargs;
        }

        @Override
        public LuaValue arg(int i10) {
            if (i10 < 1) {
                return LuaValue.NIL;
            }
            LuaValue[] luaValueArr = this.f102768v;
            return i10 <= luaValueArr.length ? luaValueArr[i10 - 1] : this.f102767r.arg(i10 - luaValueArr.length);
        }

        @Override
        public LuaValue arg1() {
            LuaValue[] luaValueArr = this.f102768v;
            return luaValueArr.length > 0 ? luaValueArr[0] : this.f102767r.arg1();
        }

        @Override
        public void copyto(LuaValue[] luaValueArr, int i10, int i11) {
            int min = Math.min(this.f102768v.length, i11);
            System.arraycopy(this.f102768v, 0, luaValueArr, i10, min);
            this.f102767r.copyto(luaValueArr, i10 + min, i11 - min);
        }

        @Override
        public int narg() {
            return this.f102768v.length + this.f102767r.narg();
        }

        @Override
        public Varargs subargs(int i10) {
            if (i10 <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i10 == 1) {
                return this;
            }
            LuaValue[] luaValueArr = this.f102768v;
            if (i10 > luaValueArr.length) {
                return this.f102767r.subargs(i10 - luaValueArr.length);
            }
            int i11 = i10 - 1;
            return LuaValue.varargsOf(luaValueArr, i11, luaValueArr.length - i11, this.f102767r);
        }
    }

    public static final class PairVarargs extends Varargs {

        private final LuaValue f102769v1;

        private final Varargs f102770v2;

        public PairVarargs(LuaValue luaValue, Varargs varargs) {
            this.f102769v1 = luaValue;
            this.f102770v2 = varargs;
        }

        @Override
        public LuaValue arg(int i10) {
            return i10 == 1 ? this.f102769v1 : this.f102770v2.arg(i10 - 1);
        }

        @Override
        public LuaValue arg1() {
            return this.f102769v1;
        }

        @Override
        public int narg() {
            return this.f102770v2.narg() + 1;
        }

        @Override
        public Varargs subargs(int i10) {
            return i10 == 1 ? this : i10 == 2 ? this.f102770v2 : i10 > 2 ? this.f102770v2.subargs(i10 - 1) : LuaValue.argerror(1, "start must be > 0");
        }
    }

    public static class SubVarargs extends Varargs {
        private final int end;
        private final int start;

        private final Varargs f102771v;

        public SubVarargs(Varargs varargs, int i10, int i11) {
            this.f102771v = varargs;
            this.start = i10;
            this.end = i11;
        }

        @Override
        public LuaValue arg(int i10) {
            int i11 = this.start;
            int i12 = i10 + (i11 - 1);
            return (i12 < i11 || i12 > this.end) ? LuaValue.NIL : this.f102771v.arg(i12);
        }

        @Override
        public LuaValue arg1() {
            return this.f102771v.arg(this.start);
        }

        @Override
        public int narg() {
            return (this.end + 1) - this.start;
        }

        @Override
        public Varargs subargs(int i10) {
            if (i10 == 1) {
                return this;
            }
            int i11 = (this.start + i10) - 1;
            if (i10 <= 0) {
                return new SubVarargs(this.f102771v, i11, this.end);
            }
            int i12 = this.end;
            return i11 >= i12 ? LuaValue.NONE : i11 == i12 ? this.f102771v.arg(i12) : i11 == i12 + (-1) ? new PairVarargs(this.f102771v.arg(i12 - 1), this.f102771v.arg(this.end)) : new SubVarargs(this.f102771v, i11, i12);
        }
    }

    public abstract LuaValue arg(int i10);

    public abstract LuaValue arg1();

    public void argcheck(boolean z10, int i10, String str) {
        if (z10) {
            return;
        }
        LuaValue.argerror(i10, str);
    }

    public boolean checkboolean(int i10) {
        return arg(i10).checkboolean();
    }

    public LuaClosure checkclosure(int i10) {
        return arg(i10).checkclosure();
    }

    public double checkdouble(int i10) {
        return arg(i10).checknumber().todouble();
    }

    public LuaFunction checkfunction(int i10) {
        return arg(i10).checkfunction();
    }

    public int checkint(int i10) {
        return arg(i10).checknumber().toint();
    }

    public LuaInteger checkinteger(int i10) {
        return arg(i10).checkinteger();
    }

    public String checkjstring(int i10) {
        return arg(i10).checkjstring();
    }

    public long checklong(int i10) {
        return arg(i10).checknumber().tolong();
    }

    public LuaValue checknotnil(int i10) {
        return arg(i10).checknotnil();
    }

    public LuaNumber checknumber(int i10) {
        return arg(i10).checknumber();
    }

    public LuaString checkstring(int i10) {
        return arg(i10).checkstring();
    }

    public LuaTable checktable(int i10) {
        return arg(i10).checktable();
    }

    public LuaThread checkthread(int i10) {
        return arg(i10).checkthread();
    }

    public Object checkuserdata(int i10) {
        return arg(i10).checkuserdata();
    }

    public LuaValue checkvalue(int i10) {
        return i10 <= narg() ? arg(i10) : LuaValue.argerror(i10, "value expected");
    }

    public void copyto(LuaValue[] luaValueArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i10 + i12;
            i12++;
            luaValueArr[i13] = arg(i12);
        }
    }

    public Varargs dealias() {
        int narg = narg();
        if (narg == 0) {
            return LuaValue.NONE;
        }
        if (narg == 1) {
            return arg1();
        }
        if (narg == 2) {
            return new PairVarargs(arg1(), arg(2));
        }
        LuaValue[] luaValueArr = new LuaValue[narg];
        copyto(luaValueArr, 0, narg);
        return new ArrayVarargs(luaValueArr, LuaValue.NONE);
    }

    public Varargs eval() {
        return this;
    }

    public boolean isTailcall() {
        return false;
    }

    public boolean isfunction(int i10) {
        return arg(i10).isfunction();
    }

    public boolean isnil(int i10) {
        return arg(i10).isnil();
    }

    public boolean isnoneornil(int i10) {
        return i10 > narg() || arg(i10).isnil();
    }

    public boolean isnumber(int i10) {
        return arg(i10).isnumber();
    }

    public boolean isstring(int i10) {
        return arg(i10).isstring();
    }

    public boolean istable(int i10) {
        return arg(i10).istable();
    }

    public boolean isthread(int i10) {
        return arg(i10).isthread();
    }

    public boolean isuserdata(int i10) {
        return arg(i10).isuserdata();
    }

    public boolean isvalue(int i10) {
        return i10 > 0 && i10 <= narg();
    }

    public abstract int narg();

    public boolean optboolean(int i10, boolean z10) {
        return arg(i10).optboolean(z10);
    }

    public LuaClosure optclosure(int i10, LuaClosure luaClosure) {
        return arg(i10).optclosure(luaClosure);
    }

    public double optdouble(int i10, double d10) {
        return arg(i10).optdouble(d10);
    }

    public LuaFunction optfunction(int i10, LuaFunction luaFunction) {
        return arg(i10).optfunction(luaFunction);
    }

    public int optint(int i10, int i11) {
        return arg(i10).optint(i11);
    }

    public LuaInteger optinteger(int i10, LuaInteger luaInteger) {
        return arg(i10).optinteger(luaInteger);
    }

    public String optjstring(int i10, String str) {
        return arg(i10).optjstring(str);
    }

    public long optlong(int i10, long j10) {
        return arg(i10).optlong(j10);
    }

    public LuaNumber optnumber(int i10, LuaNumber luaNumber) {
        return arg(i10).optnumber(luaNumber);
    }

    public LuaString optstring(int i10, LuaString luaString) {
        return arg(i10).optstring(luaString);
    }

    public LuaTable opttable(int i10, LuaTable luaTable) {
        return arg(i10).opttable(luaTable);
    }

    public LuaThread optthread(int i10, LuaThread luaThread) {
        return arg(i10).optthread(luaThread);
    }

    public Object optuserdata(int i10, Class cls, Object obj) {
        return arg(i10).optuserdata(cls, obj);
    }

    public LuaValue optvalue(int i10, LuaValue luaValue) {
        return (i10 <= 0 || i10 > narg()) ? luaValue : arg(i10);
    }

    public abstract Varargs subargs(int i10);

    public String toString() {
        return tojstring();
    }

    public boolean toboolean(int i10) {
        return arg(i10).toboolean();
    }

    public byte tobyte(int i10) {
        return arg(i10).tobyte();
    }

    public char tochar(int i10) {
        return arg(i10).tochar();
    }

    public double todouble(int i10) {
        return arg(i10).todouble();
    }

    public float tofloat(int i10) {
        return arg(i10).tofloat();
    }

    public int toint(int i10) {
        return arg(i10).toint();
    }

    public String tojstring() {
        Buffer buffer = new Buffer();
        buffer.append("(");
        int narg = narg();
        for (int i10 = 1; i10 <= narg; i10++) {
            if (i10 > 1) {
                buffer.append(DocLint.SEPARATOR);
            }
            buffer.append(arg(i10).tojstring());
        }
        buffer.append(")");
        return buffer.tojstring();
    }

    public long tolong(int i10) {
        return arg(i10).tolong();
    }

    public short toshort(int i10) {
        return arg(i10).toshort();
    }

    public Object touserdata(int i10) {
        return arg(i10).touserdata();
    }

    public int type(int i10) {
        return arg(i10).type();
    }

    public Object checkuserdata(int i10, Class cls) {
        return arg(i10).checkuserdata(cls);
    }

    public Object optuserdata(int i10, Object obj) {
        return arg(i10).optuserdata(obj);
    }

    public String tojstring(int i10) {
        return arg(i10).tojstring();
    }

    public Object touserdata(int i10, Class cls) {
        return arg(i10).touserdata(cls);
    }
}
