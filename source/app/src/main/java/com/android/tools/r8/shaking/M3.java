package com.android.tools.r8.shaking;

import java.util.Objects;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class M3 {

    public final boolean f56722a;

    public final boolean f56723b;

    public final boolean f56724c;

    public final boolean f56725d;

    public final boolean f56726e;

    public final boolean f56727f;

    public final boolean f56728g;

    public final boolean f56729h;

    public final boolean f56730i;

    public static class a {

        public boolean f56731a;

        public boolean f56732b;

        public boolean f56733c;

        public boolean f56734d;

        public boolean f56735e;

        public boolean f56736f;

        public boolean f56737g;

        public boolean f56738h;

        public boolean f56739i;

        private a() {
            this.f56731a = false;
            this.f56732b = false;
            this.f56733c = false;
            this.f56734d = false;
            this.f56735e = false;
            this.f56736f = false;
            this.f56737g = false;
            this.f56738h = false;
            this.f56739i = false;
        }
    }

    public M3(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18) {
        this.f56722a = z10;
        this.f56723b = z11;
        this.f56724c = z12;
        this.f56725d = z13;
        this.f56726e = z14;
        this.f56727f = z15;
        this.f56728g = z16;
        this.f56729h = z17;
        this.f56730i = z18;
    }

    public static a a() {
        return new a();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof M3)) {
            return false;
        }
        M3 m32 = (M3) obj;
        return this.f56722a == m32.f56722a && this.f56723b == m32.f56723b && this.f56724c == m32.f56724c && this.f56725d == m32.f56725d && this.f56726e == m32.f56726e && this.f56727f == m32.f56727f && this.f56728g == m32.f56728g && this.f56729h == m32.f56729h && this.f56730i == m32.f56730i;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f56722a), Boolean.valueOf(this.f56723b), Boolean.valueOf(this.f56724c), Boolean.valueOf(this.f56725d), Boolean.valueOf(this.f56726e), Boolean.valueOf(this.f56727f), Boolean.valueOf(this.f56728g), Boolean.valueOf(this.f56729h), Boolean.valueOf(this.f56730i));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2, this.f56722a, "allowaccessmodification");
        a(sb2, this.f56723b, "allowannotationremoval");
        a(sb2, this.f56724c, "allowcodereplacement");
        a(sb2, this.f56725d, "allowrepackaging");
        a(sb2, this.f56728g, "allowobfuscation");
        a(sb2, this.f56726e, "allowshrinking");
        a(sb2, this.f56727f, "allowoptimization");
        a(sb2, this.f56729h, "includedescriptorclasses");
        a(sb2, this.f56730i, "allowpermittedsubclassesremoval");
        return sb2.toString();
    }

    public static void a(StringBuilder sb2, boolean z10, String str) {
        if (z10) {
            if (sb2.length() != 0) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append(str);
        }
    }
}
