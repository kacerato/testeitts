package H4;

import E3.d;
import java.io.File;

public class b {

    public static final int f8112b = 0;

    public static final int f8113c = 1;

    public static final int f8114d = 2;

    public static final int f8115e = 3;

    public static final int f8116f = 4;

    public static final int f8117g = 5;

    public E3.a f8118a;

    public static class a {

        public static final int[] f8119a;

        static {
            int[] iArr = new int[d.values().length];
            f8119a = iArr;
            try {
                iArr[d.Done.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8119a[d.Failed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8119a[d.Waiting.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8119a[d.Uploading.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8119a[d.Downloading.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public b(E3.a candidate) {
        this.f8118a = candidate;
    }

    public String a() {
        return this.f8118a.a();
    }

    public File b() {
        return this.f8118a.b();
    }

    public String c() {
        return this.f8118a.b().getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f8118a.f()) + "/", "");
    }

    public E3.c d() {
        return this.f8118a.d();
    }

    public String e() {
        return Tc.b.v(this.f8118a.c());
    }

    public int f() {
        return this.f8118a.e();
    }

    public int g() {
        int i10 = a.f8119a[this.f8118a.h().ordinal()];
        if (i10 == 1) {
            return 4;
        }
        if (i10 == 2) {
            return 5;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 != 4) {
            return i10 != 5 ? 3 : 1;
        }
        return 0;
    }
}
