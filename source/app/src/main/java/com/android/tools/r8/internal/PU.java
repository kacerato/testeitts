package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.MapIdEnvironment;
import com.android.tools.r8.MapIdProvider;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Iterator;
import java.util.function.BiConsumer;

public class PU implements MapIdProvider {

    public static final AbstractC8552nC f43240c = new C8051kC(4).a(a(), new MapIdProvider() {
        @Override
        public final String get(MapIdEnvironment mapIdEnvironment) {
            return mapIdEnvironment.getMapHash();
        }
    }).a();

    public static final boolean f43241d = true;

    public final String f43242a;

    public String f43243b = null;

    public PU(String str) {
        this.f43242a = str;
    }

    public static String a() {
        return ve.j.f121589a + "MAP_HASH";
    }

    @Override
    public final String get(final MapIdEnvironment mapIdEnvironment) {
        if (this.f43243b == null) {
            this.f43243b = this.f43242a;
            f43240c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    PU.this.a(mapIdEnvironment, (String) obj, (MapIdProvider) obj2);
                }
            });
        }
        return this.f43243b;
    }

    public static MapIdProvider a(String str, DiagnosticsHandler diagnosticsHandler) {
        String str2 = str;
        for (String str3 : f43240c.o()) {
            str2 = str2.replace(str3, " " + str3.substring(1));
        }
        if (!f43241d && str.length() != str2.length()) {
            throw new AssertionError();
        }
        int indexOf = str2.indexOf(37);
        if (indexOf < 0) {
            return new PU(str);
        }
        while (indexOf >= 0) {
            Iterator it = f43240c.o().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 = Math.max(i10, ((String) it.next()).length());
            }
            diagnosticsHandler.error(new StringDiagnostic("Invalid template variable starting with " + str.substring(indexOf, Math.min(i10 + indexOf, str.length()))));
            indexOf = str2.indexOf(37, indexOf + 1);
        }
        return null;
    }

    public final void a(MapIdEnvironment mapIdEnvironment, String str, MapIdProvider mapIdProvider) {
        this.f43243b = this.f43243b.replace(str, mapIdProvider.get(mapIdEnvironment));
    }
}
