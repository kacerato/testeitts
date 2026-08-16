package com.android.tools.r8.dex;

public abstract class c0 extends e0 {
    public c0(f0 f0Var, String str) {
        super(f0Var, str);
    }

    @Override
    public boolean a() {
        return !(this instanceof d0);
    }

    @Override
    public char b() {
        return '/';
    }

    @Override
    public final boolean a(char c10) {
        return !Character.isLetterOrDigit(c10);
    }

    @Override
    public final boolean a(int i10, int i11) {
        if (!a(i11) && this.f35835a.charAt(i11) != '/') {
            return c(i10, i11);
        }
        String substring = this.f35835a.substring(i10, i11);
        if (b() != '/') {
            substring = substring.replace(b(), '/');
        }
        String a10 = this.f35841g.f35846d.a(this.f35841g.f35843a.v().a(substring));
        if (substring.equals(a10)) {
            return false;
        }
        int i12 = this.f35838d;
        if (i12 < i10) {
            this.f35836b.append((CharSequence) this.f35835a, i12, i10);
        }
        if (b() != '/') {
            a10 = a10.replace('/', b());
        }
        this.f35836b.append(a10);
        this.f35838d = i11;
        this.f35837c = true;
        return true;
    }
}
