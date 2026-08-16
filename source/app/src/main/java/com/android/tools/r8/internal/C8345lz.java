package com.android.tools.r8.internal;

import com.ardor3d.util.export.xml.XMLExporter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;

public final class C8345lz extends C8679nz {

    public final C5280Hl f50164c;

    public final Method f50165d;

    public final Method f50166e;

    public final boolean f50167f;

    public final Method f50168g;

    public final Method f50169h;

    public final Method f50170i;

    public final Method f50171j;

    public C8345lz(C5685Ol c5685Ol, String str, Class cls, Class cls2) {
        super(str, cls, cls2);
        this.f50164c = c5685Ol.f();
        this.f50165d = AbstractC10181wz.access$1000(this.f51126a, "valueOf", new Class[]{C5454Kl.class});
        this.f50166e = AbstractC10181wz.access$1000(this.f51126a, "getValueDescriptor", new Class[0]);
        boolean z10 = c5685Ol.f43019e.e() == 3;
        this.f50167f = z10;
        if (z10) {
            String a10 = AbstractC4917Be0.a("get", str, XMLExporter.ELEMENT_VALUE);
            Class<Integer> cls3 = Integer.TYPE;
            this.f50168g = AbstractC10181wz.access$1000(cls, a10, new Class[]{cls3});
            this.f50169h = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("get", str, XMLExporter.ELEMENT_VALUE), new Class[]{cls3});
            this.f50170i = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("set", str, XMLExporter.ELEMENT_VALUE), new Class[]{cls3, cls3});
            this.f50171j = AbstractC10181wz.access$1000(cls2, AbstractC4917Be0.a("add", str, XMLExporter.ELEMENT_VALUE), new Class[]{cls3});
        }
    }

    @Override
    public final Object a(int i10, AbstractC10181wz abstractC10181wz) {
        if (this.f50167f) {
            return this.f50164c.b(((Integer) AbstractC10181wz.access$1100(this.f50168g, abstractC10181wz, new Object[]{Integer.valueOf(i10)})).intValue());
        }
        return AbstractC10181wz.access$1100(this.f50166e, super.a(i10, abstractC10181wz), new Object[0]);
    }

    @Override
    public final Object b(AbstractC7345fz abstractC7345fz, int i10) {
        if (this.f50167f) {
            return this.f50164c.b(((Integer) AbstractC10181wz.access$1100(this.f50169h, abstractC7345fz, new Object[]{Integer.valueOf(i10)})).intValue());
        }
        return AbstractC10181wz.access$1100(this.f50166e, super.b(abstractC7345fz, i10), new Object[0]);
    }

    @Override
    public final Object c(AbstractC7345fz abstractC7345fz) {
        ArrayList arrayList = new ArrayList();
        int b10 = b(abstractC7345fz);
        for (int i10 = 0; i10 < b10; i10++) {
            arrayList.add(b(abstractC7345fz, i10));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public final Object d(AbstractC10181wz abstractC10181wz) {
        ArrayList arrayList = new ArrayList();
        int c10 = c(abstractC10181wz);
        for (int i10 = 0; i10 < c10; i10++) {
            arrayList.add(a(i10, abstractC10181wz));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, int i10, Object obj) {
        if (this.f50167f) {
            AbstractC10181wz.access$1100(this.f50170i, abstractC7345fz, new Object[]{Integer.valueOf(i10), Integer.valueOf(((C5454Kl) obj).f41756c.f52682d)});
        } else {
            super.a(abstractC7345fz, i10, AbstractC10181wz.access$1100(this.f50165d, null, new Object[]{obj}));
        }
    }

    @Override
    public final void b(AbstractC7345fz abstractC7345fz, Object obj) {
        if (this.f50167f) {
            AbstractC10181wz.access$1100(this.f50171j, abstractC7345fz, new Object[]{Integer.valueOf(((C5454Kl) obj).f41756c.f52682d)});
        } else {
            super.b(abstractC7345fz, AbstractC10181wz.access$1100(this.f50165d, null, new Object[]{obj}));
        }
    }
}
