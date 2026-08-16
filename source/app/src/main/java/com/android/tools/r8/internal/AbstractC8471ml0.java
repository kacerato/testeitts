package com.android.tools.r8.internal;

import com.android.tools.r8.Version;
import java.io.Serializable;

public abstract class AbstractC8471ml0 {
    public static InterfaceC6044Uq0 a(final C8304ll0 c8304ll0, final C5094Ef0 c5094Ef0) {
        final String str = "Using an artificial version newer than any known version for selecting Proguard configurations embedded under META-INF/. This means that all rules with a '-upto-' qualifier will be excluded and all rules with a -from- qualifier will be included.";
        InterfaceC6044Uq0 interfaceC6044Uq0 = new InterfaceC6044Uq0() {
            @Override
            public final Object get() {
                return AbstractC8471ml0.a(C8304ll0.this, c5094Ef0, str);
            }
        };
        if (interfaceC6044Uq0 instanceof Serializable) {
            return new C6158Wq0(interfaceC6044Uq0);
        }
        return new C6215Xq0(interfaceC6044Uq0);
    }

    public static C8304ll0 a(C8304ll0 c8304ll0, C5094Ef0 c5094Ef0, String str) {
        String str2;
        if (c8304ll0 == null) {
            c8304ll0 = C8304ll0.a(Version.getMajorVersion(), Version.getMinorVersion(), Version.getPatchVersion());
        }
        if (c8304ll0.a() < 0) {
            c8304ll0 = C8304ll0.a(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
            String versionString = Version.getVersionString();
            if (str == null) {
                str2 = "";
            } else {
                str2 = " " + str;
            }
            c5094Ef0.c("Running R8 version " + versionString + ", which cannot be represented as a semantic version." + str2);
        }
        return c8304ll0;
    }
}
