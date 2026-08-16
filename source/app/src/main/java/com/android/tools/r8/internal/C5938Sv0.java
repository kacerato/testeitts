package com.android.tools.r8.internal;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public final class C5938Sv0 extends AbstractC6111Vv0 {

    public final Method f44338b;

    public final int f44339c;

    public C5938Sv0(Method method, int i10) {
        this.f44338b = method;
        this.f44339c = i10;
    }

    @Override
    public final Object a(Class cls) {
        int modifiers = cls.getModifiers();
        String concat = Modifier.isInterface(modifiers) ? "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName()) : Modifier.isAbstract(modifiers) ? "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName()) : null;
        if (concat == null) {
            return this.f44338b.invoke(null, cls, Integer.valueOf(this.f44339c));
        }
        throw new AssertionError((Object) "UnsafeAllocator is used for non-instantiable type: ".concat(concat));
    }
}
