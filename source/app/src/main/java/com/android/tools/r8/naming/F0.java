package com.android.tools.r8.naming;

public class F0 extends RuntimeException {

    public final int f55610b;

    public final int f55611c;

    public final boolean f55612d;

    public final String f55613e;

    public F0(G0 g02, String str, boolean z10) {
        super(str);
        this.f55610b = g02.f55625h;
        this.f55611c = g02.f55626i;
        this.f55612d = z10;
        this.f55613e = str;
    }

    @Override
    public final String getMessage() {
        if (this.f55612d) {
            return "Parse error [" + this.f55610b + ":eol] " + this.f55613e;
        }
        return "Parse error [" + this.f55610b + b3.s.f32937c + this.f55611c + "] " + this.f55613e;
    }
}
