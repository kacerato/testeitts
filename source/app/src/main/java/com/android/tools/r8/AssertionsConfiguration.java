package com.android.tools.r8;

import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.references.MethodReference;

public class AssertionsConfiguration {

    static final boolean f35124e = true;

    private final int f35125a;

    private final MethodReference f35126b;

    private final a f35127c;

    private final String f35128d;

    public static class Builder {

        final C5094Ef0 f35129a;

        private int f35130b;

        private MethodReference f35131c;

        private a f35132d;

        private String f35133e;

        public static AssertionsConfiguration compileTimeDisableAllAssertions(Builder builder) {
            return builder.setCompileTimeDisable().setScopeAll().build();
        }

        public static AssertionsConfiguration compileTimeEnableAllAssertions(Builder builder) {
            return builder.setCompileTimeEnable().setScopeAll().build();
        }

        @Deprecated
        public static AssertionsConfiguration enableAllAssertions(Builder builder) {
            return compileTimeEnableAllAssertions(builder);
        }

        public static AssertionsConfiguration passthroughAllAssertions(Builder builder) {
            return builder.setPassthrough().setScopeAll().build();
        }

        public AssertionsConfiguration build() {
            if (this.f35130b == 0 && this.f35131c == null) {
                this.f35129a.a("No transformation or assertion handler specified for building AssertionConfiguration");
            }
            if (this.f35132d == null) {
                this.f35129a.a("No scope specified for building AssertionConfiguration");
            }
            if (this.f35132d == a.f35135c && this.f35133e == null) {
                this.f35129a.a("No package name specified for building AssertionConfiguration");
            }
            if (this.f35132d == a.f35136d && this.f35133e == null) {
                this.f35129a.a("No class name specified for building AssertionConfiguration");
            }
            return new AssertionsConfiguration(this.f35130b, this.f35131c, this.f35132d, this.f35133e);
        }

        public Builder setAssertionHandler(MethodReference methodReference) {
            this.f35130b = 0;
            this.f35131c = methodReference;
            return this;
        }

        public Builder setCompileTimeDisable() {
            this.f35130b = 2;
            this.f35131c = null;
            return this;
        }

        public Builder setCompileTimeEnable() {
            this.f35130b = 1;
            this.f35131c = null;
            return this;
        }

        public Builder setPassthrough() {
            this.f35130b = 3;
            this.f35131c = null;
            return this;
        }

        public Builder setScopeAll() {
            this.f35132d = a.f35134b;
            this.f35133e = null;
            return this;
        }

        public Builder setScopeClass(String str) {
            this.f35132d = a.f35136d;
            this.f35133e = str;
            return this;
        }

        public Builder setScopePackage(String str) {
            this.f35132d = a.f35135c;
            this.f35133e = str;
            return this;
        }

        private Builder(C5094Ef0 c5094Ef0) {
            this.f35129a = c5094Ef0;
        }
    }

    public enum a {
        f35134b,
        f35135c,
        f35136d;

        a() {
        }
    }

    public AssertionsConfiguration(int i10, MethodReference methodReference, a aVar, String str) {
        this.f35125a = i10;
        this.f35126b = methodReference;
        this.f35127c = aVar;
        this.f35128d = str;
        if (f35124e) {
            return;
        }
        boolean z10 = i10 != 0;
        boolean z11 = methodReference != null;
        if (!z10 || z11) {
            if (z10 || !z11) {
                throw new AssertionError();
            }
        }
    }

    public static Builder a(C5094Ef0 c5094Ef0) {
        return new Builder(c5094Ef0);
    }

    public MethodReference getAssertionHandler() {
        return this.f35126b;
    }

    public a getScope() {
        return this.f35127c;
    }

    public String getValue() {
        return this.f35128d;
    }

    public boolean isAssertionHandler() {
        return this.f35126b != null;
    }

    public boolean isCompileTimeDisabled() {
        return this.f35125a == 2;
    }

    public boolean isCompileTimeEnabled() {
        return this.f35125a == 1;
    }

    public boolean isPassthrough() {
        return this.f35125a == 3;
    }
}
