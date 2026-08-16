package com.android.tools.r8.startup.diagnostic;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import u.C1;

public class MissingStartupProfileItemsDiagnostic implements Diagnostic {

    private static final int f58031d;

    static final boolean f58032e = true;

    private final ArrayList f58033b;

    private final Origin f58034c;

    public static class a {

        public static final boolean f58035d = true;

        public final AbstractC4780x0 f58036a;

        public final Set f58037b = AbstractC5513Ll0.c();

        public Origin f58038c;

        public a(AbstractC4780x0 abstractC4780x0) {
            this.f58036a = abstractC4780x0;
        }

        public static a b() {
            return new a(null);
        }

        public final MissingStartupProfileItemsDiagnostic a() {
            if (!f58035d && this.f58037b.isEmpty()) {
                throw new AssertionError();
            }
            ArrayList arrayList = new ArrayList(this.f58037b);
            arrayList.sort(new C1());
            return new MissingStartupProfileItemsDiagnostic(arrayList, this.f58038c);
        }
    }

    static {
        String property = System.getProperty("com.android.tools.r8.startup.diagnostic.limit");
        f58031d = property != null ? Integer.parseInt(property) : 100;
    }

    public MissingStartupProfileItemsDiagnostic(ArrayList arrayList, Origin origin) {
        if (!f58032e && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        this.f58033b = arrayList;
        this.f58034c = origin;
    }

    private static void a(final StringBuilder sb2, J2 j22) {
        j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                StringBuilder a10;
                a10 = MissingStartupProfileItemsDiagnostic.a(StringBuilder.this, (M2) obj);
                return a10;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                StringBuilder a10;
                a10 = MissingStartupProfileItemsDiagnostic.a(StringBuilder.this, (C4554l1) obj);
                return a10;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                StringBuilder a10;
                a10 = MissingStartupProfileItemsDiagnostic.a(StringBuilder.this, (A2) obj);
                return a10;
            }
        });
        sb2.append(j22.j0());
    }

    @Override
    public String getDiagnosticMessage() {
        int i10 = f58031d;
        if (i10 == 0) {
            return "Found " + this.f58033b.size() + " missing startup classes and methods";
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f58033b.iterator();
        a(sb2, (J2) it.next());
        if (i10 <= 0) {
            i10 = Integer.MAX_VALUE;
        }
        while (true) {
            i10--;
            if (!it.hasNext() || i10 <= 0) {
                break;
            }
            sb2.append(System.lineSeparator());
            a(sb2, (J2) it.next());
        }
        if (it.hasNext()) {
            if (!f58032e && f58031d <= 0) {
                throw new AssertionError();
            }
            int size = this.f58033b.size() - f58031d;
            sb2.append(System.lineSeparator());
            sb2.append("Found ");
            sb2.append(size);
            sb2.append(" other missing startup classes and methods");
        }
        return sb2.toString();
    }

    @Override
    public Origin getOrigin() {
        return this.f58034c;
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }

    public static StringBuilder a(StringBuilder sb2, M2 m22) {
        sb2.append("Startup class not found: ");
        return sb2;
    }

    public static StringBuilder a(StringBuilder sb2, C4554l1 c4554l1) {
        sb2.append("Startup field not found: ");
        return sb2;
    }

    public static StringBuilder a(StringBuilder sb2, A2 a22) {
        sb2.append("Startup method not found: ");
        return sb2;
    }
}
