package com.android.tools.r8.origin;

public class f extends Origin {

    public final String f56153f;

    public f(String str, Class<?> cls) {
        super(Origin.root());
        this.f56153f = str;
    }

    @Override
    public final String part() {
        return "synthesized for " + this.f56153f;
    }
}
