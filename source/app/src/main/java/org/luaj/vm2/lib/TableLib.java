package org.luaj.vm2.lib;

import B0.C2324i;
import android.provider.Telephony;
import org.eclipse.jdt.core.JavaCore;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class TableLib extends TwoArgFunction {

    public static class TableLibFunction extends LibFunction {
        @Override
        public LuaValue call() {
            return LuaValue.argerror(1, "table expected, got no value");
        }
    }

    public static class concat extends TableLibFunction {
        @Override
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checktable().concat(LuaValue.EMPTYSTRING, 1, luaValue.length());
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().concat(luaValue2.checkstring(), 1, luaValue.length());
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue.length());
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue4.checkint());
        }
    }

    public static class insert extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg();
            if (narg == 0 || narg == 1) {
                return LuaValue.argerror(2, "value expected");
            }
            if (narg != 2) {
                varargs.arg1().checktable().insert(varargs.checkint(2), varargs.arg(3));
                return LuaValue.NONE;
            }
            LuaTable checktable = varargs.arg1().checktable();
            checktable.insert(checktable.length() + 1, varargs.arg(2));
            return LuaValue.NONE;
        }
    }

    public static class pack extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaTable tableOf = LuaValue.tableOf(varargs, 1);
            tableOf.set(C2324i.f1246e, varargs.narg());
            return tableOf;
        }
    }

    public static class remove extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            return varargs.arg1().checktable().remove(varargs.optint(2, 0));
        }
    }

    public static class sort extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            varargs.arg1().checktable().sort(varargs.arg(2).isnil() ? LuaValue.NIL : varargs.arg(2).checkfunction());
            return LuaValue.NONE;
        }
    }

    public static class unpack extends VarArgFunction {
        @Override
        public Varargs invoke(Varargs varargs) {
            LuaTable checktable = varargs.checktable(1);
            int narg = varargs.narg();
            return narg != 1 ? narg != 2 ? checktable.unpack(varargs.checkint(2), varargs.checkint(3)) : checktable.unpack(varargs.checkint(2)) : checktable.unpack();
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("concat", new concat());
        luaTable.set(JavaCore.INSERT, new insert());
        luaTable.set("pack", new pack());
        luaTable.set("remove", new remove());
        luaTable.set("sort", new sort());
        luaTable.set("unpack", new unpack());
        luaValue2.set("table", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("table", luaTable);
        return LuaValue.NIL;
    }
}
