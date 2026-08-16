package com.android.tools.r8.internal;

import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.startup.diagnostic.MissingStartupProfileItemsDiagnostic;
import java.nio.file.Path;

public class C10316xo0 {
    public static StartupProfileProvider a(Path path) {
        return new C10149wo0(path, C6628bi.b());
    }

    public static String a(C8570nJ c8570nJ, StartupProfileProvider startupProfileProvider) {
        AbstractC9148qo0.a a10 = AbstractC9148qo0.a(c8570nJ, MissingStartupProfileItemsDiagnostic.a.b(), startupProfileProvider);
        a10.f51892c = null;
        startupProfileProvider.getStartupProfile(a10);
        final StringBuilder sb2 = new StringBuilder();
        a10.build().a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10316xo0.a(StringBuilder.this, (AbstractC10483yo0) obj);
            }
        });
        return sb2.toString();
    }

    public static void a(StringBuilder sb2, AbstractC10483yo0 abstractC10483yo0) {
        abstractC10483yo0.a(sb2);
        sb2.append('\n');
    }
}
