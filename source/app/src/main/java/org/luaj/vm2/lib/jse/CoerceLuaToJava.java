package org.luaj.vm2.lib.jse;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;

public class CoerceLuaToJava {
    static final Map COERCIONS;
    static int SCORE_NULL_VALUE = 16;
    static int SCORE_UNCOERCIBLE = 65536;
    static int SCORE_WRONG_TYPE = 256;
    static Class array$B;
    static Class class$java$lang$Boolean;
    static Class class$java$lang$Byte;
    static Class class$java$lang$Character;
    static Class class$java$lang$Double;
    static Class class$java$lang$Float;
    static Class class$java$lang$Integer;
    static Class class$java$lang$Long;
    static Class class$java$lang$Short;
    static Class class$java$lang$String;

    public static final class ArrayCoercion implements Coercion {
        final Coercion componentCoercion;
        final Class componentType;

        public ArrayCoercion(Class cls) {
            this.componentType = cls;
            this.componentCoercion = CoerceLuaToJava.getCoercion(cls);
        }

        @Override
        public Object coerce(LuaValue luaValue) {
            int type = luaValue.type();
            if (type != 5) {
                if (type != 7) {
                    return null;
                }
                return luaValue.touserdata();
            }
            int length = luaValue.length();
            Object newInstance = Array.newInstance((Class<?>) this.componentType, length);
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                Array.set(newInstance, i10, this.componentCoercion.coerce(luaValue.get(i11)));
                i10 = i11;
            }
            return newInstance;
        }

