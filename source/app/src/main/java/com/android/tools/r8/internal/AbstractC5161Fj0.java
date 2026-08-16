package com.android.tools.r8.internal;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class AbstractC5161Fj0 implements InterfaceC7294fi, Serializable {

    public final InterfaceC7294fi f40295b;

    public AbstractC5161Fj0(InterfaceC7294fi interfaceC7294fi) {
        this.f40295b = interfaceC7294fi;
        if (interfaceC7294fi != null && interfaceC7294fi.getContext() != C5527Lt.f42094b) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    public abstract InterfaceC7294fi a(C8805ol0 c8805ol0, C8805ol0 c8805ol02);

    public void a() {
    }

    public abstract Object b(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StackTraceElement] */
    public final String b() {
        int i10;
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        StringBuilder sb2 = new StringBuilder("Continuation at ");
        InterfaceC7464gj interfaceC7464gj = (InterfaceC7464gj) getClass().getAnnotation(InterfaceC7464gj.class);
        String str2 = null;
        if (interfaceC7464gj != null) {
            int v10 = interfaceC7464gj.v();
            if (v10 <= 1) {
                try {
                    Field declaredField = getClass().getDeclaredField("label");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this);
                    Integer num = obj instanceof Integer ? (Integer) obj : null;
                    i10 = (num != null ? num.intValue() : 0) - 1;
                } catch (Exception unused) {
                    i10 = -1;
                }
                int i11 = i10 >= 0 ? interfaceC7464gj.l()[i10] : -1;
                NX nx = OX.f42912b;
                if (nx == null) {
                    try {
                        NX nx2 = new NX(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                        OX.f42912b = nx2;
                        nx = nx2;
                    } catch (Exception unused2) {
                        nx = OX.f42911a;
                        OX.f42912b = nx;
                    }
                }
                if (nx != OX.f42911a && (method = nx.f42627a) != null && (invoke = method.invoke(getClass(), null)) != null && (method2 = nx.f42628b) != null && (invoke2 = method2.invoke(invoke, null)) != null) {
                    Method method3 = nx.f42629c;
                    String invoke3 = method3 != null ? method3.invoke(invoke2, null) : null;
                    if (invoke3 instanceof String) {
                        str2 = invoke3;
                    }
                }
                if (str2 == null) {
                    str = interfaceC7464gj.c();
                } else {
                    str = str2 + '/' + interfaceC7464gj.c();
                }
                str2 = new StackTraceElement(str, interfaceC7464gj.m(), interfaceC7464gj.f(), i11);
            } else {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v10 + ". Please update the Kotlin standard library.").toString());
            }
        }
        if (str2 == null) {
            str2 = getClass().getName();
        }
        sb2.append((Object) str2);
        return sb2.toString();
    }

    @Override
    public final C5527Lt getContext() {
        return C5527Lt.f42094b;
    }

    public final String toString() {
        if (this.f40295b != null) {
            return b();
        }
        AbstractC9618te0.f52649a.getClass();
        String obj = getClass().getGenericInterfaces()[0].toString();
        if (obj.startsWith(kotlin.jvm.internal.o0.f95760a)) {
            obj = obj.substring(21);
        }
        GJ.b(obj, "renderLambdaToString(...)");
        return obj;
    }

    @Override
    public final void a(Object obj) {
        InterfaceC7294fi interfaceC7294fi = this;
        while (true) {
            AbstractC5161Fj0 abstractC5161Fj0 = (AbstractC5161Fj0) interfaceC7294fi;
            InterfaceC7294fi interfaceC7294fi2 = abstractC5161Fj0.f40295b;
            GJ.a(interfaceC7294fi2);
            try {
                obj = abstractC5161Fj0.b(obj);
                if (obj == EnumC7960ji.f49313b) {
                    return;
                }
            } catch (Throwable th2) {
                obj = new C5219Gj0(th2);
            }
            if (!(interfaceC7294fi2 instanceof AbstractC5161Fj0)) {
                interfaceC7294fi2.a(obj);
                return;
            }
            interfaceC7294fi = interfaceC7294fi2;
        }
    }
}
