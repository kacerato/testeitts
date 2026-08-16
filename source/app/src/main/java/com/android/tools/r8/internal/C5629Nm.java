package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.Function;

public class C5629Nm {

    public final C5398Jm f42692a;

    public C5629Nm(C5398Jm c5398Jm) {
        this.f42692a = c5398Jm;
    }

    public static C5629Nm a(Path path) {
        return new C5629Nm(new C5398Jm(path));
    }

    public static String a(com.android.tools.r8.graph.H2 h22) {
        return h22.getType().j0() + " " + h22.b0().f36638b.d();
    }

    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0) {
        InterfaceC5456Km a10 = this.f42692a.a();
        try {
            interfaceC6160Wr0.accept(a10);
            a10.close();
        } catch (Throwable th2) {
            try {
                a10.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(C4798y c4798y) {
        try {
            InterfaceC5456Km a10 = this.f42692a.a();
            try {
                ArrayList arrayList = new ArrayList(c4798y.f().d());
                arrayList.sort(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((com.android.tools.r8.graph.H2) obj).getType();
                    }
                }));
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    a(a10, (com.android.tools.r8.graph.H2) arrayList.get(i10));
                }
                a10.close();
            } catch (Throwable th2) {
                try {
                    a10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void a(InterfaceC5456Km interfaceC5456Km, com.android.tools.r8.graph.H2 h22) {
        interfaceC5456Km.a(a(h22));
        for (C4516j1 c4516j1 : h22.z1()) {
            interfaceC5456Km.a(c4516j1.getReference().j0());
            if (c4516j1.b1()) {
                Iterator<String> it = C10656zq0.c(c4516j1.Q0().toString()).iterator();
                while (it.hasNext()) {
                    interfaceC5456Km.a(it.next());
                }
            } else {
                interfaceC5456Km.a("<nocode>");
            }
        }
    }
}
