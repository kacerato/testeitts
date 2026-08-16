package org.luaj.vm2;

public class TailcallVarargs extends Varargs {
    private Varargs args;
    private LuaValue func;
    private Varargs result;

    public TailcallVarargs(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        this.func = luaValue.get(luaValue2);
        this.args = LuaValue.varargsOf(luaValue, varargs);
    }

    @Override
    public LuaValue arg(int i10) {
        if (this.result == null) {
            eval();
        }
        return this.result.arg(i10);
    }

    @Override
    public LuaValue arg1() {
        if (this.result == null) {
            eval();
        }
        return this.result.arg1();
    }

    @Override
    public Varargs eval() {
        Varargs varargs;
        while (true) {
            Varargs varargs2 = this.result;
            if (varargs2 != null) {
                return varargs2;
            }
            Varargs onInvoke = this.func.onInvoke(this.args);
            if (onInvoke.isTailcall()) {
                TailcallVarargs tailcallVarargs = (TailcallVarargs) onInvoke;
                this.func = tailcallVarargs.func;
                varargs = tailcallVarargs.args;
            } else {
                this.result = onInvoke;
                varargs = null;
                this.func = null;
            }
            this.args = varargs;
        }
    }

    @Override
    public boolean isTailcall() {
        return true;
    }

    @Override
    public int narg() {
        if (this.result == null) {
            eval();
        }
        return this.result.narg();
    }

    @Override
    public Varargs subargs(int i10) {
        if (this.result == null) {
            eval();
        }
        return this.result.subargs(i10);
    }

    public TailcallVarargs(LuaValue luaValue, Varargs varargs) {
        this.func = luaValue;
        this.args = varargs;
    }
}
