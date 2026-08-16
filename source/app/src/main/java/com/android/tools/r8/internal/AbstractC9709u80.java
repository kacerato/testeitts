package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.AbstractC4291c;
import java.nio.charset.StandardCharsets;
import java.util.function.Predicate;

public abstract class AbstractC9709u80 implements com.android.tools.r8.naming.P {

    public static final byte[] f52788h = "sourceFile".getBytes();

    public final Predicate f52791c;

    public final boolean f52792d;

    public int f52789a = 0;

    public int f52790b = 0;

    public boolean f52793e = false;

    public boolean f52794f = false;

    public int f52795g = 9;

    public AbstractC9709u80(Predicate predicate, boolean z10) {
        this.f52791c = predicate;
        this.f52792d = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:198:0x01d9, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0113, code lost:
    
        if (r3[r2] == 35) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0170  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a() {
        byte[] bArr;
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        int i12;
        int i13;
        while (true) {
            this.f52789a = 0;
            this.f52790b = 0;
            bArr = null;
            do {
                byte[] e10 = e();
                if (e10 == null) {
                    break;
                }
                if (b() || bArr != null) {
                    int c10 = c() - d();
                    int length = bArr == null ? 0 : bArr.length;
                    int i14 = c10 + length;
                    byte[] bArr2 = new byte[i14];
                    if (bArr != null) {
                        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    }
                    System.arraycopy(e10, d(), bArr2, length, c10);
                    this.f52790b = i14;
                    bArr = bArr2;
                } else {
                    this.f52789a = d();
                    this.f52790b = c();
                    bArr = e10;
                }
            } while (b());
            if (bArr == null) {
                return null;
            }
            if (this.f52791c == null) {
                int i15 = this.f52789a;
                return new String(bArr, i15, this.f52790b - i15, StandardCharsets.UTF_8);
            }
            int i16 = this.f52789a;
            int i17 = this.f52790b;
            int i18 = 1;
            while (i18 != 9 && i18 != 6 && i18 != 8) {
                boolean z12 = AbstractC9208r80.f51981a;
                if (!z12 && i18 == 9) {
                    throw new AssertionError();
                }
                int b10 = AbstractC4291c.b(i18);
                if (b10 == 0) {
                    while (true) {
                        if (i16 >= i17) {
                            z10 = false;
                            break;
                        }
                        if (!Character.isWhitespace(bArr[i16])) {
                            z10 = true;
                            break;
                        }
                        i16++;
                    }
                    if (z10) {
                        i18 = 2;
                    }
                    i18 = 9;
                } else if (b10 == 1) {
                    if (bArr[i16] == 35) {
                        i18 = 7;
                    } else {
                        int i19 = i16;
                        while (i19 < i17) {
                            byte b11 = bArr[i19];
                            if (b11 == 32) {
                                i10 = i19 - i16;
                                break;
                            }
                            if (Character.isWhitespace(b11)) {
                                break;
                            }
                            i19++;
                        }
                        i10 = -1;
                        i16 = i19;
                        if (i10 > 0) {
                            i18 = 3;
                        }
                        i18 = 9;
                    }
                } else if (b10 != 2) {
                    if (b10 == 3) {
                        i12 = i16;
                        while (i12 < i17) {
                            byte b12 = bArr[i12];
                            if (b12 == 58) {
                                i13 = i12 - i16;
                                break;
                            }
                            if (Character.isWhitespace(b12)) {
                                break;
                            }
                            i12++;
                        }
                        i13 = -1;
                        if (i13 > 0) {
                            i18 = 5;
                            i16 = i12;
                        }
                        i16 = i12;
                    } else if (b10 == 4) {
                        i12 = i16 + 1;
                        if (bArr[i16] == 58) {
                            i16 = i12;
                            while (true) {
                                if (i16 >= i17) {
                                    break;
                                }
                                if (Character.isWhitespace(bArr[i16])) {
                                    i16++;
                                }
                            }
                            i18 = 6;
                        }
                        i16 = i12;
                    } else {
                        if (b10 != 6) {
                            if (z12 || i18 == 9 || i18 == 6 || i18 == 8) {
                                throw new C5417Jv0("Should not compute next state on terminal state");
                            }
                            throw new AssertionError();
                        }
                        while (i16 < i17) {
                            i12 = i16 + 1;
                            if (bArr[i16] == 123) {
                                while (true) {
                                    if (i12 >= i17) {
                                        break;
                                    }
                                    int i20 = i12 + 1;
                                    if (bArr[i12] == 58) {
                                        i12 += 2;
                                        byte b13 = bArr[i20];
                                        if (b13 == 39 || b13 == 34) {
                                            int i21 = i17 - i12;
                                            byte[] bArr3 = f52788h;
                                            if (i21 >= bArr3.length) {
                                                int length2 = bArr3.length + i12;
                                                int i22 = 0;
                                                while (true) {
                                                    if (i12 < length2) {
                                                        int i23 = i22 + 1;
                                                        if (f52788h[i22] != bArr[i12]) {
                                                            break;
                                                        }
                                                        i12++;
                                                        i22 = i23;
                                                    } else {
                                                        i16 = i12 + 1;
                                                        byte b14 = bArr[i12];
                                                        if (b14 == 39 || b14 == 34) {
                                                            i18 = 8;
                                                        } else {
                                                            i12 = i16;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        i12 = i20;
                                    }
                                }
                                i16 = i12;
                            } else {
                                i16 = i12;
                            }
                        }
                    }
                    i18 = 9;
                } else {
                    int i24 = i16 + 1;
                    if (bArr[i16] == 32) {
                        i11 = i16 + 2;
                        if (bArr[i24] == 45) {
                            i24 = i16 + 3;
                            if (bArr[i11] == 62) {
                                i11 = i16 + 4;
                                if (bArr[i24] == 32) {
                                    z11 = true;
                                    i16 = i11;
                                    if (z11) {
                                        i18 = 4;
                                    }
                                    i18 = 9;
                                }
                            }
                        }
                        i16 = i11;
                        z11 = false;
                        if (z11) {
                        }
                        i18 = 9;
                    }
                    i11 = i24;
                    i16 = i11;
                    z11 = false;
                    if (z11) {
                    }
                    i18 = 9;
                }
            }
            this.f52795g = i18;
            if (i18 == 6) {
                this.f52794f = true;
                int i25 = this.f52789a;
                String str = new String(bArr, i25, this.f52790b - i25, StandardCharsets.UTF_8);
                boolean test = this.f52791c.test(AbstractC4281a.a(str, 1, str.indexOf(">") + 2));
                this.f52793e = test;
                if (test || this.f52792d) {
                    break;
                }
            } else if (i18 != 8 || !this.f52792d) {
                if (this.f52793e || (!this.f52794f && this.f52792d)) {
                    break;
                }
            } else {
                int i26 = this.f52789a;
                return new String(bArr, i26, this.f52790b - i26, StandardCharsets.UTF_8);
            }
        }
        int i27 = this.f52789a;
        return new String(bArr, i27, this.f52790b - i27, StandardCharsets.UTF_8);
    }

    public abstract boolean b();

    public abstract int c();

    public abstract int d();

    public abstract byte[] e();
}
