package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.regex.Pattern;

public final class C5323Ie0 implements Serializable {

    public final Pattern f41158b;

    public C5323Ie0(String str) {
        Pattern compile = Pattern.compile(str);
        GJ.b(compile, "compile(...)");
        this.f41158b = compile;
    }

    public final String toString() {
        String pattern = this.f41158b.toString();
        GJ.b(pattern, "toString(...)");
        return pattern;
    }
}
