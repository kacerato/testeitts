package com.android.tools.r8.internal;

import com.google.protobuf.C12667d1;
import java.lang.reflect.Method;

public final class C9680tz extends C9346rz {

    public final Method f52749f;

    public final Method f52750g;

    public C9680tz(C5685Ol c5685Ol, String str, Class cls, Class cls2, String str2) {
        super(c5685Ol, str, cls, cls2, str2);
        this.f52749f = AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str, C12667d1.f69078d), new Class[0]);
        AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, C12667d1.f69078d), new Class[0]);
        this.f52750g = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("set", str, C12667d1.f69078d), new Class[]{AbstractC8373m8.class});
    }

    @Override
    public final Object a(AbstractC10181wz abstractC10181wz) {
        return AbstractC10181wz.access$1100(this.f52749f, abstractC10181wz, new Object[0]);
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, Object obj) {
        if (obj instanceof AbstractC8373m8) {
            AbstractC10181wz.access$1100(this.f52750g, abstractC7345fz, new Object[]{obj});
        } else {
            super.a(abstractC7345fz, obj);
        }
    }
}
