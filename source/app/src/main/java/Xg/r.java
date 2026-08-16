package Xg;

import java.io.IOException;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class r {

    public static final int f28908i = 6;

    public int[] f28909a = new int[6];

    public int[] f28910b = new int[6];

    public int[] f28911c = new int[6];

    public boolean f28912d = false;

    public boolean f28913e = false;

    public int f28914f = 0;

    public int f28915g = 0;

    public char[] f28916h;

    public final boolean a() {
        return this.f28915g >= this.f28916h.length;
    }

    public int[] b() {
        if (this.f28913e) {
            return Arrays.copyOf(this.f28911c, this.f28914f);
        }
        return null;
    }

    public int[] c() {
        if (this.f28912d) {
            return Arrays.copyOf(this.f28910b, this.f28914f);
        }
        return null;
    }

    public int[] d() {
        return Arrays.copyOf(this.f28909a, this.f28914f);
    }

    public void e(String line) throws IOException {
        f(line);
    }

    public void f(String line) throws IOException {
        int i10 = 0;
        this.f28912d = false;
        this.f28913e = false;
        this.f28914f = 0;
        this.f28915g = 0;
        this.f28916h = line.toCharArray();
        h();
        if (a()) {
            return;
        }
        char[] cArr = this.f28916h;
        int i11 = this.f28915g;
        char c10 = cArr[i11];
        if (c10 != 'f' && c10 != 'F') {
            throw new IOException("Expected 'f' or 'F', but found '" + this.f28916h[this.f28915g] + " in \"" + line + JavadocConstants.ANCHOR_PREFIX_END);
        }
        this.f28915g = i11 + 1;
        while (true) {
            h();
            if (a()) {
                return;
            }
            int g10 = g();
            if (g10 == 0) {
                throw new IOException("Could not read vertex index in \"" + line + JavadocConstants.ANCHOR_PREFIX_END);
            }
            int[] iArr = this.f28909a;
            if (i10 >= iArr.length) {
                int i12 = i10 + 1;
                this.f28909a = Arrays.copyOf(iArr, i12);
                this.f28910b = Arrays.copyOf(this.f28910b, i12);
                this.f28911c = Arrays.copyOf(this.f28911c, i12);
            }
            if (g10 != 0) {
                this.f28909a[i10] = g10;
            }
            int i13 = i10 + 1;
            this.f28914f = i13;
            h();
            if (a()) {
                return;
            }
            char[] cArr2 = this.f28916h;
            int i14 = this.f28915g;
            if (cArr2[i14] == '/') {
                this.f28915g = i14 + 1;
                h();
                if (a()) {
                    throw new IOException("Unexpected end of input after '/' in  \"" + line + JavadocConstants.ANCHOR_PREFIX_END);
                }
                int g11 = g();
                if (g11 != 0) {
                    this.f28910b[i10] = g11;
                    this.f28912d = true;
                }
                h();
                if (a()) {
                    return;
                }
                char[] cArr3 = this.f28916h;
                int i15 = this.f28915g;
                if (cArr3[i15] == '/') {
                    this.f28915g = i15 + 1;
                    h();
                    if (a()) {
                        throw new IOException("Unexpected end of input after '/' in  \"" + line + JavadocConstants.ANCHOR_PREFIX_END);
                    }
                    int g12 = g();
                    if (g12 == 0) {
                        throw new IOException("Could not read normal index from \"" + line + JavadocConstants.ANCHOR_PREFIX_END);
                    }
                    this.f28913e = true;
                    if (g12 != 0) {
                        this.f28911c[i10] = g12;
                    }
                } else {
                    continue;
                }
            }
            i10 = i13;
        }
    }

    public final int g() {
        boolean z10;
        char[] cArr = this.f28916h;
        int i10 = this.f28915g;
        int i11 = 0;
        if (cArr[i10] == '-') {
            this.f28915g = i10 + 1;
            h();
            if (a()) {
                return 0;
            }
            z10 = true;
        } else {
            z10 = false;
        }
        char[] cArr2 = this.f28916h;
        int i12 = this.f28915g;
        char c10 = cArr2[i12];
        if (c10 >= '0' && c10 <= '9') {
            this.f28915g = i12 + 1;
            i11 = c10 - '0';
            while (!a()) {
                char[] cArr3 = this.f28916h;
                int i13 = this.f28915g;
                char c11 = cArr3[i13];
                if (c11 < '0' || c11 > '9') {
                    break;
                }
                i11 = (i11 * 10) + (c11 - '0');
                this.f28915g = i13 + 1;
            }
        }
        return z10 ? -i11 : i11;
    }

    public final void h() {
        while (!a()) {
            char[] cArr = this.f28916h;
            int i10 = this.f28915g;
            if (cArr[i10] != ' ') {
                return;
            } else {
                this.f28915g = i10 + 1;
            }
        }
    }
}
