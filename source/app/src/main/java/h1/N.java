package h1;

import javax.annotation.CheckForNull;

public abstract class N extends AbstractC13406A {

    public final CharSequence f90184d;

    public final F f90185e;

    public final boolean f90186f;

    public int f90187g = 0;

    public int f90188h;

    public N(C13408b c13408b, CharSequence charSequence) {
        F f10;
        boolean z10;
        f10 = c13408b.f90191a;
        this.f90185e = f10;
        z10 = c13408b.f90192b;
        this.f90186f = z10;
        this.f90188h = Integer.MAX_VALUE;
        this.f90184d = charSequence;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        r3 = r5.f90188h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (r3 != 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        r1 = r5.f90184d.length();
        r5.f90187g = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r1 <= r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
    
        r5.f90184d.charAt(r1 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return r5.f90184d.subSequence(r0, r1).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        r5.f90188h = r3 - 1;
     */
    @Override
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        int c10;
        int i10 = this.f90187g;
        while (true) {
            int i11 = this.f90187g;
            if (i11 == -1) {
                b();
                return null;
            }
            int d10 = d(i11);
            if (d10 == -1) {
                d10 = this.f90184d.length();
                this.f90187g = -1;
                c10 = -1;
            } else {
                c10 = c(d10);
                this.f90187g = c10;
            }
            if (c10 == i10) {
                int i12 = c10 + 1;
                this.f90187g = i12;
                if (i12 > this.f90184d.length()) {
                    this.f90187g = -1;
                }
            } else {
                if (i10 < d10) {
                    this.f90184d.charAt(i10);
                }
                if (i10 < d10) {
                    this.f90184d.charAt(d10 - 1);
                }
                if (!this.f90186f || i10 != d10) {
                    break;
                }
                i10 = this.f90187g;
            }
        }
    }

    public abstract int c(int i10);

    public abstract int d(int i10);
}
