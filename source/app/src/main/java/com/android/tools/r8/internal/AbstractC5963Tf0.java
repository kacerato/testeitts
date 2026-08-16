package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.HashSet;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public abstract class AbstractC5963Tf0 {

    public final InterfaceC5976Tl0 f44524a;

    public final C7789ig0 f44525b;

    public V10 f44526c = V10.f44939c;

    public final HashSet f44527d = new HashSet(AbstractC9595tV.a(300));

    public boolean f44528e;

    public boolean f44529f;

    public AbstractC5963Tf0(InterfaceC5976Tl0 interfaceC5976Tl0) {
        new HashMap();
        this.f44528e = false;
        this.f44529f = false;
        this.f44524a = interfaceC5976Tl0;
        this.f44525b = new C7789ig0();
    }

    public static String c(String str) {
        if (str.length() <= 40) {
            return str;
        }
        return str.substring(0, 37) + "...";
    }

    public final void a() {
        if (this.f44527d.isEmpty() || !this.f44525b.f49018h) {
            return;
        }
        if (this.f44528e || this.f44529f) {
            this.f44524a.a(new Supplier() {
                @Override
                public final Object get() {
                    return AbstractC5963Tf0.this.b();
                }
            });
            new N60(this.f44524a, this.f44525b, this.f44527d, this.f44529f).a();
        }
    }

    public final String b() {
        return "android.content.res.Resources#getIdentifier present: " + this.f44528e + "\nWeb content present: " + this.f44529f + "\nReferenced Strings:\n" + ((String) this.f44527d.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String replace;
                replace = ((String) obj).trim().replace("\n", "\\n");
                return replace;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5963Tf0.b((String) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5963Tf0.c((String) obj);
            }
        }).collect(Collectors.joining("\n")));
    }

    public static boolean b(String str) {
        return !str.isEmpty();
    }
}
