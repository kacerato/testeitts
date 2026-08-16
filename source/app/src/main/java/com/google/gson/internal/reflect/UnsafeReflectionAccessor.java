package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
final class UnsafeReflectionAccessor extends ReflectionAccessor {
    private static Class unsafeClass;
    private final Object theUnsafe = getUnsafeInstance();
    private final Field overrideField = getOverrideField();

    @Override
    public void makeAccessible(AccessibleObject ao) {
        boolean success = makeAccessibleWithUnsafe(ao);
        if (!success) {
            try {
                ao.setAccessible(true);
            } catch (SecurityException e10) {
                throw new JsonIOException("Gson couldn't modify fields for " + ((Object) ao) + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
            }
        }
    }

    boolean makeAccessibleWithUnsafe(AccessibleObject ao) {
        if (this.theUnsafe != null && this.overrideField != null) {
            try {
                Method method = unsafeClass.getMethod("objectFieldOffset", Field.class);
                long overrideOffset = ((Long) method.invoke(this.theUnsafe, this.overrideField)).longValue();
                Method putBooleanMethod = unsafeClass.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
                putBooleanMethod.invoke(this.theUnsafe, ao, Long.valueOf(overrideOffset), true);
                return true;
            } catch (Exception e10) {
                return false;
            }
        }
        return false;
    }

    private static Object getUnsafeInstance() {
        try {
            unsafeClass = Class.forName("sun.misc.Unsafe");
            Field unsafeField = unsafeClass.getDeclaredField("theUnsafe");
            unsafeField.setAccessible(true);
            return unsafeField.get(null);
        } catch (Exception e10) {
            return null;
        }
    }

    private static Field getOverrideField() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e10) {
            return null;
        }
    }
}
