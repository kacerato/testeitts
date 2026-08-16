package P8;

import com.itsmagic.engine.Engines.Utils.Variable;
import java.lang.reflect.Field;

public class b {
    public static boolean a(Object instance, Field field, Variable global_variable) {
        Class<?> type = field.getType();
        if (!type.isPrimitive()) {
            if (type == Float.class) {
                try {
                    field.set(instance, new Float(global_variable.float_value));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return true;
            }
            if (type == Integer.class) {
                try {
                    field.set(instance, new Integer(global_variable.int_value));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                return true;
            }
            if (type == Boolean.class) {
                try {
                    field.set(instance, new Boolean(global_variable.booolean_value.booleanValue()));
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                return true;
            }
            if (type == Character.class) {
                try {
                    field.set(instance, new Character((char) global_variable.int_value));
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
                return true;
            }
            if (type == Short.class) {
                try {
                    field.set(instance, new Short((short) global_variable.int_value));
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                return true;
            }
            if (type == Byte.class) {
                try {
                    field.set(instance, new Byte((byte) global_variable.int_value));
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
                return true;
            }
            if (type == Long.class) {
                try {
                    field.set(instance, new Long(global_variable.long_value));
                } catch (Exception e16) {
                    e16.printStackTrace();
                }
                return true;
            }
            if (type == Double.class) {
                try {
                    field.set(instance, new Double(global_variable.double_value));
                } catch (Exception e17) {
                    e17.printStackTrace();
                }
                return true;
            }
            if (type != String.class) {
                return false;
            }
            try {
                field.set(instance, global_variable.str_value);
            } catch (IllegalAccessException e18) {
                e18.printStackTrace();
            } catch (IllegalArgumentException unused) {
                j(instance, field.getName(), global_variable.str_value);
            }
            return true;
        }
        if (type == Float.TYPE) {
            try {
                field.setFloat(instance, global_variable.float_value);
            } catch (IllegalAccessException e19) {
                e19.printStackTrace();
            } catch (IllegalArgumentException unused2) {
                f(instance, field.getName(), global_variable.float_value);
            }
            return true;
        }
        if (type == Float.class) {
            try {
                field.set(instance, new Float(global_variable.float_value));
            } catch (Exception e20) {
                e20.printStackTrace();
            }
            return true;
        }
        if (type == Integer.TYPE) {
            try {
                field.setInt(instance, global_variable.int_value);
            } catch (IllegalAccessException e21) {
                e21.printStackTrace();
            } catch (IllegalArgumentException unused3) {
                g(instance, field.getName(), global_variable.int_value);
            }
            return true;
        }
        if (type == Integer.class) {
            try {
                field.set(instance, new Integer(global_variable.int_value));
            } catch (Exception e22) {
                e22.printStackTrace();
            }
            return true;
        }
        if (type == String.class) {
            try {
                field.set(instance, global_variable.str_value);
            } catch (IllegalAccessException e23) {
                e23.printStackTrace();
            } catch (IllegalArgumentException unused4) {
                j(instance, field.getName(), global_variable.str_value);
            }
            return true;
        }
        if (type == Boolean.TYPE) {
            try {
                field.setBoolean(instance, global_variable.booolean_value.booleanValue());
            } catch (IllegalAccessException e24) {
                e24.printStackTrace();
            } catch (IllegalArgumentException unused5) {
                b(instance, field.getName(), global_variable.booolean_value.booleanValue());
            }
            return true;
        }
        if (type == Boolean.class) {
            try {
                field.set(instance, new Boolean(global_variable.booolean_value.booleanValue()));
            } catch (Exception e25) {
                e25.printStackTrace();
            }
            return true;
        }
        if (type == Character.TYPE) {
            try {
                field.setChar(instance, (char) global_variable.int_value);
            } catch (IllegalAccessException e26) {
                e26.printStackTrace();
            } catch (IllegalArgumentException unused6) {
                d(instance, field.getName(), (char) global_variable.int_value);
            }
            return true;
        }
        if (type == Character.class) {
            try {
                field.set(instance, new Character((char) global_variable.int_value));
            } catch (Exception e27) {
                e27.printStackTrace();
            }
            return true;
        }
        if (type == Short.TYPE) {
            try {
                field.setShort(instance, (short) global_variable.int_value);
            } catch (IllegalAccessException e28) {
                e28.printStackTrace();
            } catch (IllegalArgumentException unused7) {
                i(instance, field.getName(), (short) global_variable.int_value);
            }
            return true;
        }
        if (type == Short.class) {
            try {
                field.set(instance, new Short((short) global_variable.int_value));
            } catch (Exception e29) {
                e29.printStackTrace();
            }
            return true;
        }
        if (type == Byte.TYPE) {
            try {
                field.setByte(instance, (byte) global_variable.int_value);
            } catch (IllegalAccessException e30) {
                e30.printStackTrace();
            } catch (IllegalArgumentException unused8) {
                c(instance, field.getName(), (byte) global_variable.int_value);
            }
            return true;
        }
        if (type == Byte.class) {
            try {
                field.set(instance, new Byte((byte) global_variable.int_value));
            } catch (Exception e31) {
                e31.printStackTrace();
            }
            return true;
        }
        if (type == Long.TYPE) {
            try {
                field.setLong(instance, global_variable.long_value);
            } catch (IllegalAccessException e32) {
                e32.printStackTrace();
            } catch (IllegalArgumentException unused9) {
                h(instance, field.getName(), global_variable.long_value);
            }
            return true;
        }
        if (type == Long.class) {
            try {
                field.set(instance, new Long(global_variable.long_value));
            } catch (Exception e33) {
                e33.printStackTrace();
            }
            return true;
        }
        if (type == Double.TYPE) {
            try {
                field.setDouble(instance, global_variable.double_value);
            } catch (IllegalAccessException e34) {
                e34.printStackTrace();
            } catch (IllegalArgumentException unused10) {
                e(instance, field.getName(), global_variable.double_value);
            }
            return true;
        }
        if (type != Double.class) {
            return false;
        }
        try {
            field.set(instance, new Double(global_variable.double_value));
        } catch (Exception e35) {
            e35.printStackTrace();
        }
        return true;
    }

    public static void b(Object instance, String fieldName, boolean value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setBoolean(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine boolean of a lost class type");
    }

    public static void c(Object instance, String fieldName, byte value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setByte(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine byte of a lost class type");
    }

    public static void d(Object instance, String fieldName, char value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setChar(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine char of a lost class type");
    }

    public static void e(Object instance, String fieldName, double value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setDouble(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine double of a lost class type");
    }

    public static void f(Object instance, String fieldName, float value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setFloat(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine float of a lost class type");
    }

    public static void g(Object instance, String fieldName, int value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setInt(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine int of a lost class type");
    }

    public static void h(Object instance, String fieldName, long value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setLong(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine long of a lost class type");
    }

    public static void i(Object instance, String fieldName, short value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.setShort(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine short of a lost class type");
    }

    public static void j(Object instance, String fieldName, String value) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.getName().equalsIgnoreCase(fieldName)) {
                try {
                    field.set(instance, value);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        System.out.println("Failed to determine String of a lost class type");
    }
}
