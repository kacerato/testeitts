package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC9824ur0;

public class C11434t3 {

    public static final boolean f57844h = true;

    public final boolean f57845a;

    public final boolean f57846b;

    public final boolean f57847c;

    public final boolean f57848d;

    public final boolean f57849e;

    public final boolean f57850f;

    public final boolean f57851g;

    public static class a {

        public boolean f57854c;

        public boolean f57855d;

        public boolean f57856e;

        public boolean f57858g;

        public boolean f57852a = true;

        public boolean f57853b = false;

        public boolean f57857f = true;

        public a a(boolean z10) {
            this.f57854c = z10;
            return this;
        }

        public final a b() {
            this.f57852a = AbstractC9824ur0.a("com.android.tools.r8.enableLegacyFullModeForKeepRules", true);
            this.f57853b = AbstractC9824ur0.a("com.android.tools.r8.enableLegacyFullModeForKeepRulesWarnings", false);
            this.f57854c = AbstractC9824ur0.a("com.android.tools.r8.experimental.enablecheckenumunboxed", false);
            this.f57855d = AbstractC9824ur0.a("com.android.tools.r8.experimental.enableconvertchecknotnull", false);
            this.f57856e = AbstractC9824ur0.a("com.android.tools.r8.experimental.enablewhyareyounotinlining", false);
            this.f57857f = AbstractC9824ur0.a("com.android.tools.r8.enableKeepRuntimeInvisibleAnnotations", true);
            this.f57858g = AbstractC9824ur0.a("com.android.tools.r8.allowTestProguardOptions", false);
            return this;
        }

        public a c(boolean z10) {
            this.f57856e = z10;
            return this;
        }

        public a d(boolean z10) {
            this.f57858g = z10;
            return this;
        }

        public C11434t3 a() {
            return new C11434t3(this.f57852a, this.f57853b, this.f57854c, this.f57855d, this.f57856e, this.f57857f, this.f57858g);
        }

        public a b(boolean z10) {
            this.f57855d = z10;
            return this;
        }
    }

    public C11434t3(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f57847c = z12;
        this.f57848d = z13;
        this.f57849e = z14;
        this.f57850f = z15;
        this.f57851g = z16;
        this.f57845a = z10;
        this.f57846b = z11;
    }

    public static a a() {
        return new a();
    }
}
