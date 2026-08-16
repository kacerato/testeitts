package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;

public final class C9917vP {

    public static final C9917vP f53090d = new C9917vP(null, null, null);

    public final String f53091a;

    public final String f53092b;

    public final String f53093c;

    public C9917vP(String str, String str2, String str3) {
        this.f53091a = str;
        this.f53092b = str2;
        this.f53093c = str3;
    }

    public final KeepSpecProtos.StringPattern.Builder a() {
        KeepSpecProtos.StringPattern.Builder newBuilder = KeepSpecProtos.StringPattern.newBuilder();
        if (b()) {
            return newBuilder;
        }
        if (c()) {
            return newBuilder.setExact(this.f53091a);
        }
        KeepSpecProtos.StringPatternInexact.Builder newBuilder2 = KeepSpecProtos.StringPatternInexact.newBuilder();
        String str = this.f53092b;
        if (str == null) {
            str = "";
        }
        KeepSpecProtos.StringPatternInexact.Builder prefix = newBuilder2.setPrefix(str);
        String str2 = this.f53093c;
        return newBuilder.setInexact(prefix.setSuffix(str2 != null ? str2 : ""));
    }

    public final boolean b() {
        return f53090d == this;
    }

    public final boolean c() {
        return this.f53091a != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9917vP)) {
            return false;
        }
        C9917vP c9917vP = (C9917vP) obj;
        return Objects.equals(this.f53091a, c9917vP.f53091a) && Objects.equals(this.f53092b, c9917vP.f53092b) && Objects.equals(this.f53093c, c9917vP.f53093c);
    }

    public final int hashCode() {
        return Objects.hash(this.f53091a, this.f53092b, this.f53093c);
    }

    public final String toString() {
        if (b()) {
            return "<*>";
        }
        if (c()) {
            return this.f53091a;
        }
        String str = this.f53092b;
        if (str == null) {
            str = "";
        }
        String str2 = this.f53093c;
        return str + "<*>" + (str2 != null ? str2 : "");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C9917vP a(KeepSpecProtos.StringPattern stringPattern) {
        String str;
        String str2;
        String prefix;
        if (stringPattern.hasExact()) {
            str = stringPattern.getExact();
            str2 = null;
        } else {
            if (stringPattern.hasInexact()) {
                KeepSpecProtos.StringPatternInexact inexact = stringPattern.getInexact();
                prefix = inexact.getPrefix();
                str2 = inexact.getSuffix();
                str = null;
                if (str == null) {
                    return new C9917vP(str, null, null);
                }
                if (prefix == null && str2 == null) {
                    return f53090d;
                }
                return new C9917vP(str, prefix, str2);
            }
            if (!AbstractC9750uP.f52846a && !f53090d.b()) {
                throw new AssertionError();
            }
            str = null;
            str2 = null;
        }
        prefix = str2;
        if (str == null) {
        }
    }

    public static C9917vP a(String str) {
        if (str != null) {
            return new C9917vP(str, null, null);
        }
        return f53090d;
    }
}
