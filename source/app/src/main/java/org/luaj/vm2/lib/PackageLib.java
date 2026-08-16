package org.luaj.vm2.lib;

import android.provider.Telephony;
import java.io.IOException;
import java.io.InputStream;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class PackageLib extends TwoArgFunction {
    public static String DEFAULT_LUA_PATH;
    private static final String FILE_SEP;
    private static final LuaString _LOADED;
    private static final LuaString _LOADLIB;
    private static final LuaString _PATH;
    private static final LuaString _PRELOAD;
    private static final LuaString _SEARCHERS;
    private static final LuaString _SEARCHPATH;
    private static final LuaString _SENTINEL;
    Globals globals;
    public java_searcher java_searcher;
    public lua_searcher lua_searcher;
    LuaTable package_;
    public preload_searcher preload_searcher;

    public class java_searcher extends VarArgFunction {
        public java_searcher() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            String stringBuffer;
            String classname = PackageLib.toClassname(varargs.checkjstring(1));
            try {
                LuaValue luaValue = (LuaValue) Class.forName(classname).newInstance();
                if (luaValue.isfunction()) {
                    ((LuaFunction) luaValue).initupvalue1(PackageLib.this.globals);
                }
                return LuaValue.varargsOf(luaValue, PackageLib.this.globals);
            } catch (ClassNotFoundException unused) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("\n\tno class '");
                stringBuffer2.append(classname);
                stringBuffer2.append("'");
                stringBuffer = stringBuffer2.toString();
                return LuaValue.valueOf(stringBuffer);
            } catch (Exception e10) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("\n\tjava load failed on '");
                stringBuffer3.append(classname);
                stringBuffer3.append("', ");
                stringBuffer3.append((Object) e10);
                stringBuffer = stringBuffer3.toString();
                return LuaValue.valueOf(stringBuffer);
            }
        }
    }

    public static class loadlib extends VarArgFunction {
        public Varargs loadlib(Varargs varargs) {
            varargs.checkstring(1);
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("dynamic libraries not enabled"), LuaValue.valueOf("absent"));
        }
    }

    public class lua_searcher extends VarArgFunction {
        public lua_searcher() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            LuaValue luaValue = PackageLib.this.package_.get(PackageLib._PATH);
            if (!luaValue.isstring()) {
                return LuaValue.valueOf("package.path is not a string");
            }
            Varargs invoke = PackageLib.this.package_.get(PackageLib._SEARCHPATH).invoke(LuaValue.varargsOf(checkstring, luaValue));
            if (!invoke.isstring(1)) {
                return invoke.arg(2).tostring();
            }
            LuaString strvalue = invoke.arg1().strvalue();
            LuaValue loadfile = PackageLib.this.globals.loadfile(strvalue.tojstring());
            if (loadfile.arg1().isfunction()) {
                return LuaValue.varargsOf(loadfile.arg1(), strvalue);
            }
            LuaValue luaValue2 = LuaValue.NIL;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("'");
            stringBuffer.append((Object) strvalue);
            stringBuffer.append("': ");
            stringBuffer.append(loadfile.arg(2).tojstring());
            return LuaValue.varargsOf(luaValue2, LuaValue.valueOf(stringBuffer.toString()));
        }
    }

    public class preload_searcher extends VarArgFunction {
        public preload_searcher() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            LuaValue luaValue = PackageLib.this.package_.get(PackageLib._PRELOAD).get(checkstring);
            if (!luaValue.isnil()) {
                return luaValue;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("\n\tno field package.preload['");
            stringBuffer.append((Object) checkstring);
            stringBuffer.append("']");
            return LuaValue.valueOf(stringBuffer.toString());
        }
    }

    public class require extends OneArgFunction {
        public require() {
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            Varargs invoke;
            LuaString checkstring = luaValue.checkstring();
            LuaValue luaValue2 = PackageLib.this.package_.get(PackageLib._LOADED);
            LuaValue luaValue3 = luaValue2.get(checkstring);
            if (luaValue3.toboolean()) {
                if (luaValue3 == PackageLib._SENTINEL) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("loop or previous error loading module '");
                    stringBuffer.append((Object) checkstring);
                    stringBuffer.append("'");
                    LuaValue.error(stringBuffer.toString());
                }
                return luaValue3;
            }
            LuaTable checktable = PackageLib.this.package_.get(PackageLib._SEARCHERS).checktable();
            StringBuffer stringBuffer2 = new StringBuffer();
            int i10 = 1;
            while (true) {
                LuaValue luaValue4 = checktable.get(i10);
                if (luaValue4.isnil()) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("module '");
                    stringBuffer3.append((Object) checkstring);
                    stringBuffer3.append("' not found: ");
                    stringBuffer3.append((Object) checkstring);
                    stringBuffer3.append((Object) stringBuffer2);
                    LuaValue.error(stringBuffer3.toString());
                }
                invoke = luaValue4.invoke(checkstring);
                if (invoke.isfunction(1)) {
                    break;
                }
                if (invoke.isstring(1)) {
                    stringBuffer2.append(invoke.tojstring(1));
                }
                i10++;
            }
            luaValue2.set(checkstring, PackageLib._SENTINEL);
            LuaValue call = invoke.arg1().call(checkstring, invoke.arg(2));
            if (call.isnil()) {
                call = luaValue2.get(checkstring);
                if (call == PackageLib._SENTINEL) {
                    call = LuaValue.TRUE;
                }
                return call;
            }
            luaValue2.set(checkstring, call);
            return call;
        }
    }

    public class searchpath extends VarArgFunction {
        public searchpath() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            String checkjstring = varargs.checkjstring(1);
            String checkjstring2 = varargs.checkjstring(2);
            String optjstring = varargs.optjstring(3, ".");
            String optjstring2 = varargs.optjstring(4, PackageLib.FILE_SEP);
            int length = checkjstring2.length();
            String replace = checkjstring.replace(optjstring.charAt(0), optjstring2.charAt(0));
            int i10 = -1;
            StringBuffer stringBuffer = null;
            while (i10 < length) {
                int i11 = i10 + 1;
                int indexOf = checkjstring2.indexOf(59, i11);
                if (indexOf < 0) {
                    indexOf = checkjstring2.length();
                }
                String substring = checkjstring2.substring(i11, indexOf);
                int indexOf2 = substring.indexOf(63);
                if (indexOf2 >= 0) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(substring.substring(0, indexOf2));
                    stringBuffer2.append(replace);
                    stringBuffer2.append(substring.substring(indexOf2 + 1));
                    substring = stringBuffer2.toString();
                }
                InputStream findResource = PackageLib.this.globals.finder.findResource(substring);
                if (findResource != null) {
                    try {
                        findResource.close();
                    } catch (IOException unused) {
                    }
                    return LuaValue.valueOf(substring);
                }
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("\n\t");
                stringBuffer3.append(substring);
                stringBuffer.append(stringBuffer3.toString());
                i10 = indexOf;
            }
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(stringBuffer.toString()));
        }
    }

    static {
        try {
            DEFAULT_LUA_PATH = System.getProperty("luaj.package.path");
        } catch (Exception e10) {
            System.out.println(e10.toString());
        }
        if (DEFAULT_LUA_PATH == null) {
            DEFAULT_LUA_PATH = "?.lua";
        }
        _LOADED = LuaValue.valueOf("loaded");
        _LOADLIB = LuaValue.valueOf("loadlib");
        _PRELOAD = LuaValue.valueOf("preload");
        _PATH = LuaValue.valueOf("path");
        _SEARCHPATH = LuaValue.valueOf("searchpath");
        _SEARCHERS = LuaValue.valueOf("searchers");
        _SENTINEL = LuaValue.valueOf("\u0001");
        FILE_SEP = System.getProperty("file.separator");
    }

    private static final boolean isClassnamePart(char c10) {
        return (c10 >= 'a' && c10 <= 'z') || (c10 >= 'A' && c10 <= 'Z') || ((c10 >= '0' && c10 <= '9') || c10 == '$' || c10 == '.' || c10 == '_');
    }

    public static final String toClassname(String str) {
        int length = str.length();
        int i10 = str.endsWith(".lua") ? length - 4 : length;
        for (int i11 = 0; i11 < i10; i11++) {
            char charAt = str.charAt(i11);
            if (!isClassnamePart(charAt) || charAt == '/' || charAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(i10);
                for (int i12 = 0; i12 < i10; i12++) {
                    char charAt2 = str.charAt(i12);
                    if (!isClassnamePart(charAt2)) {
                        charAt2 = (charAt2 == '/' || charAt2 == '\\') ? '.' : '_';
                    }
                    stringBuffer.append(charAt2);
                }
                return stringBuffer.toString();
            }
        }
        return length == i10 ? str : str.substring(0, i10);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals checkglobals = luaValue2.checkglobals();
        this.globals = checkglobals;
        checkglobals.set("require", new require());
        LuaTable luaTable = new LuaTable();
        this.package_ = luaTable;
        LuaString luaString = _LOADED;
        luaTable.set(luaString, new LuaTable());
        this.package_.set(_PRELOAD, new LuaTable());
        this.package_.set(_PATH, LuaValue.valueOf(DEFAULT_LUA_PATH));
        this.package_.set(_LOADLIB, new loadlib());
        this.package_.set(_SEARCHPATH, new searchpath());
        LuaValue luaTable2 = new LuaTable();
        preload_searcher preload_searcherVar = new preload_searcher();
        this.preload_searcher = preload_searcherVar;
        luaTable2.set(1, preload_searcherVar);
        lua_searcher lua_searcherVar = new lua_searcher();
        this.lua_searcher = lua_searcherVar;
        luaTable2.set(2, lua_searcherVar);
        java_searcher java_searcherVar = new java_searcher();
        this.java_searcher = java_searcherVar;
        luaTable2.set(3, java_searcherVar);
        this.package_.set(_SEARCHERS, luaTable2);
        this.package_.get(luaString).set(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, this.package_);
        luaValue2.set(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, this.package_);
        this.globals.package_ = this;
        return luaValue2;
    }

    public void setIsLoaded(String str, LuaTable luaTable) {
        this.package_.get(_LOADED).set(str, luaTable);
    }

    public void setLuaPath(String str) {
        this.package_.set(_PATH, LuaValue.valueOf(str));
    }

    @Override
    public String tojstring() {
        return Telephony.Sms.Intents.EXTRA_PACKAGE_NAME;
    }
}
