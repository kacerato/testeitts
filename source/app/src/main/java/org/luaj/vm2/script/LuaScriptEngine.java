package org.luaj.vm2.script;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import javax.script.AbstractScriptEngine;
import javax.script.Bindings;
import javax.script.Compilable;
import javax.script.CompiledScript;
import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineFactory;
import javax.script.ScriptException;
import javax.script.SimpleBindings;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaClosure;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.ThreeArgFunction;
import org.luaj.vm2.lib.TwoArgFunction;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;

public class LuaScriptEngine extends AbstractScriptEngine implements ScriptEngine, Compilable {
    private static final String __ARGV__ = "arg";
    private static final String __ENGINE_VERSION__ = "Luaj-jse 3.0.1";
    private static final String __FILENAME__ = "?";
    private static final String __LANGUAGE_VERSION__ = "5.2";
    private static final String __LANGUAGE__ = "lua";
    private static final String __NAME__ = "Luaj";
    private static final String __SHORT_NAME__ = "Luaj";
    private static final ScriptEngineFactory myFactory = new LuaScriptEngineFactory();
    private LuajContext context;

    public static class BindingsMetatable extends LuaTable {
        public BindingsMetatable(final Bindings bindings) {
            rawset(LuaValue.INDEX, new TwoArgFunction() {
                @Override
                public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
                    return luaValue2.isstring() ? LuaScriptEngine.toLua(bindings.get(luaValue2.tojstring())) : rawget(luaValue2);
                }
            });
            rawset(LuaValue.NEWINDEX, new ThreeArgFunction() {
                @Override
                public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
                    if (luaValue2.isstring()) {
                        String str = luaValue2.tojstring();
                        Object java2 = LuaScriptEngine.toJava(luaValue3);
                        if (java2 == null) {
                            bindings.remove(str);
                        } else {
                            bindings.put(str, java2);
                        }
                    } else {
                        rawset(luaValue2, luaValue3);
                    }
                    return LuaValue.NONE;
                }
            });
        }
    }

    public class LuajCompiledScript extends CompiledScript {
        final Globals compiling_globals;
        final LuaFunction function;

        public LuajCompiledScript(LuaFunction luaFunction, Globals globals) {
            this.function = luaFunction;
            this.compiling_globals = globals;
        }

        public Object eval() throws ScriptException {
            return eval(LuaScriptEngine.this.getContext());
        }

        public ScriptEngine getEngine() {
            return LuaScriptEngine.this;
        }

        public Object eval(Bindings bindings) throws ScriptException {
            return eval(((LuajContext) LuaScriptEngine.this.getContext()).globals, bindings);
        }

        public Object eval(ScriptContext scriptContext) throws ScriptException {
            return eval(((LuajContext) scriptContext).globals, scriptContext.getBindings(100));
        }

        public Object eval(Globals globals, Bindings bindings) throws ScriptException {
            LuaValue luaValue;
            globals.setmetatable(new BindingsMetatable(bindings));
            LuaFunction luaFunction = this.function;
            if (luaFunction.isclosure()) {
                luaValue = new LuaClosure(luaFunction.checkclosure().f102760p, globals);
            } else {
                try {
                    luaValue = (LuaFunction) luaFunction.getClass().newInstance();
                    luaValue.initupvalue1(globals);
                } catch (Exception e10) {
                    throw new ScriptException(e10);
                }
            }
            return LuaScriptEngine.toJava(luaValue.invoke(LuaValue.NONE));
        }
    }

    public final class Utf8Encoder extends InputStream {
        private final int[] buf;

        private int f102809n;

        private final Reader f102810r;

        private Utf8Encoder(Reader reader) {
            this.buf = new int[2];
            this.f102810r = reader;
        }

        @Override
        public int read() throws IOException {
            int i10 = this.f102809n;
            if (i10 > 0) {
                int[] iArr = this.buf;
                int i11 = i10 - 1;
                this.f102809n = i11;
                return iArr[i11];
            }
            int read = this.f102810r.read();
            if (read < 128) {
                return read;
            }
            this.f102809n = 0;
            if (read < 2048) {
                int[] iArr2 = this.buf;
                this.f102809n = 1;
                iArr2[0] = (read & 63) | 128;
                return ((read >> 6) & 31) | 192;
            }
            int[] iArr3 = this.buf;
            this.f102809n = 1;
            iArr3[0] = (read & 63) | 128;
            this.f102809n = 1 + 1;
            iArr3[1] = 128 | ((read >> 6) & 63);
            return ((read >> 12) & 15) | 224;
        }
    }

    public LuaScriptEngine() {
        LuajContext luajContext = new LuajContext();
        this.context = luajContext;
        luajContext.setBindings(createBindings(), 100);
        setContext(this.context);
        put("javax.script.language_version", __LANGUAGE_VERSION__);
        put("javax.script.language", __LANGUAGE__);
        put("javax.script.engine", "Luaj");
        put("javax.script.engine_version", "Luaj-jse 3.0.1");
        put("javax.script.argv", __ARGV__);
        put("javax.script.filename", __FILENAME__);
        put("javax.script.name", "Luaj");
        put("THREADING", null);
    }

    public static Object toJava(LuaValue luaValue) {
        int type = luaValue.type();
        if (type != 0) {
            return type != 7 ? type != 3 ? type != 4 ? luaValue : luaValue.tojstring() : luaValue.isinttype() ? new Integer(luaValue.toint()) : new Double(luaValue.todouble()) : luaValue.checkuserdata(Object.class);
        }
        return null;
    }

    public static LuaValue toLua(Object obj) {
        return obj == null ? LuaValue.NIL : obj instanceof LuaValue ? (LuaValue) obj : CoerceJavaToLua.coerce(obj);
    }

    public CompiledScript compile(Reader reader) throws ScriptException {
        try {
            Utf8Encoder utf8Encoder = new Utf8Encoder(reader);
            try {
                try {
                    Globals globals = this.context.globals;
                    return new LuajCompiledScript(globals.load(reader, "script").checkfunction(), globals);
                } catch (LuaError e10) {
                    throw new ScriptException(e10.getMessage());
                }
            } finally {
                utf8Encoder.close();
            }
        } catch (Exception e11) {
            throw new ScriptException("eval threw " + e11.toString());
        }
    }

    public Bindings createBindings() {
        return new SimpleBindings();
    }

    public Object eval(Reader reader, Bindings bindings) throws ScriptException {
        return ((LuajCompiledScript) compile(reader)).eval(this.context.globals, bindings);
    }

    public ScriptEngineFactory getFactory() {
        return myFactory;
    }

    public ScriptContext getScriptContext(Bindings bindings) {
        throw new IllegalStateException("LuajScriptEngine should not be allocating contexts.");
    }

    public static Object toJava(Varargs varargs) {
        int narg = varargs.narg();
        if (narg == 0) {
            return null;
        }
        if (narg == 1) {
            return toJava(varargs.arg1());
        }
        Object[] objArr = new Object[narg];
        int i10 = 0;
        while (i10 < narg) {
            int i11 = i10 + 1;
            objArr[i10] = toJava(varargs.arg(i11));
            i10 = i11;
        }
        return objArr;
    }

    public CompiledScript compile(String str) throws ScriptException {
        return compile(new StringReader(str));
    }

    public Object eval(Reader reader, ScriptContext scriptContext) throws ScriptException {
        return compile(reader).eval(scriptContext);
    }

    public Object eval(String str, Bindings bindings) throws ScriptException {
        return eval(new StringReader(str), bindings);
    }

    public Object eval(String str, ScriptContext scriptContext) throws ScriptException {
        return eval(new StringReader(str), scriptContext);
    }
}
