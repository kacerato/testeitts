package com.android.tools.r8.internal;

import com.android.tools.r8.startup.StartupProfileProvider;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;

public class C8981po0 {

    public static final boolean f51617j = true;

    public boolean f51618a;

    public boolean f51619b;

    public boolean f51620c;

    public boolean f51621d;

    public boolean f51622e;

    public final boolean f51623f;

    public final String f51624g;

    public Collection f51625h;

    public final C8570nJ f51626i;

    public C8981po0(C8570nJ c8570nJ) {
        this.f51618a = AbstractC9824ur0.a("com.android.tools.r8.startup.outline", false);
        this.f51619b = AbstractC9824ur0.a("com.android.tools.r8.startup.minimalstartupdex", true);
        this.f51620c = AbstractC9824ur0.a("com.android.tools.r8.startup.boundaryoptimizations", false);
        this.f51621d = AbstractC9824ur0.a("com.android.tools.r8.startup.completenesscheck", false);
        this.f51622e = true;
        this.f51623f = AbstractC9824ur0.a("com.android.tools.r8.startup.layout", true);
        this.f51624g = System.getProperty("com.android.tools.r8.startup.multistartupdexdistribution", null);
        this.f51626i = c8570nJ;
        this.f51625h = (Collection) AbstractC9824ur0.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8981po0.a((String) obj);
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                return Collections.emptyList();
            }
        });
    }

    public static List a(String str) {
        StartupProfileProvider a10 = C10316xo0.a(Paths.get(str, new String[0]));
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(a10);
    }

    public C8981po0 b(boolean z10) {
        this.f51618a = z10;
        return this;
    }

    public C8981po0 c(boolean z10) {
        this.f51620c = z10;
        return this;
    }

    public C8981po0 d(boolean z10) {
        this.f51621d = z10;
        return this;
    }

    public C8981po0 a(boolean z10) {
        this.f51619b = z10;
        return this;
    }

    public C8981po0 a() {
        return d(true);
    }

    public C8981po0(C8570nJ c8570nJ, C8981po0 c8981po0) {
        this(c8570nJ);
        this.f51618a = c8981po0.f51618a;
        this.f51619b = c8981po0.f51619b;
        this.f51620c = c8981po0.f51620c;
        this.f51621d = c8981po0.f51621d;
        this.f51622e = c8981po0.f51622e;
        this.f51623f = c8981po0.f51623f;
        this.f51624g = c8981po0.f51624g;
        this.f51625h = c8981po0.f51625h;
    }
}
