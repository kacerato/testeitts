package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC5384Jf0;
import com.android.tools.r8.internal.C5371Jb;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.kotlin.C10789h1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11011v {

    public static final M0 f56080e = new M0(0, 0, false);

    public com.android.tools.r8.naming.mappinginformation.b f56081a = null;

    public final C10996s f56082b = new C10996s();

    public C10996s f56083c;

    public final C8570nJ f56084d;

    public C11011v(C8570nJ c8570nJ) {
        this.f56084d = c8570nJ;
    }

    public final void a(C10912b c10912b) {
        this.f56083c = new C10996s();
        com.android.tools.r8.naming.mappinginformation.b bVar = c10912b.f55828d.isEmpty() ? null : (com.android.tools.r8.naming.mappinginformation.b) c10912b.f55828d.iterator().next();
        if (bVar != null) {
            MapVersion s10 = bVar.s();
            if (AbstractC5384Jf0.a(s10) && !s10.isUnknown()) {
                com.android.tools.r8.naming.mappinginformation.b bVar2 = this.f56081a;
                if (bVar2 == null) {
                    this.f56081a = bVar;
                } else {
                    this.f56081a = bVar.b(bVar2).b();
                }
                Iterator it = c10912b.f55825a.values().iterator();
                while (it.hasNext()) {
                    a(c10912b, (C10957k) it.next());
                }
                C10996s c10996s = this.f56082b;
                C10996s c10996s2 = this.f56083c;
                c10996s.f56056f.addAll(c10912b.f55830f);
                c10996s.a(c10996s2, c10912b);
                c10996s.c(c10996s2, c10912b);
                c10996s.b(c10996s2, c10912b);
                return;
            }
            throw new MappingComposeException("Composition of mapping files supported from map version " + AbstractC5384Jf0.f41450a.getName() + ".");
        }
        throw new MappingComposeException("Composition of mapping files supported from map version 2.2.");
    }

    public final void a(C10912b c10912b, C10957k c10957k) {
        String str = c10957k.f55951a;
        String str2 = c10957k.f55952b;
        r rVar = new r(str, str2, this.f56082b, this.f56083c, this.f56084d);
        r rVar2 = (r) this.f56083c.f56051a.put(str2, rVar);
        if (rVar2 == null) {
            List<com.android.tools.r8.naming.mappinginformation.e> c10 = c10957k.c();
            if (c10 != null) {
                rVar.f56039f.addAll(c10);
            }
            rVar.a(c10912b, c10957k);
            rVar.b(c10912b, c10957k);
            return;
        }
        throw new MappingComposeException("Duplicate class mapping. Both '" + rVar2.f56034a + "' and '" + str + "' maps to '" + str2 + "'.");
    }

    public final String a() {
        ArrayList arrayList = new ArrayList(this.f56082b.f56051a.values());
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((r) obj).a();
            }
        }));
        final StringBuilder sb2 = new StringBuilder();
        this.f56082b.f56056f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11011v.a(StringBuilder.this, (String) obj);
            }
        });
        if (this.f56081a != null) {
            sb2.append("# ");
            sb2.append(this.f56081a.r());
            sb2.append("\n");
        }
        C5371Jb c5371Jb = new C5371Jb(new C10789h1(sb2));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((r) obj).a(c5371Jb);
        }
        return sb2.toString();
    }

    public static void a(StringBuilder sb2, String str) {
        sb2.append(str);
        sb2.append("\n");
    }
}
