package com.android.tools.r8.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class C6173Wy {

    public final AbstractC6001Ty f45590a;

    public final Object f45591b;

    public final AbstractC6287Yy f45592c;

    public final C6116Vy f45593d;

    public final Method f45594e;

    public C6173Wy(AbstractC6001Ty abstractC6001Ty, Object obj, AbstractC6287Yy abstractC6287Yy, C6116Vy c6116Vy, Class cls) {
        if (abstractC6001Ty == null) {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (c6116Vy.f45237c == EnumC5942Sx0.f44346g && abstractC6287Yy == null) {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        }
        this.f45590a = abstractC6001Ty;
        this.f45591b = obj;
        this.f45592c = abstractC6287Yy;
        this.f45593d = c6116Vy;
        if (!PI.class.isAssignableFrom(cls)) {
            this.f45594e = null;
            return;
        }
        try {
            this.f45594e = cls.getMethod("valueOf", Integer.TYPE);
        } catch (NoSuchMethodException e10) {
            String name = cls.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 52);
            sb2.append("Generated message class \"");
            sb2.append(name);
            sb2.append("\" missing method \"valueOf\".");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    public final Object a(Object obj) {
        if (this.f45593d.f45237c.f44348b != EnumC6058Ux0.f44919j) {
            return obj;
        }
        try {
            return this.f45594e.invoke(null, (Integer) obj);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public final Object b(Object obj) {
        return this.f45593d.f45237c.f44348b == EnumC6058Ux0.f44919j ? Integer.valueOf(((PI) obj).getNumber()) : obj;
    }
}
