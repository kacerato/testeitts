package org.luaj.vm2;

import java.lang.ref.WeakReference;
import org.eclipse.jdt.core.JavaCore;

public class LuaThread extends LuaValue {
    public static final int MAX_CALLSTACK = 256;
    public static final int STATUS_DEAD = 4;
    public static final int STATUS_INITIAL = 0;
    public static final String[] STATUS_NAMES = {"suspended", "suspended", "running", JavaCore.NORMAL, "dead"};
    public static final int STATUS_NORMAL = 3;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUSPENDED = 1;
    public static int coroutine_count = 0;
    public static LuaValue s_metatable = null;
    public static long thread_orphan_check_interval = 5000;
    public Object callstack;
    public LuaValue errorfunc;
    public final Globals globals;
    public final State state;

    public static class State implements Runnable {
        Varargs args;
        public int bytecodes;
        String error;
        public final LuaValue function;
        private final Globals globals;
        public boolean hookcall;
        public int hookcount;
        public LuaValue hookfunc;
        public boolean hookline;
        public boolean hookrtrn;
        public boolean inhook;
        public int lastline;
        final WeakReference lua_thread;
        Varargs result;
        public int status;

        public State(Globals globals, LuaThread luaThread, LuaValue luaValue) {
            LuaValue luaValue2 = LuaValue.NONE;
            this.args = luaValue2;
            this.result = luaValue2;
            this.error = null;
            this.status = 0;
            this.globals = globals;
            this.lua_thread = new WeakReference(luaThread);
            this.function = luaValue;
        }

        public synchronized Varargs lua_resume(LuaThread luaThread, Varargs varargs) {
            Varargs varargsOf;
            Globals globals = this.globals;
            LuaThread luaThread2 = globals.running;
            try {
                try {
                    globals.running = luaThread;
                    this.args = varargs;
                    if (this.status == 0) {
                        this.status = 2;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Coroutine-");
                        int i10 = LuaThread.coroutine_count + 1;
                        LuaThread.coroutine_count = i10;
                        stringBuffer.append(i10);
                        new Thread(this, stringBuffer.toString()).start();
                    } else {
                        notify();
                    }
                    if (luaThread2 != null) {
                        luaThread2.state.status = 3;
                    }
                    this.status = 2;
                    wait();
                    String str = this.error;
                    varargsOf = str != null ? LuaValue.varargsOf(LuaValue.FALSE, LuaValue.valueOf(str)) : LuaValue.varargsOf(LuaValue.TRUE, this.result);
                    LuaValue luaValue = LuaValue.NONE;
                    this.args = luaValue;
                    this.result = luaValue;
                    this.error = null;
                    this.globals.running = luaThread2;
                    if (luaThread2 != null) {
                        luaThread2.state.status = 2;
                    }
                } catch (InterruptedException unused) {
                    throw new OrphanedThread();
                }
            } catch (Throwable th2) {
                LuaValue luaValue2 = LuaValue.NONE;
                this.args = luaValue2;
                this.result = luaValue2;
                this.error = null;
                this.globals.running = luaThread2;
                if (luaThread2 != null) {
                    luaThread2.state.status = 2;
                }
                throw th2;
            }
            return varargsOf;
        }

        public synchronized Varargs lua_yield(Varargs varargs) {
            try {
                try {
                    this.result = varargs;
                    this.status = 1;
                    notify();
                    do {
                        wait(LuaThread.thread_orphan_check_interval);
                        if (this.lua_thread.get() == 0) {
                            this.status = 4;
                            throw new OrphanedThread();
                        }
                    } while (this.status == 1);
                } catch (InterruptedException unused) {
                    this.status = 4;
                    throw new OrphanedThread();
                }
            } finally {
                LuaValue luaValue = LuaValue.NONE;
                this.args = luaValue;
                this.result = luaValue;
            }
            return this.args;
        }

        @Override
        public synchronized void run() {
            try {
                Varargs varargs = this.args;
                this.args = LuaValue.NONE;
                this.result = this.function.invoke(varargs);
                this.status = 4;
            } catch (Throwable th2) {
                try {
                    this.error = th2.getMessage();
                    this.status = 4;
                } catch (Throwable th3) {
                    this.status = 4;
                    notify();
                    throw th3;
                }
            }
            notify();
        }
    }

    public LuaThread(Globals globals) {
        State state = new State(globals, this, null);
        this.state = state;
        state.status = 2;
        this.globals = globals;
    }

    @Override
    public LuaThread checkthread() {
        return this;
    }

    public String getStatus() {
        return STATUS_NAMES[this.state.status];
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    public boolean isMainThread() {
        return this.state.function == null;
    }

    @Override
    public boolean isthread() {
        return true;
    }

    @Override
    public LuaThread optthread(LuaThread luaThread) {
        return this;
    }

    public Varargs resume(Varargs varargs) {
        State state = this.state;
        if (state.status <= 1) {
            return state.lua_resume(this, varargs);
        }
        LuaBoolean luaBoolean = LuaValue.FALSE;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("cannot resume ");
        stringBuffer.append(state.status == 4 ? "dead" : "non-suspended");
        stringBuffer.append(" coroutine");
        return LuaValue.varargsOf(luaBoolean, LuaValue.valueOf(stringBuffer.toString()));
    }

    @Override
    public int type() {
        return 8;
    }

    @Override
    public String typename() {
        return "thread";
    }

    public LuaThread(Globals globals, LuaValue luaValue) {
        LuaValue.assert_(luaValue != null, "function cannot be null");
        this.state = new State(globals, this, luaValue);
        this.globals = globals;
    }
}
