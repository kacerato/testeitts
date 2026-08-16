package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;

public class j {

    public interface a {
        void a(String error);

        void b();

        void c(String name);
    }

    public interface b {
        void a(String error);

        void b();

        void c(int version, String name);
    }

    public static void a(String productID, a listener) {
        Package D10 = T5.b.D(productID);
        if (D10 == null) {
            listener.a("Package not found");
        } else {
            listener.c(T5.b.P(D10));
        }
    }

    public static void b(String packageServerID, b listener) {
        Package D10 = T5.b.D(packageServerID);
        if (D10 == null) {
            listener.a("Package not found");
        } else {
            listener.c(D10.version, T5.b.P(D10));
        }
    }
}
