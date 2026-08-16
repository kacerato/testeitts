package com.android.tools.r8.dex;

import com.android.tools.r8.dex.C4314n;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C10526z20;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.D20;
import java.io.UTFDataFormatException;
import java.util.Comparator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

public class C4314n {

    public static final boolean f35895b = true;

    public final D20 f35896a = new D20();

    public C4314n() {
        boolean z10 = f35895b;
        if (!z10 && "~~~".charAt(0) != '~') {
            throw new AssertionError();
        }
        if (!z10 && "~~~".charAt(1) != '~') {
            throw new AssertionError();
        }
        if (!z10 && "~~~".charAt(2) != '~') {
            throw new AssertionError();
        }
    }

    public final void a(Map.Entry entry) {
        this.f35896a.a((String) entry.getKey(), Long.parseLong(((AbstractC6907dL) entry.getValue()).h(), 16));
    }

    public final String a() {
        final C7407gL c7407gL = new C7407gL();
        this.f35896a.e().stream().sorted(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (String) ((C10526z20) obj).getKey();
            }
        })).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4314n.a(C7407gL.this, (C10526z20) obj);
            }
        });
        return "~~~" + ((Object) c7407gL);
    }

    public static boolean a(L2 l22) {
        try {
            char[] cArr = new char[3];
            int a10 = L2.a(l22.f36562f, cArr);
            if (a10 == 0) {
                return true;
            }
            char c10 = cArr[0];
            if (c10 != '~') {
                return c10 < '~';
            }
            if (a10 == 1) {
                return true;
            }
            char c11 = cArr[1];
            if (c11 != '~') {
                return c11 < '~';
            }
            if (a10 == 2) {
                return true;
            }
            return cArr[2] < '~';
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException("Bad format", e10);
        }
    }

    public final void a(C7407gL c7407gL) {
        c7407gL.f48234b.entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4314n.this.a((Map.Entry) obj);
            }
        });
    }

    public static void a(C7407gL c7407gL, C10526z20 c10526z20) {
        D20 d20 = c10526z20.f54266c;
        Object[] objArr = d20.f39414b;
        int i10 = c10526z20.f54265b;
        c7407gL.a((String) objArr[i10], Long.toString(d20.f39415c[i10], 16));
    }
}
