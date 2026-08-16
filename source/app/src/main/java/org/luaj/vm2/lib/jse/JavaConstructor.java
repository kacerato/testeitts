package org.luaj.vm2.lib.jse;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.VarArgFunction;

public class JavaConstructor extends JavaMember {
    static final Map constructors = Collections.synchronizedMap(new HashMap());
    final Constructor constructor;

    public static class Overload extends VarArgFunction {
        final JavaConstructor[] constructors;

        public Overload(JavaConstructor[] javaConstructorArr) {
            this.constructors = javaConstructorArr;
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            int i10 = CoerceLuaToJava.SCORE_UNCOERCIBLE;
            JavaConstructor javaConstructor = null;
            int i11 = 0;
            while (true) {
                JavaConstructor[] javaConstructorArr = this.constructors;
                if (i11 >= javaConstructorArr.length) {
                    break;
                }
                int score = javaConstructorArr[i11].score(varargs);
                if (score < i10) {
                    javaConstructor = this.constructors[i11];
                    if (score == 0) {
                        break;
                    }
                    i10 = score;
                }
                i11++;
            }
            if (javaConstructor == null) {
                LuaValue.error("no coercible public method");
            }
            return javaConstructor.invoke(varargs);
        }
    }

    private JavaConstructor(Constructor constructor) {
        super(constructor.getParameterTypes(), constructor.getModifiers());
        this.constructor = constructor;
    }

    public static JavaConstructor forConstructor(Constructor constructor) {
        Map map = constructors;
        JavaConstructor javaConstructor = (JavaConstructor) map.get(constructor);
        if (javaConstructor != null) {
            return javaConstructor;
        }
        JavaConstructor javaConstructor2 = new JavaConstructor(constructor);
        map.put(constructor, javaConstructor2);
        return javaConstructor2;
    }

    public static LuaValue forConstructors(JavaConstructor[] javaConstructorArr) {
        return new Overload(javaConstructorArr);
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        try {
            return CoerceJavaToLua.coerce(this.constructor.newInstance(convertArgs(varargs)));
        } catch (InvocationTargetException e10) {
            throw new LuaError(e10.getTargetException());
        } catch (Exception e11) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("coercion error ");
            stringBuffer.append((Object) e11);
            return LuaValue.error(stringBuffer.toString());
        }
    }
}
