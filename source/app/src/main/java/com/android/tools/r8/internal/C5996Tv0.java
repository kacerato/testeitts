package com.android.tools.r8.internal;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public final class C5996Tv0 extends AbstractC6111Vv0 {

    public final Method f44613b;

    public C5996Tv0(Method method) {
        this.f44613b = method;
    }

    @Override
    public final Object a(Class cls) {
        int modifiers = cls.getModifiers();
        String concat = Modifier.isInterface(modifiers) ? "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName()) : Modifier.isAbstract(modifiers) ? "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName()) : null;
        if (concat == null) {
            return this.f44613b.invoke(null, cls, Object.class);
        }
        throw new AssertionError((Object) "UnsafeAllocator is used for non-instantiable type: ".concat(concat));
    }
}
