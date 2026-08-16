package org.luaj.vm2.lib.jse;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class JavaMethod extends JavaMember {
    static final Map methods = Collections.synchronizedMap(new HashMap());
    final Method method;

    public static class Overload extends LuaFunction {
        final JavaMethod[] methods;

        public Overload(JavaMethod[] javaMethodArr) {
            this.methods = javaMethodArr;
        }

        private LuaValue invokeBestMethod(Object obj, Varargs varargs) {
            int i10 = CoerceLuaToJava.SCORE_UNCOERCIBLE;
            JavaMethod javaMethod = null;
            int i11 = 0;
            while (true) {
                JavaMethod[] javaMethodArr = this.methods;
                if (i11 >= javaMethodArr.length) {
                    break;
                }
                int score = javaMethodArr[i11].score(varargs);
                if (score < i10) {
                    javaMethod = this.methods[i11];
                    if (score == 0) {
                        break;
                    }
                    i10 = score;
                }
                i11++;
            }
            if (javaMethod == null) {
                LuaValue.error("no coercible public method");
            }
            return javaMethod.invokeMethod(obj, varargs);
        }

        @Override
        public LuaValue call() {
            return LuaValue.error("method cannot be called without instance");
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            return invokeBestMethod(varargs.checkuserdata(1), varargs.subargs(2));
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return invokeBestMethod(luaValue.checkuserdata(), LuaValue.NONE);
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return invokeBestMethod(luaValue.checkuserdata(), luaValue2);
        }

        @Override
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return invokeBestMethod(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
        }
    }

    private JavaMethod(Method method) {
        super(method.getParameterTypes(), method.getModifiers());
        this.method = method;
        try {
            if (method.isAccessible()) {
                return;
            }
            method.setAccessible(true);
        } catch (SecurityException unused) {
        }
    }

    public static JavaMethod forMethod(Method method) {
        Map map = methods;
        JavaMethod javaMethod = (JavaMethod) map.get(method);
        if (javaMethod != null) {
            return javaMethod;
        }
        JavaMethod javaMethod2 = new JavaMethod(method);
        map.put(method, javaMethod2);
        return javaMethod2;
    }

    public static LuaFunction forMethods(JavaMethod[] javaMethodArr) {
        return new Overload(javaMethodArr);
    }

    @Override
    public LuaValue call() {
        return LuaValue.error("method cannot be called without instance");
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        return invokeMethod(varargs.checkuserdata(1), varargs.subargs(2));
    }

    public LuaValue invokeMethod(Object obj, Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.method.invoke(obj, convertArgs(varargs)));
        } catch (InvocationTargetException e10) {
            throw new LuaError(e10.getTargetException());
        } catch (Exception e11) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("coercion error ");
            stringBuffer.append((Object) e11);
            return LuaValue.error(stringBuffer.toString());
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue) {
        return invokeMethod(luaValue.checkuserdata(), LuaValue.NONE);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return invokeMethod(luaValue.checkuserdata(), luaValue2);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return invokeMethod(luaValue.checkuserdata(), LuaValue.varargsOf(luaValue2, luaValue3));
    }
}
