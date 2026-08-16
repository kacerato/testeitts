package org.luaj.vm2.lib;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import oc.c;
import org.luaj.vm2.Globals;
import org.luaj.vm2.Lua;
import org.luaj.vm2.LuaBoolean;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaThread;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import yd.C16181m;

public class BaseLib extends TwoArgFunction implements ResourceFinder {
    Globals globals;

    public static class StringInputStream extends InputStream {
        byte[] bytes;
        final LuaValue func;
        int offset;
        int remaining = 0;

        public StringInputStream(LuaValue luaValue) {
            this.func = luaValue;
        }

        @Override
        public int read() throws IOException {
            if (this.remaining <= 0) {
                LuaValue call = this.func.call();
                if (call.isnil()) {
                    return -1;
                }
                LuaString strvalue = call.strvalue();
                this.bytes = strvalue.m_bytes;
                this.offset = strvalue.m_offset;
                int i10 = strvalue.m_length;
                this.remaining = i10;
                if (i10 <= 0) {
                    return -1;
                }
            }
            this.remaining--;
            byte[] bArr = this.bytes;
            int i11 = this.offset;
            this.offset = i11 + 1;
            return bArr[i11];
        }
    }

    public static final class _assert extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            if (!varargs.arg1().toboolean()) {
                LuaValue.error(varargs.narg() > 1 ? varargs.optjstring(2, "assertion failed!") : "assertion failed!");
            }
            return varargs;
        }
    }

    public static final class collectgarbage extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            String optjstring = varargs.optjstring(1, "collect");
            if ("collect".equals(optjstring)) {
                System.gc();
                return LuaValue.ZERO;
            }
            if (c.f98682m.equals(optjstring)) {
                Runtime runtime = Runtime.getRuntime();
                return LuaValue.varargsOf(LuaValue.valueOf((runtime.totalMemory() - runtime.freeMemory()) / 1024.0d), LuaValue.valueOf(r0 % 1024));
            }
            if ("step".equals(optjstring)) {
                System.gc();
                return LuaValue.TRUE;
            }
            argerror("gc op");
            return LuaValue.NIL;
        }
    }

    public final class dofile extends VarArgFunction {
        public dofile() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            Varargs loadFile;
            varargs.argcheck(varargs.isstring(1) || varargs.isnil(1), 1, "filename must be string or nil");
            if ((varargs.isstring(1) ? varargs.tojstring(1) : null) == null) {
                BaseLib baseLib = BaseLib.this;
                Globals globals = baseLib.globals;
                loadFile = baseLib.loadStream(globals.STDIN, "=stdin", "bt", globals);
            } else {
                loadFile = BaseLib.this.loadFile(varargs.checkjstring(1), "bt", BaseLib.this.globals);
            }
            return loadFile.isnil(1) ? LuaValue.error(loadFile.tojstring(2)) : loadFile.arg1().invoke();
        }
    }

    public static final class error extends TwoArgFunction {
        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.isnil()) {
                throw new LuaError(null, luaValue2.optint(1));
            }
            if (luaValue.isstring()) {
                throw new LuaError(luaValue.tojstring(), luaValue2.optint(1));
            }
            throw new LuaError(luaValue);
        }
    }

    public static final class getmetatable extends LibFunction {
        @Override
        public LuaValue call() {
            return LuaValue.argerror(1, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            return luaValue2 != null ? luaValue2.rawget(LuaValue.METATABLE).optvalue(luaValue2) : LuaValue.NIL;
        }
    }

    public static final class inext extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).inext(varargs.arg(2));
        }
    }

    public static final class ipairs extends VarArgFunction {
        inext inext = new inext();

        @Override
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.inext, varargs.checktable(1), LuaValue.ZERO);
        }
    }

    public final class load extends VarArgFunction {
        public load() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaValue arg1 = varargs.arg1();
            varargs.argcheck(arg1.isstring() || arg1.isfunction(), 1, "ld must be string or function");
            return BaseLib.this.loadStream(arg1.isstring() ? arg1.strvalue().toInputStream() : new StringInputStream(arg1.checkfunction()), varargs.optjstring(2, arg1.isstring() ? arg1.tojstring() : "=(load)"), varargs.optjstring(3, "bt"), varargs.optvalue(4, BaseLib.this.globals));
        }
    }

    public final class loadfile extends VarArgFunction {
        public loadfile() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            varargs.argcheck(varargs.isstring(1) || varargs.isnil(1), 1, "filename must be string or nil");
            String str = varargs.isstring(1) ? varargs.tojstring(1) : null;
            String optjstring = varargs.optjstring(2, "bt");
            LuaValue optvalue = varargs.optvalue(3, BaseLib.this.globals);
            if (str != null) {
                return BaseLib.this.loadFile(str, optjstring, optvalue);
            }
            BaseLib baseLib = BaseLib.this;
            return baseLib.loadStream(baseLib.globals.STDIN, "=stdin", optjstring, optvalue);
        }
    }

    public static final class next extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).next(varargs.arg(2));
        }
    }

    public static final class pairs extends VarArgFunction {
        final next next;

        public pairs(next nextVar) {
            this.next = nextVar;
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.next, varargs.checktable(1), LuaValue.NIL);
        }
    }

    public final class pcall extends VarArgFunction {
        public pcall() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            DebugLib debugLib5;
            LuaValue checkvalue = varargs.checkvalue(1);
            Globals globals = BaseLib.this.globals;
            if (globals != null && (debugLib5 = globals.debuglib) != null) {
                debugLib5.onCall(this);
            }
            try {
                try {
                    Varargs varargsOf = LuaValue.varargsOf(LuaValue.TRUE, checkvalue.invoke(varargs.subargs(2)));
                    Globals globals2 = BaseLib.this.globals;
                    if (globals2 != null && (debugLib4 = globals2.debuglib) != null) {
                        debugLib4.onReturn();
                    }
                    return varargsOf;
                } catch (LuaError e10) {
                    LuaValue messageObject = e10.getMessageObject();
                    LuaBoolean luaBoolean = LuaValue.FALSE;
                    if (messageObject == null) {
                        messageObject = LuaValue.NIL;
                    }
                    Varargs varargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                    Globals globals3 = BaseLib.this.globals;
                    if (globals3 != null && (debugLib2 = globals3.debuglib) != null) {
                        debugLib2.onReturn();
                    }
                    return varargsOf2;
                } catch (Exception e11) {
                    String message = e11.getMessage();
                    LuaBoolean luaBoolean2 = LuaValue.FALSE;
                    if (message == null) {
                        message = e11.toString();
                    }
                    Varargs varargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                    Globals globals4 = BaseLib.this.globals;
                    if (globals4 != null && (debugLib = globals4.debuglib) != null) {
                        debugLib.onReturn();
                    }
                    return varargsOf3;
                }
            } catch (Throwable th2) {
                Globals globals5 = BaseLib.this.globals;
                if (globals5 != null && (debugLib3 = globals5.debuglib) != null) {
                    debugLib3.onReturn();
                }
                throw th2;
            }
        }
    }

    public final class print extends VarArgFunction {
        final BaseLib baselib;

        public print(BaseLib baseLib) {
            this.baselib = baseLib;
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValue = BaseLib.this.globals.get("tostring");
            int narg = varargs.narg();
            for (int i10 = 1; i10 <= narg; i10++) {
                if (i10 > 1) {
                    BaseLib.this.globals.STDOUT.print('\t');
                }
                BaseLib.this.globals.STDOUT.print(luaValue.call(varargs.arg(i10)).strvalue().tojstring());
            }
            BaseLib.this.globals.STDOUT.println();
            return LuaValue.NONE;
        }
    }

    public static final class rawequal extends LibFunction {
        @Override
        public LuaValue call() {
            return LuaValue.argerror(1, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(luaValue.raweq(luaValue2));
        }
    }

    public static final class rawget extends LibFunction {
        @Override
        public LuaValue call() {
            return LuaValue.argerror(1, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().rawget(luaValue2);
        }
    }

    public static final class rawlen extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.rawlen());
        }
    }

    public static final class rawset extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.argerror(3, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            LuaTable checktable = luaValue.checktable();
            checktable.rawset(luaValue2.checknotnil(), luaValue3);
            return checktable;
        }
    }

    public static final class select extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg() - 1;
            if (varargs.arg1().equals(LuaValue.valueOf(C16181m.f130230g))) {
                return LuaValue.valueOf(narg);
            }
            int checkint = varargs.checkint(1);
            if (checkint == 0 || checkint < (-narg)) {
                LuaValue.argerror(1, "index out of range");
            }
            return varargs.subargs(checkint < 0 ? narg + checkint + 2 : checkint + 1);
        }
    }

    public static final class setmetatable extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value");
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            LuaValue luaValue3 = luaValue.checktable().getmetatable();
            if (luaValue3 != null && !luaValue3.rawget(LuaValue.METATABLE).isnil()) {
                LuaValue.error("cannot change a protected metatable");
            }
            return luaValue.setmetatable(luaValue2.isnil() ? null : luaValue2.checktable());
        }
    }

    public static final class tonumber extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return luaValue.tonumber();
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue2.isnil()) {
                return luaValue.tonumber();
            }
            int checkint = luaValue2.checkint();
            if (checkint < 2 || checkint > 36) {
                LuaValue.argerror(2, "base out of range");
            }
            return luaValue.checkstring().tonumber(checkint);
        }
    }

    public static final class tostring extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            LuaValue metatag = luaValue.metatag(LuaValue.TOSTRING);
            if (!metatag.isnil()) {
                return metatag.call(luaValue);
            }
            LuaValue luaValue2 = luaValue.tostring();
            return !luaValue2.isnil() ? luaValue2 : LuaValue.valueOf(luaValue.tojstring());
        }
    }

    public static final class type extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.typename());
        }
    }

    public final class xpcall extends VarArgFunction {
        public xpcall() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            DebugLib debugLib5;
            LuaThread luaThread = BaseLib.this.globals.running;
            LuaValue luaValue = luaThread.errorfunc;
            luaThread.errorfunc = varargs.checkvalue(2);
            try {
                Globals globals = BaseLib.this.globals;
                if (globals != null && (debugLib5 = globals.debuglib) != null) {
                    debugLib5.onCall(this);
                }
                try {
                    try {
                        try {
                            Varargs varargsOf = LuaValue.varargsOf(LuaValue.TRUE, varargs.arg1().invoke(varargs.subargs(3)));
                            Globals globals2 = BaseLib.this.globals;
                            if (globals2 != null && (debugLib4 = globals2.debuglib) != null) {
                                debugLib4.onReturn();
                            }
                            return varargsOf;
                        } catch (LuaError e10) {
                            LuaValue messageObject = e10.getMessageObject();
                            LuaBoolean luaBoolean = LuaValue.FALSE;
                            if (messageObject == null) {
                                messageObject = LuaValue.NIL;
                            }
                            Varargs varargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                            Globals globals3 = BaseLib.this.globals;
                            if (globals3 != null && (debugLib2 = globals3.debuglib) != null) {
                                debugLib2.onReturn();
                            }
                            return varargsOf2;
                        }
                    } catch (Exception e11) {
                        String message = e11.getMessage();
                        LuaBoolean luaBoolean2 = LuaValue.FALSE;
                        if (message == null) {
                            message = e11.toString();
                        }
                        Varargs varargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                        Globals globals4 = BaseLib.this.globals;
                        if (globals4 != null && (debugLib = globals4.debuglib) != null) {
                            debugLib.onReturn();
                        }
                        return varargsOf3;
                    }
                } catch (Throwable th2) {
                    Globals globals5 = BaseLib.this.globals;
                    if (globals5 != null && (debugLib3 = globals5.debuglib) != null) {
                        debugLib3.onReturn();
                    }
                    throw th2;
                }
            } finally {
                luaThread.errorfunc = luaValue;
            }
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.globals = checkglobals;
        checkglobals.finder = this;
        checkglobals.baselib = this;
        luaValue2.set("_G", luaValue2);
        luaValue2.set("_VERSION", Lua._VERSION);
        luaValue2.set("assert", new _assert());
        luaValue2.set("collectgarbage", new collectgarbage());
        luaValue2.set("dofile", new dofile());
        luaValue2.set("error", new error());
        luaValue2.set("getmetatable", new getmetatable());
        luaValue2.set("load", new load());
        luaValue2.set("loadfile", new loadfile());
        luaValue2.set("pcall", new pcall());
        luaValue2.set(Context.PRINT_SERVICE, new print(this));
        luaValue2.set("rawequal", new rawequal());
        luaValue2.set("rawget", new rawget());
        luaValue2.set("rawlen", new rawlen());
        luaValue2.set("rawset", new rawset());
        luaValue2.set("select", new select());
        luaValue2.set("setmetatable", new setmetatable());
        luaValue2.set("tonumber", new tonumber());
        luaValue2.set("tostring", new tostring());
        luaValue2.set("type", new type());
        luaValue2.set("xpcall", new xpcall());
        next nextVar = new next();
        luaValue2.set("next", nextVar);
        luaValue2.set("pairs", new pairs(nextVar));
        luaValue2.set("ipairs", new ipairs());
        return luaValue2;
    }

    @Override
    public InputStream findResource(String str) {
        Class<?> cls = getClass();
        if (!str.startsWith("/")) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("/");
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        return cls.getResourceAsStream(str);
    }

    public Varargs loadFile(String str, String str2, LuaValue luaValue) {
        InputStream findResource = this.globals.finder.findResource(str);
        if (findResource == null) {
            LuaValue luaValue2 = LuaValue.NIL;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot open ");
            stringBuffer.append(str);
            stringBuffer.append(": No such file or directory");
            return LuaValue.varargsOf(luaValue2, LuaValue.valueOf(stringBuffer.toString()));
        }
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("@");
            stringBuffer2.append(str);
            return loadStream(findResource, stringBuffer2.toString(), str2, luaValue);
        } finally {
            try {
                findResource.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public Varargs loadStream(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            if (inputStream != null) {
                return this.globals.load(inputStream, str, str2, luaValue);
            }
            LuaValue luaValue2 = LuaValue.NIL;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("not found: ");
            stringBuffer.append(str);
            return LuaValue.varargsOf(luaValue2, LuaValue.valueOf(stringBuffer.toString()));
        } catch (Exception e10) {
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e10.getMessage()));
        }
    }
}
