package com.android.tools.r8.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public final class C6082Vh implements InterfaceC10529z30 {

    public final Constructor f45123a;

    public C6082Vh(Constructor constructor) {
        this.f45123a = constructor;
    }

    @Override
    public final Object a() {
        try {
            return this.f45123a.newInstance(null);
        } catch (IllegalAccessException e10) {
            AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Failed to invoke constructor '" + AbstractC10453ye0.a(this.f45123a) + "' with no args", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Failed to invoke constructor '" + AbstractC10453ye0.a(this.f45123a) + "' with no args", e12.getCause());
        }
    }
}
