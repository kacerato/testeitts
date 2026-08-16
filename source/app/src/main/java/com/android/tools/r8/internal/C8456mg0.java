package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.Serializable;
import java.util.Objects;

public final class C8456mg0 implements Serializable {

    public final EnumC8289lg0 f50376b;

    public final String f50377c;

    public final String f50378d;

    public final int f50379e;

    public final boolean f50380f;

    public C8456mg0(EnumC8289lg0 enumC8289lg0, String str, String str2, int i10, boolean z10) {
        this.f50376b = enumC8289lg0;
        this.f50377c = str;
        this.f50378d = str2;
        this.f50379e = i10;
        this.f50380f = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0092, code lost:
    
        if (r1 > r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0094, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0095, code lost:
    
        r1 = r17.substring(r4, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
    
        if (r10 <= r8) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009b, code lost:
    
        r3 = r17.substring(r8, r10);
        r4 = com.android.tools.r8.internal.EnumC8289lg0.ANIM;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
    
        if (r3.equals("declare-styleable") != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
    
        if (r3.equals("styleable") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b2, code lost:
    
        r4 = com.android.tools.r8.internal.EnumC8289lg0.f50038G;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ba, code lost:
    
        if (r3.equals("sample") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bd, code lost:
    
        r4 = com.android.tools.r8.internal.EnumC8289lg0.f50035D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
    
        if (r3.equals("_aapt") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c8, code lost:
    
        r4 = com.android.tools.r8.internal.EnumC8289lg0.f50036E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d0, code lost:
    
        if (r3.equals("overlayable") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d3, code lost:
    
        r4 = com.android.tools.r8.internal.EnumC8289lg0.f50039H;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00db, code lost:
    
        if (r3.equals(android.hardware.Camera.Parameters.FOCUS_MODE_MACRO) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00de, code lost:
    
        r4 = (com.android.tools.r8.internal.EnumC8289lg0) com.android.tools.r8.internal.EnumC8289lg0.f50040I.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e9, code lost:
    
        if (r4 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00eb, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ec, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f2, code lost:
    
        if (r9 >= r11) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f4, code lost:
    
        r2 = r17.substring(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0101, code lost:
    
        return new com.android.tools.r8.internal.C8456mg0(r3, r1, r2, r12, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e8, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ee, code lost:
    
        if (r5 == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f0, code lost:
    
        r3 = com.android.tools.r8.internal.EnumC8289lg0.ATTR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0102, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C8456mg0 a(String str) {
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        int length = str.length();
        String str2 = null;
        if (length == 0) {
            return null;
        }
        char charAt = str.charAt(0);
        char charAt2 = "?".charAt(0);
        char charAt3 = "@".charAt(0);
        if (charAt2 == charAt) {
            i11 = 3;
            i10 = 1;
            z10 = true;
        } else if (charAt3 != charAt) {
            i10 = 0;
            z10 = false;
            i11 = 1;
        } else {
            if (1 == length) {
                return null;
            }
            if (str.charAt(1) == '+') {
                i10 = 2;
                z10 = false;
            } else {
                z10 = false;
                i10 = 1;
            }
            i11 = i10;
        }
        if (i10 == 0 || i10 == length) {
            return null;
        }
        if (str.charAt(i10) == '*') {
            i10++;
            z11 = true;
        } else {
            z11 = false;
        }
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        int i17 = i10;
        while (true) {
            if ((i13 == -1 || i14 == -1) && i17 < length) {
                char charAt4 = str.charAt(i17);
                if (charAt4 != '/') {
                    if (charAt4 != ':') {
                        if (charAt4 == '[') {
                            while (']' != charAt4 && i17 < length - 1) {
                                i17++;
                                charAt4 = str.charAt(i17);
                            }
                        }
                    } else if (i14 != -1) {
                        continue;
                    } else {
                        if (i10 == i17) {
                            return null;
                        }
                        i16 = i17;
                        i12 = i17 + 1;
                        i14 = i10;
                        i10 = i12;
                    }
                } else if (i13 == -1) {
                    i15 = i17;
                    i12 = i17 + 1;
                    i13 = i10;
                    i10 = i12;
                }
                i17++;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C8456mg0.class == obj.getClass()) {
            C8456mg0 c8456mg0 = (C8456mg0) obj;
            if (this.f50379e == c8456mg0.f50379e && this.f50376b == c8456mg0.f50376b && Objects.equals(this.f50377c, c8456mg0.f50377c) && Objects.equals(this.f50378d, c8456mg0.f50378d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f50379e;
        return Objects.hash(AbstractC4291c.a(i10), this.f50376b, this.f50377c, this.f50378d);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int b10 = AbstractC4291c.b(this.f50379e);
        if (b10 == 0) {
            sb2.append("@");
        } else if (b10 == 1) {
            sb2.append("@+");
        } else if (b10 == 2) {
            sb2.append("?");
        }
        if (this.f50380f) {
            sb2.append('*');
        }
        String str = this.f50378d;
        if (str != null) {
            sb2.append(str);
            sb2.append(':');
        }
        if (this.f50379e != 4) {
            sb2.append(this.f50376b.f50064b);
            sb2.append('/');
        }
        sb2.append(this.f50377c);
        return sb2.toString();
    }
}
