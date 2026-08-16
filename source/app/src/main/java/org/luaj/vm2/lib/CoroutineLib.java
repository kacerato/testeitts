package org.luaj.vm2.lib;

import android.provider.Telephony;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaThread;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class CoroutineLib extends TwoArgFunction {
    static int coroutine_count;
    Globals globals;

    public final class create extends LibFunction {
        public create() {
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return new LuaThread(CoroutineLib.this.globals, luaValue.checkfunction());
        }
    }

    public final class resume extends VarArgFunction {
        public resume() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            return varargs.checkthread(1).resume(varargs.subargs(2));
        }
    }

    public final class running extends VarArgFunction {
        public running() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread = CoroutineLib.this.globals.running;
            return LuaValue.varargsOf(luaThread, LuaValue.valueOf(luaThread.isMainThread()));
        }
    }

    public static final class status extends LibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkthread().getStatus());
        }
    }

    public final class wrap extends LibFunction {
        public wrap() {
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return new wrapper(new LuaThread(CoroutineLib.this.globals, luaValue.checkfunction()));
        }
    }

    public final class wrapper extends VarArgFunction {
        final LuaThread luathread;

        public wrapper(LuaThread luaThread) {
            this.luathread = luaThread;
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            Varargs resume = this.luathread.resume(varargs);
            return resume.arg1().toboolean() ? resume.subargs(2) : LuaValue.error(resume.arg(2).tojstring());
        }
    }

    public final class yield extends VarArgFunction {
        public yield() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            return CoroutineLib.this.globals.yield(varargs);
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        luaTable.set("create", new create());
        luaTable.set("resume", new resume());
        luaTable.set("running", new running());
        luaTable.set("status", new status());
        luaTable.set("yield", new yield());
        luaTable.set("wrap", new wrap());
        luaValue2.set("coroutine", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("coroutine", luaTable);
        return luaTable;
    }
}
