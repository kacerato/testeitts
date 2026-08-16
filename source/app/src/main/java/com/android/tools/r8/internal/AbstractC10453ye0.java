package com.android.tools.r8.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import yd.C16181m;

public abstract class AbstractC10453ye0 {

    public static final AbstractC9952ve0 f54092a;

    static {
        AbstractC9952ve0 c10119we0;
        try {
            c10119we0 = new C10286xe0();
        } catch (NoSuchMethodException unused) {
            c10119we0 = new C10119we0();
        }
        f54092a = c10119we0;
    }

    public static void a(AccessibleObject accessibleObject) {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e10) {
            throw new C7073eL(AbstractC4917Be0.a("Failed making ", a(accessibleObject, false), " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type."), e10);
        }
    }

    public static String a(AccessibleObject accessibleObject, boolean z10) {
        String str;
        if (accessibleObject instanceof Field) {
            StringBuilder sb2 = new StringBuilder("field '");
            Field field = (Field) accessibleObject;
            sb2.append(field.getDeclaringClass().getName() + C16181m.f130230g + field.getName());
            sb2.append("'");
            str = sb2.toString();
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb3 = new StringBuilder(method.getName());
            a(method, sb3);
            str = "method '" + method.getDeclaringClass().getName() + C16181m.f130230g + sb3.toString() + "'";
        } else if (accessibleObject instanceof Constructor) {
            str = "constructor '" + a((Constructor) accessibleObject) + "'";
        } else {
            str = "<unknown AccessibleObject> " + accessibleObject.toString();
        }
        if (!z10 || !Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    public static String a(Constructor constructor) {
        StringBuilder sb2 = new StringBuilder(constructor.getDeclaringClass().getName());
        a(constructor, sb2);
        return sb2.toString();
    }

    public static void a(AccessibleObject accessibleObject, StringBuilder sb2) {
        Class<?>[] parameterTypes;
        sb2.append('(');
        if (accessibleObject instanceof Method) {
            parameterTypes = ((Method) accessibleObject).getParameterTypes();
        } else {
            parameterTypes = ((Constructor) accessibleObject).getParameterTypes();
        }
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(parameterTypes[i10].getSimpleName());
        }
        sb2.append(')');
    }
}
