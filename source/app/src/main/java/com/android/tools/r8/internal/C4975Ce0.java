package com.android.tools.r8.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class C4975Ce0 {

    public final String f39292a;

    public final Field f39293b;

    public final String f39294c;

    public final boolean f39295d;

    public final boolean f39296e;

    public final Method f39297f;

    public final boolean f39298g;

    public final AbstractC9997vt0 f39299h;

    public final C5713Oz f39300i;

    public final C5009Cu0 f39301j;

    public final boolean f39302k;

    public final boolean f39303l;

    public C4975Ce0(String str, Field field, boolean z10, boolean z11, Method method, boolean z12, AbstractC9997vt0 abstractC9997vt0, C5713Oz c5713Oz, C5009Cu0 c5009Cu0, boolean z13, boolean z14) {
        this.f39297f = method;
        this.f39298g = z12;
        this.f39299h = abstractC9997vt0;
        this.f39300i = c5713Oz;
        this.f39301j = c5009Cu0;
        this.f39302k = z13;
        this.f39303l = z14;
        this.f39292a = str;
        this.f39293b = field;
        this.f39294c = field.getName();
        this.f39295d = z10;
        this.f39296e = z11;
    }

    public final void a(C9075qL c9075qL, Object obj) {
        Object obj2;
        if (this.f39295d) {
            Method method = this.f39297f;
            if (method != null) {
                try {
                    obj2 = method.invoke(obj, null);
                } catch (InvocationTargetException e10) {
                    throw new C7073eL(AbstractC4917Be0.a("Accessor ", AbstractC10453ye0.a((AccessibleObject) this.f39297f, false), " threw exception"), e10.getCause());
                }
            } else {
                obj2 = this.f39293b.get(obj);
            }
            if (obj2 == obj) {
                return;
            }
            c9075qL.b(this.f39292a);
            (this.f39298g ? this.f39299h : new C10331xt0(this.f39300i, this.f39299h, this.f39301j.f39379b)).a(c9075qL, obj2);
        }
    }
}
