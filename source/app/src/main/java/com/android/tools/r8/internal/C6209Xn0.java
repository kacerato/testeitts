package com.android.tools.r8.internal;

import java.util.regex.Matcher;

public final class C6209Xn0 implements InterfaceC7313fo0 {

    public final String f45817a;

    public final AbstractC6266Yn0 f45818b;

    public C6209Xn0(AbstractC6266Yn0 abstractC6266Yn0, String str) {
        this.f45818b = abstractC6266Yn0;
        this.f45817a = str;
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final boolean a(C5980Tn0 c5980Tn0, Matcher matcher) {
        int start = matcher.start(this.f45817a);
        if (start == -1) {
            return false;
        }
        String group = matcher.group(this.f45817a);
        if (group.equals("Suppressed")) {
            return false;
        }
        if (this.f45818b.b() == EnumC5864Rn0.f43992c) {
            start += group.lastIndexOf(47) + 1;
        }
        c5980Tn0.a(start, matcher.end(this.f45817a), this.f45818b.b());
        return true;
    }
}
