package com.android.tools.r8.internal;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public final class C5880Rv0 extends AbstractC6111Vv0 {

    public final Method f44022b;

    public final Object f44023c;

    public C5880Rv0(Method method, Object obj) {
        this.f44022b = method;
        this.f44023c = obj;
    }

    @Override
    public final Object a(Class cls) {
        int modifiers = cls.getModifiers();
        String concat = Modifier.isInterface(modifiers) ? "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName()) : Modifier.isAbstract(modifiers) ? "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName()) : null;
        if (concat == null) {
            return this.f44022b.invoke(this.f44023c, cls);
        }
        throw new AssertionError((Object) "UnsafeAllocator is used for non-instantiable type: ".concat(concat));
    }
}
