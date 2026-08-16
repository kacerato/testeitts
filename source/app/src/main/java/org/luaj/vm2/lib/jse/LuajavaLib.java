package org.luaj.vm2.lib.jse;

import android.provider.CallLog;
import android.provider.Telephony;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.VarArgFunction;

public class LuajavaLib extends VarArgFunction {
    static final int BINDCLASS = 1;
    static final int CREATEPROXY = 4;
    static final int INIT = 0;
    static final int LOADLIB = 5;
    static final int METHOD_MODIFIERS_VARARGS = 128;
    static final String[] NAMES = {"bindClass", "newInstance", CallLog.Calls.NEW, "createProxy", "loadLib"};
    static final int NEW = 3;
    static final int NEWINSTANCE = 2;
    static Class class$java$lang$Class;

    public static final class ProxyInvocationHandler implements InvocationHandler {
        private final LuaValue lobj;

        private ProxyInvocationHandler(LuaValue luaValue) {
            this.lobj = luaValue;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            LuaValue[] luaValueArr;
            LuaValue luaValue = this.lobj.get(method.getName());
            if (luaValue.isnil()) {
                return null;
            }
            int i10 = 0;
            boolean z10 = (method.getModifiers() & 128) != 0;
            int length = objArr != null ? objArr.length : 0;
            if (z10) {
                int i11 = length - 1;
                Object obj2 = objArr[i11];
                int length2 = Array.getLength(obj2);
                luaValueArr = new LuaValue[i11 + length2];
                for (int i12 = 0; i12 < i11; i12++) {
                    luaValueArr[i12] = CoerceJavaToLua.coerce(objArr[i12]);
                }
                while (i10 < length2) {
                    luaValueArr[i10 + i11] = CoerceJavaToLua.coerce(Array.get(obj2, i10));
                    i10++;
                }
            } else {
                luaValueArr = new LuaValue[length];
                while (i10 < length) {
                    luaValueArr[i10] = CoerceJavaToLua.coerce(objArr[i10]);
                    i10++;
                }
            }
            return CoerceLuaToJava.coerce(luaValue.invoke(luaValueArr).arg1(), method.getReturnType());
        }
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public Class classForName(String str) throws ClassNotFoundException {
        return Class.forName(str, true, ClassLoader.getSystemClassLoader());
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        Class cls;
        try {
            int i10 = this.opcode;
            if (i10 == 0) {
                LuaValue arg = varargs.arg(2);
                LuaTable luaTable = new LuaTable();
                bind(luaTable, getClass(), NAMES, 1);
                arg.set("luajava", luaTable);
                arg.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("luajava", luaTable);
                return luaTable;
            }
            if (i10 == 1) {
                return JavaClass.forClass(classForName(varargs.checkjstring(1)));
            }
            if (i10 == 2 || i10 == 3) {
                LuaValue checkvalue = varargs.checkvalue(1);
                if (this.opcode == 2) {
                    cls = classForName(checkvalue.tojstring());
                } else {
                    Class cls2 = class$java$lang$Class;
                    if (cls2 == null) {
                        cls2 = class$("java.lang.Class");
                        class$java$lang$Class = cls2;
                    }
                    cls = (Class) checkvalue.checkuserdata(cls2);
                }
                return JavaClass.forClass(cls).getConstructor().invoke(varargs.subargs(2));
            }
            if (i10 != 4) {
                if (i10 != 5) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("not yet supported: ");
                    stringBuffer.append((Object) this);
                    throw new LuaError(stringBuffer.toString());
                }
                String checkjstring = varargs.checkjstring(1);
                String checkjstring2 = varargs.checkjstring(2);
                Class classForName = classForName(checkjstring);
                Object invoke = classForName.getMethod(checkjstring2, null).invoke(classForName, null);
                return invoke instanceof LuaValue ? (LuaValue) invoke : LuaValue.NIL;
            }
            int narg = varargs.narg();
            int i11 = narg - 1;
            if (i11 <= 0) {
                throw new LuaError("no interfaces");
            }
            LuaTable checktable = varargs.checktable(narg);
            Class[] clsArr = new Class[i11];
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i12 + 1;
                clsArr[i12] = classForName(varargs.checkjstring(i13));
                i12 = i13;
            }
            return LuaValue.userdataOf(Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new ProxyInvocationHandler(checktable)));
        } catch (InvocationTargetException e10) {
            throw new LuaError(e10.getTargetException());
        } catch (LuaError e11) {
            throw e11;
        } catch (Exception e12) {
            throw new LuaError(e12);
        }
    }
}
