package com.android.tools.r8.internal;

import java.util.function.Consumer;
import yd.C16181m;

public class C8541n80 {

    public Consumer f50515a = new Consumer() {
        @Override
        public final void accept(Object obj) {
            C8541n80.a((String) obj);
        }
    };

    public final Consumer f50516b = new Consumer() {
        @Override
        public final void accept(Object obj) {
            C8541n80.this.b((String) obj);
        }
    };

    public Consumer f50517c = new Consumer() {
        @Override
        public final void accept(Object obj) {
            C8541n80.c((String) obj);
        }
    };

    public Runnable f50518d = new Runnable() {
        @Override
        public final void run() {
            C8541n80.a();
        }
    };

    public Runnable f50519e = new Runnable() {
        @Override
        public final void run() {
            C8541n80.a();
        }
    };

    public Runnable f50520f = new Runnable() {
        @Override
        public final void run() {
            C8541n80.a();
        }
    };

    public static void a(String str) {
        throw new AssertionError((Object) "Unhandled");
    }

    public static void c(String str) {
        throw new AssertionError((Object) "Unhandled");
    }

    public final void b(String str) {
        this.f50515a.accept(str);
    }

    public final void d(String str) {
        String trim = str.trim();
        if (trim.equals("-dontobfuscate")) {
            this.f50520f.run();
            return;
        }
        if (trim.equals("-dontoptimize")) {
            this.f50519e.run();
            return;
        }
        if (trim.equals("-dontshrink")) {
            this.f50518d.run();
            return;
        }
        if (trim.startsWith("-print")) {
            this.f50517c.accept(str);
        } else if (trim.startsWith(C16181m.f130230g)) {
            this.f50516b.accept(str);
        } else {
            this.f50515a.accept(str);
        }
    }

    public static void a() {
        throw new AssertionError((Object) "Unhandled");
    }

    public static C8541n80 a(Consumer<String> consumer) {
        final C8541n80 c8541n80 = new C8541n80();
        c8541n80.f50515a = consumer;
        c8541n80.f50518d = new Runnable() {
            @Override
            public final void run() {
                C8541n80.this.f50515a.accept("-dontshrink");
            }
        };
        c8541n80.f50519e = new Runnable() {
            @Override
            public final void run() {
                C8541n80.this.f50515a.accept("-dontoptimize");
            }
        };
        c8541n80.f50520f = new Runnable() {
            @Override
            public final void run() {
                C8541n80.this.f50515a.accept("-dontobfuscate");
            }
        };
        return c8541n80.b(c8541n80.f50515a);
    }

    public C8541n80 b(Consumer<String> consumer) {
        this.f50517c = consumer;
        return this;
    }
}
