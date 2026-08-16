package com.android.tools.r8.naming.mappinginformation;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC5384Jf0;
import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C5163Fk0;
import com.android.tools.r8.internal.C5268Hf0;
import com.android.tools.r8.internal.C5326If0;
import com.android.tools.r8.internal.C5441Kf;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C9502sv0;
import com.android.tools.r8.internal.L50;
import com.android.tools.r8.internal.M40;
import com.android.tools.r8.internal.O40;
import com.android.tools.r8.naming.MapVersion;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public abstract class e {
    public a a() {
        return null;
    }

    public abstract boolean a(e eVar);

    public b b() {
        return null;
    }

    public abstract e b(e eVar);

    public M40 c() {
        return null;
    }

    public O40 d() {
        return null;
    }

    public L50 e() {
        return null;
    }

    public d f() {
        return null;
    }

    public C5268Hf0 g() {
        return null;
    }

    public C5326If0 h() {
        return null;
    }

    public AbstractC5384Jf0 i() {
        return null;
    }

    public C5163Fk0 j() {
        return null;
    }

    public C9502sv0 k() {
        return null;
    }

    public boolean l() {
        return false;
    }

    public boolean m() {
        return this instanceof M40;
    }

    public boolean n() {
        return this instanceof O40;
    }

    public boolean o() {
        return false;
    }

    public boolean p() {
        return false;
    }

    public boolean q() {
        return this instanceof C5163Fk0;
    }

    public abstract String r();

    public static void a(MapVersion mapVersion, C7407gL c7407gL, DiagnosticsHandler diagnosticsHandler, int i10, Consumer consumer) {
        AbstractC6907dL abstractC6907dL = (AbstractC6907dL) c7407gL.f48234b.get("id");
        if (abstractC6907dL == null) {
            diagnosticsHandler.info(MappingInformationDiagnostics.b(i10));
            return;
        }
        String h10 = abstractC6907dL.h();
        if (h10 == null) {
            diagnosticsHandler.info(MappingInformationDiagnostics.c(i10));
            return;
        }
        char c10 = '\uffff';
        switch (h10.hashCode()) {
            case -1817422466:
                if (h10.equals("com.android.tools.r8.outlineCallsite")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1379352647:
                if (h10.equals("com.android.tools.r8.outline")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1333195446:
                if (h10.equals("com.android.tools.r8.residualsignature")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1111864265:
                if (h10.equals("sourceFile")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1101227663:
                if (h10.equals("com.android.tools.r8.synthesized")) {
                    c10 = 4;
                    break;
                }
                break;
            case 564449349:
                if (h10.equals("com.android.tools.r8.mapping")) {
                    c10 = 5;
                    break;
                }
                break;
            case 960297514:
                if (h10.equals("com.android.tools.r8.rewriteFrame")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1352776146:
                if (h10.equals("partitionSourceFiles")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                M40.a(mapVersion, c7407gL, consumer);
                return;
            case 1:
                O40.a(mapVersion, consumer);
                return;
            case 2:
                AbstractC5384Jf0.a(mapVersion, c7407gL, consumer);
                return;
            case 3:
                a.a(c7407gL, diagnosticsHandler, i10, consumer);
                return;
            case 4:
                C5441Kf.a(mapVersion, consumer);
                return;
            case 5:
                b.a(c7407gL, i10, consumer);
                return;
            case 6:
                C5163Fk0.a(mapVersion, c7407gL, consumer);
                return;
            case 7:
                L50.a(c7407gL, consumer);
                return;
            default:
                diagnosticsHandler.info(MappingInformationDiagnostics.a(i10, h10));
                C9502sv0.a(h10, c7407gL, consumer);
                return;
        }
    }

    public static void a(List list, e eVar, Consumer consumer) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            e eVar2 = (e) it.next();
            if (!eVar2.a(eVar)) {
                consumer.accept(eVar2);
                return;
            }
        }
        list.add(eVar);
    }
}
