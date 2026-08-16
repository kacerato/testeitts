package P8;

import com.itsmagic.engine.Engines.Utils.Variable;
import java.lang.reflect.Field;

public class j {
    public static boolean a(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getBoolean(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine boolean of a lost class type");
        return false;
    }

    public static byte b(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getByte(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine byte of a lost class type");
        return (byte) 0;
    }

    public static char c(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getChar(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine char of a lost class type");
        return (char) 0;
    }

    public static double d(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getDouble(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine double of a lost class type");
        return 0.0d;
    }

    public static float e(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getFloat(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine float of a lost class type");
        return 0.0f;
    }

    public static int f(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getInt(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine int of a lost class type");
        return 0;
    }

    public static long g(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getLong(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine long of a lost class type");
        return 0L;
    }

    public static short h(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return field.getShort(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine short of a lost class type");
        return (short) 0;
    }

    public static String i(Object instance, String fieldName) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    return (String) field.get(instance);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine String of a lost class type");
        return "";
    }

    public static Variable j(Object instance, Field field) {
        Class<?> type = field.getType();
        if (!type.isPrimitive()) {
            if (type == Float.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0.0f);
                    }
                    Float f10 = (Float) field.get(instance);
                    return new Variable(field.getName(), f10 != null ? f10.floatValue() : 0.0f);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused) {
                    return new Variable(field.getName(), e(instance, field.getName()));
                }
            }
            if (type == Integer.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0);
                    }
                    Integer num = (Integer) field.get(instance);
                    return new Variable(field.getName(), num != null ? num.intValue() : 0);
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused2) {
                    return new Variable(field.getName(), f(instance, field.getName()));
                }
            }
            if (type == Boolean.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), Boolean.FALSE);
                    }
                    Boolean bool = (Boolean) field.get(instance);
                    return new Variable(field.getName(), Boolean.valueOf(bool != null ? bool.booleanValue() : false));
                } catch (IllegalAccessException e12) {
                    e12.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused3) {
                    return new Variable(field.getName(), Boolean.valueOf(a(instance, field.getName())));
                }
            }
            if (type == Character.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0);
                    }
                    Character ch2 = (Character) field.get(instance);
                    return new Variable(field.getName(), (int) (ch2 != null ? ch2.charValue() : (char) 0));
                } catch (IllegalAccessException e13) {
                    e13.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused4) {
                    return new Variable(field.getName(), c(instance, field.getName()), Variable.a.Char);
                }
            }
            if (type == Short.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0);
                    }
                    Short sh2 = (Short) field.get(instance);
                    return new Variable(field.getName(), (int) (sh2 != null ? sh2.shortValue() : (short) 0));
                } catch (IllegalAccessException e14) {
                    e14.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused5) {
                    return new Variable(field.getName(), h(instance, field.getName()), Variable.a.Short);
                }
            }
            if (type == Byte.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0);
                    }
                    Byte b10 = (Byte) field.get(instance);
                    return new Variable(field.getName(), (int) (b10 != null ? b10.byteValue() : (byte) 0));
                } catch (IllegalAccessException e15) {
                    e15.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused6) {
                    return new Variable(field.getName(), b(instance, field.getName()), Variable.a.Byte);
                }
            }
            if (type == Long.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0L);
                    }
                    Long l10 = (Long) field.get(instance);
                    return new Variable(field.getName(), l10 != null ? l10.longValue() : 0L);
                } catch (IllegalAccessException e16) {
                    e16.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused7) {
                    return new Variable(field.getName(), g(instance, field.getName()));
                }
            }
            if (type == Double.class) {
                try {
                    if (instance == null) {
                        return new Variable(field.getName(), 0.0d);
                    }
                    Double d10 = (Double) field.get(instance);
                    return new Variable(field.getName(), d10 != null ? d10.doubleValue() : 0.0d);
                } catch (IllegalAccessException e17) {
                    e17.printStackTrace();
                    return null;
                } catch (IllegalArgumentException unused8) {
                    return new Variable(field.getName(), d(instance, field.getName()));
                }
            }
            if (type != String.class) {
                return null;
            }
            try {
                if (instance == null) {
                    return new Variable(field.getName(), "");
                }
                return new Variable(field.getName(), field.get(instance) + "");
            } catch (IllegalAccessException e18) {
                e18.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused9) {
                return new Variable(field.getName(), i(instance, field.getName()));
            }
        }
        if (type == Float.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0.0f) : new Variable(field.getName(), field.getFloat(instance));
            } catch (IllegalAccessException e19) {
                e19.printStackTrace();
            } catch (IllegalArgumentException unused10) {
                return new Variable(field.getName(), e(instance, field.getName()));
            }
        }
        if (type == Float.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0.0f);
                }
                Float f11 = (Float) field.get(instance);
                return new Variable(field.getName(), f11 != null ? f11.floatValue() : 0.0f);
            } catch (IllegalAccessException e20) {
                e20.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused11) {
                return new Variable(field.getName(), e(instance, field.getName()));
            }
        }
        if (type == Integer.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0) : new Variable(field.getName(), field.getInt(instance));
            } catch (IllegalAccessException e21) {
                e21.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused12) {
                return new Variable(field.getName(), f(instance, field.getName()));
            }
        }
        if (type == Integer.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0);
                }
                Integer num2 = (Integer) field.get(instance);
                return new Variable(field.getName(), num2 != null ? num2.intValue() : 0);
            } catch (IllegalAccessException e22) {
                e22.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused13) {
                return new Variable(field.getName(), f(instance, field.getName()));
            }
        }
        if (type == String.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), "");
                }
                return new Variable(field.getName(), field.get(instance) + "");
            } catch (IllegalAccessException e23) {
                e23.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused14) {
                return new Variable(field.getName(), i(instance, field.getName()));
            }
        }
        if (type == Boolean.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), Boolean.FALSE) : new Variable(field.getName(), Boolean.valueOf(field.getBoolean(instance)));
            } catch (IllegalAccessException e24) {
                e24.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused15) {
                return new Variable(field.getName(), Boolean.valueOf(a(instance, field.getName())));
            }
        }
        if (type == Boolean.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), Boolean.FALSE);
                }
                Boolean bool2 = (Boolean) field.get(instance);
                return new Variable(field.getName(), Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false));
            } catch (IllegalAccessException e25) {
                e25.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused16) {
                return new Variable(field.getName(), Boolean.valueOf(a(instance, field.getName())));
            }
        }
        if (type == Character.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0) : new Variable(field.getName(), (int) field.getChar(instance));
            } catch (IllegalAccessException e26) {
                e26.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused17) {
                return new Variable(field.getName(), c(instance, field.getName()), Variable.a.Char);
            }
        }
        if (type == Character.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0);
                }
                Character ch3 = (Character) field.get(instance);
                return new Variable(field.getName(), (int) (ch3 != null ? ch3.charValue() : (char) 0));
            } catch (IllegalAccessException e27) {
                e27.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused18) {
                return new Variable(field.getName(), c(instance, field.getName()), Variable.a.Char);
            }
        }
        if (type == Short.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0) : new Variable(field.getName(), (int) field.getShort(instance));
            } catch (IllegalAccessException e28) {
                e28.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused19) {
                return new Variable(field.getName(), h(instance, field.getName()), Variable.a.Short);
            }
        }
        if (type == Short.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0);
                }
                Short sh3 = (Short) field.get(instance);
                return new Variable(field.getName(), (int) (sh3 != null ? sh3.shortValue() : (short) 0));
            } catch (IllegalAccessException e29) {
                e29.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused20) {
                return new Variable(field.getName(), h(instance, field.getName()), Variable.a.Short);
            }
        }
        if (type == Byte.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0) : new Variable(field.getName(), (int) field.getByte(instance));
            } catch (IllegalAccessException e30) {
                e30.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused21) {
                return new Variable(field.getName(), b(instance, field.getName()), Variable.a.Byte);
            }
        }
        if (type == Byte.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0);
                }
                Byte b11 = (Byte) field.get(instance);
                return new Variable(field.getName(), (int) (b11 != null ? b11.byteValue() : (byte) 0));
            } catch (IllegalAccessException e31) {
                e31.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused22) {
                return new Variable(field.getName(), b(instance, field.getName()), Variable.a.Byte);
            }
        }
        if (type == Long.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0L) : new Variable(field.getName(), field.getLong(instance));
            } catch (IllegalAccessException e32) {
                e32.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused23) {
                return new Variable(field.getName(), g(instance, field.getName()));
            }
        }
        if (type == Long.class) {
            try {
                if (instance == null) {
                    return new Variable(field.getName(), 0L);
                }
                Long l11 = (Long) field.get(instance);
                return new Variable(field.getName(), l11 != null ? l11.longValue() : 0L);
            } catch (IllegalAccessException e33) {
                e33.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused24) {
                return new Variable(field.getName(), g(instance, field.getName()));
            }
        }
        if (type == Double.TYPE) {
            try {
                return instance == null ? new Variable(field.getName(), 0.0d) : new Variable(field.getName(), field.getDouble(instance));
            } catch (IllegalAccessException e34) {
                e34.printStackTrace();
                return null;
            } catch (IllegalArgumentException unused25) {
                return new Variable(field.getName(), d(instance, field.getName()));
            }
        }
        if (type != Double.class) {
            return null;
        }
        try {
            if (instance == null) {
                return new Variable(field.getName(), 0.0d);
            }
            Double d11 = (Double) field.get(instance);
            return new Variable(field.getName(), d11 != null ? d11.doubleValue() : 0.0d);
        } catch (IllegalAccessException e35) {
            e35.printStackTrace();
            return null;
        } catch (IllegalArgumentException unused26) {
            return new Variable(field.getName(), d(instance, field.getName()));
        }
    }
}
