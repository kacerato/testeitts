package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.SourceFileEnvironment;
import com.android.tools.r8.SourceFileProvider;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Iterator;
import java.util.function.BiConsumer;

public class C8978pn0 implements SourceFileProvider {

    public static final AbstractC8552nC f51610c = new C8051kC(4).a(a("MAP_ID"), new SourceFileProvider() {
        @Override
        public final String get(SourceFileEnvironment sourceFileEnvironment) {
            return sourceFileEnvironment.getMapId();
        }
    }).a(a("MAP_HASH"), new SourceFileProvider() {
        @Override
        public final String get(SourceFileEnvironment sourceFileEnvironment) {
            return sourceFileEnvironment.getMapHash();
        }
    }).a();

    public static final boolean f51611d = true;

    public final String f51612a;

    public String f51613b = null;

    public C8978pn0(String str) {
        this.f51612a = str;
    }

    public static String a(String str) {
        return ve.j.f121589a + str;
    }

    @Override
    public final String get(final SourceFileEnvironment sourceFileEnvironment) {
        if (this.f51613b == null) {
            this.f51613b = this.f51612a;
            f51610c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8978pn0.this.a(sourceFileEnvironment, (String) obj, (SourceFileProvider) obj2);
                }
            });
        }
        return this.f51613b;
    }

    public static SourceFileProvider a(String str, DiagnosticsHandler diagnosticsHandler) {
        String str2 = str;
        for (String str3 : f51610c.o()) {
            str2 = str2.replace(str3, " " + str3.substring(1));
        }
        if (!f51611d && str.length() != str2.length()) {
            throw new AssertionError();
        }
        int indexOf = str2.indexOf(37);
        if (indexOf < 0) {
            return new C8978pn0(str);
        }
        while (indexOf >= 0) {
            Iterator it = f51610c.o().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 = Math.max(i10, ((String) it.next()).length());
            }
            diagnosticsHandler.error(new StringDiagnostic("Invalid template variable starting with " + str.substring(indexOf, Math.min(i10 + indexOf, str.length()))));
            indexOf = str2.indexOf(37, indexOf + 1);
        }
        return null;
    }

    public final void a(SourceFileEnvironment sourceFileEnvironment, String str, SourceFileProvider sourceFileProvider) {
        this.f51613b = this.f51613b.replace(str, sourceFileProvider.get(sourceFileEnvironment));
    }
}
