package com.android.tools.r8.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

public final class C5207Ge0 extends AbstractC5033De0 {

    public static final HashMap f40546e;

    public final Constructor f40547b;

    public final Object[] f40548c;

    public final HashMap f40549d;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(Byte.TYPE, (byte) 0);
        hashMap.put(Short.TYPE, (short) 0);
        hashMap.put(Integer.TYPE, 0);
        hashMap.put(Long.TYPE, 0L);
        hashMap.put(Float.TYPE, Float.valueOf(0.0f));
        hashMap.put(Double.TYPE, Double.valueOf(0.0d));
        hashMap.put(Character.TYPE, (char) 0);
        hashMap.put(Boolean.TYPE, Boolean.FALSE);
        f40546e = hashMap;
    }

    public C5207Ge0(Class cls, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f40549d = new HashMap();
        AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
        Constructor a10 = abstractC9952ve0.a(cls);
        this.f40547b = a10;
        AbstractC10453ye0.a((AccessibleObject) a10);
        String[] b10 = abstractC9952ve0.b(cls);
        for (int i10 = 0; i10 < b10.length; i10++) {
            this.f40549d.put(b10[i10], Integer.valueOf(i10));
        }
        Class<?>[] parameterTypes = this.f40547b.getParameterTypes();
        this.f40548c = new Object[parameterTypes.length];
        for (int i11 = 0; i11 < parameterTypes.length; i11++) {
            this.f40548c[i11] = f40546e.get(parameterTypes[i11]);
        }
    }

    @Override
    public final Object a(Object obj) {
        Object[] objArr = (Object[]) obj;
        try {
            return this.f40547b.newInstance(objArr);
        } catch (IllegalAccessException e10) {
            AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e10);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw new RuntimeException("Failed to invoke constructor '" + AbstractC10453ye0.a(this.f40547b) + "' with args " + Arrays.toString(objArr), e);
        } catch (InstantiationException e12) {
            e = e12;
            throw new RuntimeException("Failed to invoke constructor '" + AbstractC10453ye0.a(this.f40547b) + "' with args " + Arrays.toString(objArr), e);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException("Failed to invoke constructor '" + AbstractC10453ye0.a(this.f40547b) + "' with args " + Arrays.toString(objArr), e13.getCause());
        }
    }

    @Override
    public final void a(Object obj, C8240lL c8240lL, C4975Ce0 c4975Ce0) {
        Object[] objArr = (Object[]) obj;
        Integer num = (Integer) this.f40549d.get(c4975Ce0.f39294c);
        if (num != null) {
            int intValue = num.intValue();
            Object a10 = c4975Ce0.f39299h.a(c8240lL);
            if (a10 == null && c4975Ce0.f39302k) {
                throw new C7574hL("null is not allowed as value for record component '" + c4975Ce0.f39294c + "' of primitive type; at path " + c8240lL.i());
            }
            objArr[intValue] = a10;
            return;
        }
        throw new IllegalStateException("Could not find the index in the constructor '" + AbstractC10453ye0.a(this.f40547b) + "' for field with name '" + c4975Ce0.f39294c + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
    }

    @Override
    public final Object a() {
        return (Object[]) this.f40548c.clone();
    }
}
