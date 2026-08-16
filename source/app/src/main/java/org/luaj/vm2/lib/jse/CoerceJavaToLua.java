package org.luaj.vm2.lib.jse;

import java.util.HashMap;
import java.util.Map;
import org.luaj.vm2.LuaDouble;
import org.luaj.vm2.LuaInteger;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;

public class CoerceJavaToLua {
    static final Map COERCIONS;
    static Class array$B;
    static final Coercion arrayCoercion;
    static Class class$java$lang$Boolean;
    static Class class$java$lang$Byte;
    static Class class$java$lang$Character;
    static Class class$java$lang$Class;
    static Class class$java$lang$Double;
    static Class class$java$lang$Float;
    static Class class$java$lang$Integer;
    static Class class$java$lang$Long;
    static Class class$java$lang$Short;
    static Class class$java$lang$String;
    static final Coercion instanceCoercion;
    static final Coercion luaCoercion;

    public static final class ArrayCoercion implements Coercion {
        private ArrayCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return new JavaArray(obj);
        }
    }

    public static final class BoolCoercion implements Coercion {
        private BoolCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return ((Boolean) obj).booleanValue() ? LuaValue.TRUE : LuaValue.FALSE;
        }
    }

    public static final class BytesCoercion implements Coercion {
        private BytesCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return LuaValue.valueOf((byte[]) obj);
        }
    }

    public static final class CharCoercion implements Coercion {
        private CharCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf((int) ((Character) obj).charValue());
        }
    }

    public static final class ClassCoercion implements Coercion {
        private ClassCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return JavaClass.forClass((Class) obj);
        }
    }

    public interface Coercion {
        LuaValue coerce(Object obj);
    }

    public static final class DoubleCoercion implements Coercion {
        private DoubleCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return LuaDouble.valueOf(((Number) obj).doubleValue());
        }
    }

    public static final class InstanceCoercion implements Coercion {
        private InstanceCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return new JavaInstance(obj);
        }
    }

    public static final class IntCoercion implements Coercion {
        private IntCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return LuaInteger.valueOf(((Number) obj).intValue());
        }
    }

    public static final class LuaCoercion implements Coercion {
        private LuaCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return (LuaValue) obj;
        }
    }

    public static final class StringCoercion implements Coercion {
        private StringCoercion() {
        }

        @Override
        public LuaValue coerce(Object obj) {
            return LuaString.valueOf(obj.toString());
        }
    }

    static {
        HashMap hashMap = new HashMap();
        COERCIONS = hashMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        IntCoercion intCoercion = new IntCoercion();
        CharCoercion charCoercion = new CharCoercion();
        DoubleCoercion doubleCoercion = new DoubleCoercion();
        StringCoercion stringCoercion = new StringCoercion();
        BytesCoercion bytesCoercion = new BytesCoercion();
        ClassCoercion classCoercion = new ClassCoercion();
        Class cls = class$java$lang$Boolean;
        if (cls == null) {
            cls = class$("java.lang.Boolean");
            class$java$lang$Boolean = cls;
        }
        hashMap.put(cls, boolCoercion);
        Class cls2 = class$java$lang$Byte;
        if (cls2 == null) {
            cls2 = class$("java.lang.Byte");
            class$java$lang$Byte = cls2;
        }
        hashMap.put(cls2, intCoercion);
        Class cls3 = class$java$lang$Character;
        if (cls3 == null) {
            cls3 = class$("java.lang.Character");
            class$java$lang$Character = cls3;
        }
        hashMap.put(cls3, charCoercion);
        Class cls4 = class$java$lang$Short;
        if (cls4 == null) {
            cls4 = class$("java.lang.Short");
            class$java$lang$Short = cls4;
        }
        hashMap.put(cls4, intCoercion);
        Class cls5 = class$java$lang$Integer;
        if (cls5 == null) {
            cls5 = class$("java.lang.Integer");
            class$java$lang$Integer = cls5;
        }
        hashMap.put(cls5, intCoercion);
        Class cls6 = class$java$lang$Long;
        if (cls6 == null) {
            cls6 = class$("java.lang.Long");
            class$java$lang$Long = cls6;
        }
        hashMap.put(cls6, doubleCoercion);
        Class cls7 = class$java$lang$Float;
        if (cls7 == null) {
            cls7 = class$("java.lang.Float");
            class$java$lang$Float = cls7;
        }
        hashMap.put(cls7, doubleCoercion);
        Class cls8 = class$java$lang$Double;
        if (cls8 == null) {
            cls8 = class$("java.lang.Double");
            class$java$lang$Double = cls8;
        }
        hashMap.put(cls8, doubleCoercion);
        Class cls9 = class$java$lang$String;
        if (cls9 == null) {
            cls9 = class$("java.lang.String");
            class$java$lang$String = cls9;
        }
        hashMap.put(cls9, stringCoercion);
        Class cls10 = array$B;
        if (cls10 == null) {
            cls10 = class$("[B");
            array$B = cls10;
        }
        hashMap.put(cls10, bytesCoercion);
        Class cls11 = class$java$lang$Class;
        if (cls11 == null) {
            cls11 = class$("java.lang.Class");
            class$java$lang$Class = cls11;
        }
        hashMap.put(cls11, classCoercion);
        instanceCoercion = new InstanceCoercion();
        arrayCoercion = new ArrayCoercion();
        luaCoercion = new LuaCoercion();
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static LuaValue coerce(Object obj) {
        if (obj == null) {
            return LuaValue.NIL;
        }
        Class<?> cls = obj.getClass();
        Map map = COERCIONS;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion == null) {
            coercion = cls.isArray() ? arrayCoercion : obj instanceof LuaValue ? luaCoercion : instanceCoercion;
            map.put(cls, coercion);
        }
        return coercion.coerce(obj);
    }
}
