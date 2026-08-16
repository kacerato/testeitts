package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C6535b60 extends AbstractC7034e60 {

    public static final boolean f46705e = true;

    public final HashSet f46706d;

    public C6535b60(MN mn2, HashSet hashSet) {
        super(mn2, null);
        if (!f46705e && hashSet.isEmpty()) {
            throw new AssertionError();
        }
        this.f46706d = hashSet;
    }

    @Override
    public final void b(StringBuilder sb2) {
        MN mn2 = this.f47606a;
        if (IN.f41068a != mn2.f42285b) {
            sb2.append("# context: ");
            sb2.append(mn2.f42285b.a());
            sb2.append('\n');
        }
        if (!JN.f41385b.equals(mn2.f42286c)) {
            String c10 = AbstractC5626Nk0.c(mn2.f42286c.f41387a);
            sb2.append("# description: ");
            sb2.append(c10);
            sb2.append('\n');
        }
        sb2.append("-keepattributes");
        sb2.append(" ");
        ArrayList arrayList = new ArrayList(this.f46706d);
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ((KM) obj).compareTo((KM) obj2);
            }
        });
        sb2.append(((KM) arrayList.get(0)).f41655b);
        for (int i10 = 1; i10 < arrayList.size(); i10++) {
            sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            sb2.append(((KM) arrayList.get(i10)).f41655b);
        }
    }

    @Override
    public final List c() {
        throw new IllegalStateException();
    }

    @Override
    public final void c(StringBuilder sb2) {
        throw new IllegalStateException();
    }

    @Override
    public final String b() {
        return "-keepattributes";
    }

    @Override
    public final void b(StringBuilder sb2, PM pm2) {
        throw new IllegalStateException();
    }
}
