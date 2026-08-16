package org.luaj.vm2.luajc;

import java.util.HashMap;
import java.util.Map;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;

public class JavaLoader extends ClassLoader {
    private Map unloaded = new HashMap();

    @Override
    public Class findClass(String str) throws ClassNotFoundException {
        byte[] bArr = (byte[]) this.unloaded.get(str);
        return bArr != null ? defineClass(str, bArr, 0, bArr.length) : super.findClass(str);
    }

    public void include(JavaGen javaGen) {
        this.unloaded.put(javaGen.classname, javaGen.bytecode);
        JavaGen[] javaGenArr = javaGen.inners;
        int length = javaGenArr != null ? javaGenArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            include(javaGen.inners[i10]);
        }
    }

    public LuaFunction load(String str, LuaValue luaValue) {
        try {
            LuaFunction luaFunction = (LuaFunction) loadClass(str).newInstance();
            luaFunction.initupvalue1(luaValue);
            return luaFunction;
        } catch (Exception e10) {
            e10.printStackTrace();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("bad class gen: ");
            stringBuffer.append((Object) e10);
            throw new IllegalStateException(stringBuffer.toString());
        }
    }

    public LuaFunction load(Prototype prototype, String str, String str2, LuaValue luaValue) {
        return load(new JavaGen(prototype, str, str2, false), luaValue);
    }

    public LuaFunction load(JavaGen javaGen, LuaValue luaValue) {
        include(javaGen);
        return load(javaGen.classname, luaValue);
    }
}
