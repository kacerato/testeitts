package org.luaj.vm2.lib.jse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.BaseLib;

public class JseBaseLib extends BaseLib {
    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        luaValue2.checkglobals().STDIN = System.f92798in;
        return luaValue2;
    }

    @Override
    public InputStream findResource(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return super.findResource(str);
        }
        try {
            return new FileInputStream(file);
        } catch (IOException unused) {
            return null;
        }
    }
}
