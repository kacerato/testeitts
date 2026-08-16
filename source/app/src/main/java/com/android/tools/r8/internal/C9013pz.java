package com.android.tools.r8.internal;

import com.ardor3d.util.export.xml.XMLExporter;
import java.lang.reflect.Method;

public final class C9013pz extends C9346rz {

    public final C5280Hl f51676f;

    public final Method f51677g;

    public final Method f51678h;

    public final boolean f51679i;

    public final Method f51680j;

    public final Method f51681k;

    public final Method f51682l;

    public C9013pz(C5685Ol c5685Ol, String str, Class cls, Class cls2, String str2) {
        super(c5685Ol, str, cls, cls2, str2);
        this.f51676f = c5685Ol.f();
        this.f51677g = AbstractC10181wz.access$1000(this.f52234a, "valueOf", new Class[]{C5454Kl.class});
        this.f51678h = AbstractC10181wz.access$1000(this.f52234a, "getValueDescriptor", new Class[0]);
        boolean z10 = c5685Ol.f43019e.e() == 3;
        this.f51679i = z10;
        if (z10) {
            this.f51680j = AbstractC10181wz.access$1000(cls, AbstractC4917Be0.a("get", str, XMLExporter.ELEMENT_VALUE), new Class[0]);
            this.f51681k = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, XMLExporter.ELEMENT_VALUE), new Class[0]);
            this.f51682l = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("set", str, XMLExporter.ELEMENT_VALUE), new Class[]{Integer.TYPE});
        }
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, Object obj) {
        if (this.f51679i) {
            AbstractC10181wz.access$1100(this.f51682l, abstractC7345fz, new Object[]{Integer.valueOf(((C5454Kl) obj).f41756c.f52682d)});
        } else {
            super.a(abstractC7345fz, AbstractC10181wz.access$1100(this.f51677g, null, new Object[]{obj}));
        }
    }

    @Override
    public final Object c(AbstractC7345fz abstractC7345fz) {
        if (!this.f51679i) {
            return AbstractC10181wz.access$1100(this.f51678h, super.c(abstractC7345fz), new Object[0]);
        }
        return this.f51676f.b(((Integer) AbstractC10181wz.access$1100(this.f51681k, abstractC7345fz, new Object[0])).intValue());
    }

    @Override
    public final Object d(AbstractC10181wz abstractC10181wz) {
        if (!this.f51679i) {
            return AbstractC10181wz.access$1100(this.f51678h, super.d(abstractC10181wz), new Object[0]);
        }
        return this.f51676f.b(((Integer) AbstractC10181wz.access$1100(this.f51680j, abstractC10181wz, new Object[0])).intValue());
    }
}
