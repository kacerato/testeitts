package j1;

import java.io.IOException;
import java.math.RoundingMode;
import javax.annotation.CheckForNull;

public class G extends H {

    public final D f92480f;

    @CheckForNull
    public final Character f92481g;

    public G(D d10, @CheckForNull Character ch2) {
        this.f92480f = d10;
        if (ch2 != null && d10.b('=')) {
            throw new IllegalArgumentException(C13791o.a("Padding character %s was already in alphabet", ch2));
        }
        this.f92481g = ch2;
    }

    @Override
    public void a(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        C13790n.e(0, i11, bArr.length);
        while (i12 < i11) {
            e(appendable, bArr, i12, Math.min(this.f92480f.f92476f, i11 - i12));
            i12 += this.f92480f.f92476f;
        }
    }

    @Override
    public final int b(int i10) {
        D d10 = this.f92480f;
        return d10.f92475e * J.a(i10, d10.f92476f, RoundingMode.CEILING);
    }

    public final void e(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        C13790n.e(i10, i10 + i11, bArr.length);
        int i12 = 0;
        C13790n.c(i11 <= this.f92480f.f92476f);
        long j10 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            j10 = (j10 | (bArr[i10 + i13] & 255)) << 8;
        }
        int i14 = ((i11 + 1) * 8) - this.f92480f.f92474d;
        while (i12 < i11 * 8) {
            D d10 = this.f92480f;
            appendable.append(d10.a(d10.f92473c & ((int) (j10 >>> (i14 - i12)))));
            i12 += this.f92480f.f92474d;
        }
        if (this.f92481g != null) {
            while (i12 < this.f92480f.f92476f * 8) {
                this.f92481g.charValue();
                appendable.append('=');
                i12 += this.f92480f.f92474d;
            }
        }
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof G) {
            G g10 = (G) obj;
            if (this.f92480f.equals(g10.f92480f)) {
                Character ch2 = this.f92481g;
                Character ch3 = g10.f92481g;
                if (ch2 == ch3) {
                    return true;
                }
                if (ch2 != null && ch2.equals(ch3)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f92480f.hashCode();
        Character ch2 = this.f92481g;
        return hashCode ^ (ch2 == null ? 0 : ch2.hashCode());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append((Object) this.f92480f);
        if (8 % this.f92480f.f92474d != 0) {
            if (this.f92481g == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append((Object) this.f92481g);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    public G(String str, String str2, @CheckForNull Character ch2) {
        this(new D(str, str2.toCharArray()), ch2);
    }
}
