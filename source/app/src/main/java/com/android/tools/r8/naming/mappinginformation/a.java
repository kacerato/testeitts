package com.android.tools.r8.naming.mappinginformation;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C7906jL;
import java.util.function.Consumer;

public final class a extends d {

    public final String f56009a;

    public a(String str) {
        this.f56009a = str;
    }

    @Override
    public final a a() {
        return this;
    }

    @Override
    public final e b(e eVar) {
        return eVar;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("sourceFile"));
        c7407gL.f48234b.put("fileName", new C7906jL(this.f56009a));
        return c7407gL.toString();
    }

    @Override
    public final boolean a(e eVar) {
        eVar.getClass();
        return !(eVar instanceof a);
    }

    public static void a(C7407gL c7407gL, DiagnosticsHandler diagnosticsHandler, int i10, Consumer consumer) {
        try {
            AbstractC6907dL abstractC6907dL = (AbstractC6907dL) c7407gL.f48234b.get("fileName");
            if (abstractC6907dL == null) {
                diagnosticsHandler.info(MappingInformationDiagnostics.a(i10, "fileName", "sourceFile"));
            }
            if (abstractC6907dL != null) {
                consumer.accept(new a(abstractC6907dL.h()));
            }
        } catch (IllegalStateException | UnsupportedOperationException unused) {
            diagnosticsHandler.info(MappingInformationDiagnostics.a(i10));
        }
    }
}
