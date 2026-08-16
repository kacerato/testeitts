package org.luaj.vm2.lib.jse;

import B0.C2324i;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LoadState;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.compiler.LuaC;
import org.luaj.vm2.lib.Bit32Lib;
import org.luaj.vm2.lib.CoroutineLib;
import org.luaj.vm2.lib.DebugLib;
import org.luaj.vm2.lib.PackageLib;
import org.luaj.vm2.lib.StringLib;
import org.luaj.vm2.lib.TableLib;

public class JsePlatform {
    public static Globals debugGlobals() {
        Globals standardGlobals = standardGlobals();
        standardGlobals.load(new DebugLib());
        return standardGlobals;
    }

    public static void luaMain(LuaValue luaValue, String[] strArr) {
        Globals standardGlobals = standardGlobals();
        int length = strArr.length;
        LuaValue[] luaValueArr = new LuaValue[strArr.length];
        for (int i10 = 0; i10 < length; i10++) {
            luaValueArr[i10] = LuaValue.valueOf(strArr[i10]);
        }
        LuaTable listOf = LuaValue.listOf(luaValueArr);
        listOf.set(C2324i.f1246e, length);
        standardGlobals.set("arg", listOf);
        luaValue.initupvalue1(standardGlobals);
        luaValue.invoke(LuaValue.varargsOf(luaValueArr));
    }

    public static Globals standardGlobals() {
        Globals globals = new Globals();
        globals.load(new JseBaseLib());
        globals.load(new PackageLib());
        globals.load(new Bit32Lib());
        globals.load(new TableLib());
        globals.load(new StringLib());
        globals.load(new CoroutineLib());
        globals.load(new JseMathLib());
        globals.load(new JseIoLib());
        globals.load(new JseOsLib());
        globals.load(new LuajavaLib());
        LoadState.install(globals);
        LuaC.install(globals);
        return globals;
    }
}