        @Override
        public int score(LuaValue luaValue) {
            int type = luaValue.type();
            if (type == 0) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (type != 5) {
                return type != 7 ? CoerceLuaToJava.SCORE_UNCOERCIBLE : CoerceLuaToJava.inheritanceLevels(this.componentType, luaValue.touserdata().getClass().getComponentType());
            }
            if (luaValue.length() == 0) {
                return 0;
            }
            return this.componentCoercion.score(luaValue.get(1));
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ArrayCoercion(");
            stringBuffer.append(this.componentType.getName());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public static final class BoolCoercion implements Coercion {
        @Override
        public Object coerce(LuaValue luaValue) {
            return luaValue.toboolean() ? Boolean.TRUE : Boolean.FALSE;
        }

        @Override
        public int score(LuaValue luaValue) {
            return luaValue.type() != 1 ? 1 : 0;
        }

        public String toString() {
            return "BoolCoercion()";
        }
    }

    public interface Coercion {
        Object coerce(LuaValue luaValue);

        int score(LuaValue luaValue);
    }

    public static final class NumericCoercion implements Coercion {
        static final int TARGET_TYPE_BYTE = 0;
        static final int TARGET_TYPE_CHAR = 1;
        static final int TARGET_TYPE_DOUBLE = 6;
        static final int TARGET_TYPE_FLOAT = 5;
        static final int TARGET_TYPE_INT = 3;
        static final int TARGET_TYPE_LONG = 4;
        static final int TARGET_TYPE_SHORT = 2;
        static final String[] TYPE_NAMES = {"byte", "char", "short", "int", "long", TypedValues.Custom.S_FLOAT, "double"};
        final int targetType;

        public NumericCoercion(int i10) {
            this.targetType = i10;
        }

        @Override
        public Object coerce(LuaValue luaValue) {
            switch (this.targetType) {
                case 0:
                    return new Byte((byte) luaValue.toint());
                case 1:
                    return new Character((char) luaValue.toint());
                case 2:
                    return new Short((short) luaValue.toint());
                case 3:
                    return new Integer(luaValue.toint());
                case 4:
                    return new Long((long) luaValue.todouble());
                case 5:
                    return new Float((float) luaValue.todouble());
                case 6:
                    return new Double(luaValue.todouble());
                default:
                    return null;
            }
        }

        @Override
        public int score(LuaValue luaValue) {
            int i10 = 4;
            if (luaValue.type() == 4) {
                luaValue = luaValue.tonumber();
                if (luaValue.isnil()) {
                    return CoerceLuaToJava.SCORE_UNCOERCIBLE;
                }
            } else {
                i10 = 0;
            }
            if (!luaValue.isint()) {
                if (!luaValue.isnumber()) {
                    return CoerceLuaToJava.SCORE_UNCOERCIBLE;
                }
                switch (this.targetType) {
                    case 0:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 1:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 2:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 3:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                    case 4:
                        double d10 = luaValue.todouble();
                        return i10 + (d10 != ((double) ((long) d10)) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                    case 5:
                        double d11 = luaValue.todouble();
                        return i10 + (d11 != ((double) ((float) d11)) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                    case 6:
                        double d12 = luaValue.todouble();
                        return i10 + ((d12 == ((double) ((long) d12)) || d12 == ((double) ((float) d12))) ? 1 : 0);
                    default:
                        return CoerceLuaToJava.SCORE_WRONG_TYPE;
                }
            }
            switch (this.targetType) {
                case 0:
                    int i11 = luaValue.toint();
                    return i10 + (i11 != ((byte) i11) ? CoerceLuaToJava.SCORE_WRONG_TYPE : 0);
                case 1:
                    int i12 = luaValue.toint();
                    if (i12 == ((byte) i12)) {
                        r1 = 1;
                    } else if (i12 != ((char) i12)) {
                        r1 = CoerceLuaToJava.SCORE_WRONG_TYPE;
                    }
                    return i10 + r1;
                case 2:
                    int i13 = luaValue.toint();
                    if (i13 == ((byte) i13)) {
                        r1 = 1;
                    } else if (i13 != ((short) i13)) {
                        r1 = CoerceLuaToJava.SCORE_WRONG_TYPE;
                    }
                    return i10 + r1;
                case 3:
                    int i14 = luaValue.toint();
                    if (i14 == ((byte) i14)) {
                        r1 = 2;
                    } else if (i14 == ((char) i14) || i14 == ((short) i14)) {
                        r1 = 1;
                    }
                    return i10 + r1;
                case 4:
                    return i10 + 1;
                case 5:
                    return i10 + 1;
                case 6:
                    return i10 + 2;
                default:
                    return CoerceLuaToJava.SCORE_WRONG_TYPE;
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("NumericCoercion(");
            stringBuffer.append(TYPE_NAMES[this.targetType]);
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public static final class ObjectCoercion implements Coercion {
        final Class targetType;

        public ObjectCoercion(Class cls) {
            this.targetType = cls;
        }

        @Override
        public Object coerce(LuaValue luaValue) {
            int type = luaValue.type();
            if (type != 0) {
                return type != 1 ? type != 3 ? type != 4 ? type != 7 ? luaValue : luaValue.optuserdata(this.targetType, (Object) null) : luaValue.tojstring() : luaValue.isint() ? new Integer(luaValue.toint()) : new Double(luaValue.todouble()) : luaValue.toboolean() ? Boolean.TRUE : Boolean.FALSE;
            }
            return null;
        }

        @Override
        public int score(LuaValue luaValue) {
            Class cls;
            Class cls2;
            Object obj;
            int type = luaValue.type();
            if (type == 0) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (type == 1) {
                Class cls3 = this.targetType;
                Class cls4 = CoerceLuaToJava.class$java$lang$Boolean;
                if (cls4 == null) {
                    cls4 = CoerceLuaToJava.class$("java.lang.Boolean");
                    CoerceLuaToJava.class$java$lang$Boolean = cls4;
                }
                return CoerceLuaToJava.inheritanceLevels(cls3, cls4);
            }
            if (type == 3) {
                Class cls5 = this.targetType;
                if (luaValue.isint()) {
                    cls = CoerceLuaToJava.class$java$lang$Integer;
                    if (cls == null) {
                        cls = CoerceLuaToJava.class$("java.lang.Integer");
                        CoerceLuaToJava.class$java$lang$Integer = cls;
                    }
                } else {
                    cls = CoerceLuaToJava.class$java$lang$Double;
                    if (cls == null) {
                        cls = CoerceLuaToJava.class$("java.lang.Double");
                        CoerceLuaToJava.class$java$lang$Double = cls;
                    }
                }
                return CoerceLuaToJava.inheritanceLevels(cls5, cls);
            }
            if (type != 4) {
                if (type != 7) {
                    cls2 = this.targetType;
                    obj = luaValue;
                } else {
                    cls2 = this.targetType;
                    obj = luaValue.touserdata();
                }
                return CoerceLuaToJava.inheritanceLevels(cls2, obj.getClass());
            }
            Class cls6 = this.targetType;
            Class cls7 = CoerceLuaToJava.class$java$lang$String;
            if (cls7 == null) {
                cls7 = CoerceLuaToJava.class$("java.lang.String");
                CoerceLuaToJava.class$java$lang$String = cls7;
            }
            return CoerceLuaToJava.inheritanceLevels(cls6, cls7);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ObjectCoercion(");
            stringBuffer.append(this.targetType.getName());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public static final class StringCoercion implements Coercion {
        public static final int TARGET_TYPE_BYTES = 1;
        public static final int TARGET_TYPE_STRING = 0;
        final int targetType;

        public StringCoercion(int i10) {
            this.targetType = i10;
        }

        @Override
        public Object coerce(LuaValue luaValue) {
            if (luaValue.isnil()) {
                return null;
            }
            if (this.targetType == 0) {
                return luaValue.tojstring();
            }
            LuaString checkstring = luaValue.checkstring();
            int i10 = checkstring.m_length;
            byte[] bArr = new byte[i10];
            checkstring.copyInto(0, bArr, 0, i10);
            return bArr;
        }

        @Override
        public int score(LuaValue luaValue) {
            int type = luaValue.type();
            if (type == 0) {
                return CoerceLuaToJava.SCORE_NULL_VALUE;
            }
            if (type != 4) {
                return this.targetType == 0 ? CoerceLuaToJava.SCORE_WRONG_TYPE : CoerceLuaToJava.SCORE_UNCOERCIBLE;
            }
            if (luaValue.checkstring().isValidUtf8()) {
                if (this.targetType != 0) {
                    return 1;
                }
            } else if (this.targetType != 1) {
                return CoerceLuaToJava.SCORE_WRONG_TYPE;
            }
            return 0;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("StringCoercion(");
            stringBuffer.append(this.targetType == 0 ? SerializableShaderEntry.f81157k : "byte[]");
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    static {
        Map synchronizedMap = Collections.synchronizedMap(new HashMap());
        COERCIONS = synchronizedMap;
        BoolCoercion boolCoercion = new BoolCoercion();
        NumericCoercion numericCoercion = new NumericCoercion(0);
        NumericCoercion numericCoercion2 = new NumericCoercion(1);
        NumericCoercion numericCoercion3 = new NumericCoercion(2);
        NumericCoercion numericCoercion4 = new NumericCoercion(3);
        NumericCoercion numericCoercion5 = new NumericCoercion(4);
        NumericCoercion numericCoercion6 = new NumericCoercion(5);
        NumericCoercion numericCoercion7 = new NumericCoercion(6);
        StringCoercion stringCoercion = new StringCoercion(0);
        StringCoercion stringCoercion2 = new StringCoercion(1);
        synchronizedMap.put(Boolean.TYPE, boolCoercion);
        Class cls = class$java$lang$Boolean;
        if (cls == null) {
            cls = class$("java.lang.Boolean");
            class$java$lang$Boolean = cls;
        }
        synchronizedMap.put(cls, boolCoercion);
        synchronizedMap.put(Byte.TYPE, numericCoercion);
        Class cls2 = class$java$lang$Byte;
        if (cls2 == null) {
            cls2 = class$("java.lang.Byte");
            class$java$lang$Byte = cls2;
        }
        synchronizedMap.put(cls2, numericCoercion);
        synchronizedMap.put(Character.TYPE, numericCoercion2);
        Class cls3 = class$java$lang$Character;
        if (cls3 == null) {
            cls3 = class$("java.lang.Character");
            class$java$lang$Character = cls3;
        }
        synchronizedMap.put(cls3, numericCoercion2);
        synchronizedMap.put(Short.TYPE, numericCoercion3);
        Class cls4 = class$java$lang$Short;
        if (cls4 == null) {
            cls4 = class$("java.lang.Short");
            class$java$lang$Short = cls4;
        }
        synchronizedMap.put(cls4, numericCoercion3);
        synchronizedMap.put(Integer.TYPE, numericCoercion4);
        Class cls5 = class$java$lang$Integer;
        if (cls5 == null) {
            cls5 = class$("java.lang.Integer");
            class$java$lang$Integer = cls5;
        }
        synchronizedMap.put(cls5, numericCoercion4);
        synchronizedMap.put(Long.TYPE, numericCoercion5);
        Class cls6 = class$java$lang$Long;
        if (cls6 == null) {
            cls6 = class$("java.lang.Long");
            class$java$lang$Long = cls6;
        }
        synchronizedMap.put(cls6, numericCoercion5);
        synchronizedMap.put(Float.TYPE, numericCoercion6);
        Class cls7 = class$java$lang$Float;
        if (cls7 == null) {
            cls7 = class$("java.lang.Float");
            class$java$lang$Float = cls7;
        }
        synchronizedMap.put(cls7, numericCoercion6);
        synchronizedMap.put(Double.TYPE, numericCoercion7);
        Class cls8 = class$java$lang$Double;
        if (cls8 == null) {
            cls8 = class$("java.lang.Double");
            class$java$lang$Double = cls8;
        }
        synchronizedMap.put(cls8, numericCoercion7);
        Class cls9 = class$java$lang$String;
        if (cls9 == null) {
            cls9 = class$("java.lang.String");
            class$java$lang$String = cls9;
        }
        synchronizedMap.put(cls9, stringCoercion);
        Class cls10 = array$B;
        if (cls10 == null) {
            cls10 = class$("[B");
            array$B = cls10;
        }
        synchronizedMap.put(cls10, stringCoercion2);
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static Object coerce(LuaValue luaValue, Class cls) {
        return getCoercion(cls).coerce(luaValue);
    }

    public static Coercion getCoercion(Class cls) {
        Coercion objectCoercion;
        Map map = COERCIONS;
        Coercion coercion = (Coercion) map.get(cls);
        if (coercion != null) {
            return coercion;
        }
        if (cls.isArray()) {
            cls.getComponentType();
            objectCoercion = new ArrayCoercion(cls.getComponentType());
        } else {
            objectCoercion = new ObjectCoercion(cls);
        }
        map.put(cls, objectCoercion);
        return objectCoercion;
    }

    public static final int inheritanceLevels(Class cls, Class cls2) {
        if (cls2 == null) {
            return SCORE_UNCOERCIBLE;
        }
        if (cls == cls2) {
            return 0;
        }
        int min = Math.min(SCORE_UNCOERCIBLE, inheritanceLevels(cls, cls2.getSuperclass()) + 1);
        for (Class<?> cls3 : cls2.getInterfaces()) {
            min = Math.min(min, inheritanceLevels(cls, cls3) + 1);
        }
        return min;
    }
}
