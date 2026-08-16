package org.luaj.vm2.server;

import T5.b;
import java.io.InputStream;
import java.io.Reader;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;
import org.luaj.vm2.lib.jse.JsePlatform;

public class DefaultLauncher implements Launcher {

    protected Globals f102813g = JsePlatform.standardGlobals();

    private Object[] launchChunk(LuaValue luaValue, Object[] objArr) {
        int length = objArr.length;
        LuaValue[] luaValueArr = new LuaValue[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            luaValueArr[i11] = CoerceJavaToLua.coerce(objArr[i11]);
        }
        Varargs invoke = luaValue.invoke(LuaValue.varargsOf(luaValueArr));
        int narg = invoke.narg();
        Object[] objArr2 = new Object[narg];
        while (i10 < narg) {
            int i12 = i10 + 1;
            LuaValue arg = invoke.arg(i12);
            int type = arg.type();
            if (type == -2) {
                objArr2[i10] = Integer.valueOf(arg.toint());
            } else if (type == 7) {
                objArr2[i10] = arg.touserdata();
            } else if (type == 0) {
                objArr2[i10] = null;
            } else if (type == 1) {
                objArr2[i10] = Boolean.valueOf(arg.toboolean());
            } else if (type == 3) {
                objArr2[i10] = Double.valueOf(arg.todouble());
            } else if (type != 4) {
                objArr2[i10] = arg;
            } else {
                objArr2[i10] = arg.tojstring();
            }
            i10 = i12;
        }
        return objArr2;
    }

    @Override
    public Object[] launch(InputStream inputStream, Object[] objArr) {
        Globals globals = this.f102813g;
        return launchChunk(globals.load(inputStream, b.f24045b, "bt", globals), objArr);
    }

    @Override
    public Object[] launch(Reader reader, Object[] objArr) {
        return launchChunk(this.f102813g.load(reader, b.f24045b), objArr);
    }

    @Override
    public Object[] launch(String str, Object[] objArr) {
        return launchChunk(this.f102813g.load(str, b.f24045b), objArr);
    }
}
