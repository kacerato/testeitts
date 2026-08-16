package com.android.tools.r8.internal;

import java.io.OutputStream;
import java.util.Iterator;

public class ET extends AbstractC8206l8 {

    public final byte[] f39875d;

    public int f39876e = 0;

    public ET(byte[] bArr) {
        this.f39875d = bArr;
    }

    @Override
    public final int a() {
        return 0;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final boolean c() {
        byte[] bArr = this.f39875d;
        return AbstractC9505sw0.a(bArr, 0, bArr.length) == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8206l8) || size() != ((AbstractC8206l8) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof ET) {
            return a((ET) obj, 0, size());
        }
        if (obj instanceof C5395Jk0) {
            return obj.equals(this);
        }
        String valueOf = String.valueOf(obj.getClass());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 49);
        sb2.append("Has a new type of ByteString been created? Found ");
        sb2.append(valueOf);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public final int g() {
        return this.f39876e;
    }

    @Override
    public final String h() {
        byte[] bArr = this.f39875d;
        return new String(bArr, 0, bArr.length, "UTF-8");
    }

    public final int hashCode() {
        int i10 = this.f39876e;
        if (i10 == 0) {
            int size = size();
            i10 = a(size, 0, size);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f39876e = i10;
        }
        return i10;
    }

    @Override
    public Iterator iterator() {
        return new DT(this);
    }

    @Override
    public int size() {
        return this.f39875d.length;
    }

    public final boolean a(ET et, int i10, int i11) {
        byte[] bArr = et.f39875d;
        if (i11 <= bArr.length) {
            if (i10 + i11 <= bArr.length) {
                byte[] bArr2 = this.f39875d;
                int i12 = 0;
                while (i12 < i11) {
                    if (bArr2[i12] != bArr[i10]) {
                        return false;
                    }
                    i12++;
                    i10++;
                }
                return true;
            }
            int length = et.f39875d.length;
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i10);
            sb2.append(", ");
            sb2.append(i11);
            sb2.append(", ");
            sb2.append(length);
            throw new IllegalArgumentException(sb2.toString());
        }
        int length2 = this.f39875d.length;
        StringBuilder sb3 = new StringBuilder(40);
        sb3.append("Length too large: ");
        sb3.append(i11);
        sb3.append(length2);
        throw new IllegalArgumentException(sb3.toString());
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.f39875d, i10, bArr, i11, i12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r0[r10] > (-65)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0050, code lost:
    
        if (r0[r10] > (-65)) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009c, code lost:
    
        if (r0[r9] > (-65)) goto L67;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, int i11, int i12) {
        byte b10;
        int i13;
        int i14;
        byte[] bArr = this.f39875d;
        int i15 = i12 + i11;
        if (i10 != 0) {
            if (i11 >= i15) {
                return i10;
            }
            byte b11 = (byte) i10;
            if (b11 < -32) {
                if (b11 >= -62) {
                    i14 = i11 + 1;
                }
                return -1;
            }
            if (b11 < -16) {
                byte b12 = (byte) (~(i10 >> 8));
                if (b12 == 0) {
                    int i16 = i11 + 1;
                    byte b13 = bArr[i11];
                    if (i16 >= i15) {
                        if (b11 > -12 || b13 > -65) {
                            return -1;
                        }
                        return (b13 << 8) ^ b11;
                    }
                    i11 = i16;
                    b12 = b13;
                }
                if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                    i14 = i11 + 1;
                }
                return -1;
            }
            byte b14 = (byte) (~(i10 >> 8));
            if (b14 == 0) {
                i13 = i11 + 1;
                b14 = bArr[i11];
                if (i13 >= i15) {
                    if (b11 > -12 || b14 > -65) {
                        return -1;
                    }
                    return (b14 << 8) ^ b11;
                }
                b10 = 0;
            } else {
                b10 = (byte) (i10 >> 16);
                i13 = i11;
            }
            if (b10 == 0) {
                int i17 = i13 + 1;
                byte b15 = bArr[i13];
                if (i17 >= i15) {
                    if (b11 > -12 || b14 > -65 || b15 > -65) {
                        return -1;
                    }
                    return (b15 << 16) ^ ((b14 << 8) ^ b11);
                }
                b10 = b15;
                i13 = i17;
            }
            if (b14 <= -65) {
                if ((((b14 + 112) + (b11 << 28)) >> 30) == 0 && b10 <= -65) {
                    i11 = i13 + 1;
                }
            }
            return -1;
            i11 = i14;
        }
        return AbstractC9505sw0.a(bArr, i11, i15);
    }

    @Override
    public final void a(OutputStream outputStream, int i10, int i11) {
        outputStream.write(this.f39875d, i10, i11);
    }

    @Override
    public final int a(int i10, int i11, int i12) {
        byte[] bArr = this.f39875d;
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }
}
