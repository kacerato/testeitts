package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileMethodRuleInfo;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleInfoBuilder;
import java.util.function.IntFunction;

public class C9195r4 implements ArtProfileMethodRuleInfo {

    public static final C9195r4[] f51959b = (C9195r4[]) X3.a((Object[]) new C9195r4[8], new IntFunction() {
        @Override
        public final Object apply(int i10) {
            return new C9195r4(i10);
        }
    });

    public final int f51960a;

    public C9195r4(int i10) {
        this.f51960a = i10;
    }

    public static a a() {
        return new a();
    }

    public static C9195r4 b() {
        return f51959b[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f51960a == ((C9195r4) obj).f51960a;
    }

    public final int hashCode() {
        return this.f51960a;
    }

    @Override
    public boolean isHot() {
        return (this.f51960a & 1) != 0;
    }

    @Override
    public boolean isPostStartup() {
        return (this.f51960a & 4) != 0;
    }

    @Override
    public boolean isStartup() {
        return (this.f51960a & 2) != 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (isHot()) {
            sb2.append('H');
        }
        if (isStartup()) {
            sb2.append('S');
        }
        if (isPostStartup()) {
            sb2.append('P');
        }
        return sb2.toString();
    }

    public static class a implements ArtProfileMethodRuleInfoBuilder {

        public static final boolean f51961b = true;

        public int f51962a;

        public final void a(C9195r4 c9195r4) {
            if (c9195r4.isHot()) {
                b();
            }
            if (c9195r4.isStartup()) {
                d();
            }
            if (c9195r4.isPostStartup()) {
                c();
            }
        }

        public a b() {
            this.f51962a |= 1;
            return this;
        }

        public a c() {
            this.f51962a |= 4;
            return this;
        }

        public a d() {
            this.f51962a |= 2;
            return this;
        }

        @Override
        public final ArtProfileMethodRuleInfoBuilder setIsHot(boolean z10) {
            int i10 = this.f51962a;
            this.f51962a = z10 ? i10 | 1 : i10 & (-2);
            return this;
        }

        @Override
        public final ArtProfileMethodRuleInfoBuilder setIsPostStartup(boolean z10) {
            int i10 = this.f51962a;
            this.f51962a = z10 ? i10 | 4 : i10 & (-5);
            return this;
        }

        @Override
        public final ArtProfileMethodRuleInfoBuilder setIsStartup(boolean z10) {
            int i10 = this.f51962a;
            this.f51962a = z10 ? i10 | 2 : i10 & (-3);
            return this;
        }

        public C9195r4 a() {
            boolean z10 = f51961b;
            if (!z10 && this.f51962a < 0) {
                throw new AssertionError();
            }
            if (z10 || this.f51962a < C9195r4.f51959b.length) {
                return C9195r4.f51959b[this.f51962a];
            }
            throw new AssertionError();
        }
    }
}
