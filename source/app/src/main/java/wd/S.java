package Wd;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class S extends c0 {

    public static final long f27500u = 1;

    public transient int[] f27501q;

    public int f27502r;

    public short f27503s;

    public boolean f27504t;

    public S() {
        this.f27502r = 0;
        this.f27503s = (short) 0;
    }

    public boolean U0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27501q;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !s10.a(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public boolean contains(int i10) {
        return nf(i10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27501q[i10] = this.f27502r;
        super.hf(i10);
    }

    public short i() {
        return this.f27503s;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27501q = new int[jf2];
        return jf2;
    }

    public int l() {
        return this.f27502r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        if (r5 != 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        r4 = r4 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        if (r4 >= 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        r4 = r4 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        r5 = r0[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r5 != 1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (r1[r4] != r11) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
    
        if (r5 != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003c, code lost:
    
        r8 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        if (r5 == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        if (r5 == 2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0043, code lost:
    
        if (r1[r8] == r11) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
    
        if (r5 != 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
    
        r11 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        r1[r8] = r11;
        r0[r8] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0054, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        r8 = r8 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0046, code lost:
    
        if (r8 >= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0048, code lost:
    
        r8 = r8 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0049, code lost:
    
        r5 = r0[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0055, code lost:
    
        if (r5 != 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0058, code lost:
    
        r10.f27504t = true;
        r1[r4] = r11;
        r0[r4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005e, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int mf(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27501q;
        int length = bArr.length;
        int d10 = Vd.b.d(i10) & Integer.MAX_VALUE;
        int i11 = d10 % length;
        byte b10 = bArr[i11];
        this.f27504t = false;
        if (b10 == 0) {
            this.f27504t = true;
            iArr[i11] = i10;
            bArr[i11] = 1;
            return i11;
        }
        if (b10 != 1 || iArr[i11] != i10) {
            int i12 = (d10 % (length - 2)) + 1;
        }
        int i13 = -i11;
        return i13 - 1;
    }

    public int nf(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27501q;
        int length = bArr.length;
        int d10 = Vd.b.d(i10) & Integer.MAX_VALUE;
        int i11 = d10 % length;
        byte b10 = bArr[i11];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && iArr[i11] == i10) ? i11 : of(i10, i11, d10, b10);
    }

    public int of(int i10, int i11, int i12, byte b10) {
        int length = this.f27501q.length;
        int i13 = (i12 % (length - 2)) + 1;
        int i14 = i11;
        do {
            i14 -= i13;
            if (i14 < 0) {
                i14 += length;
            }
            byte b11 = this.f27568l[i14];
            if (b11 == 0) {
                return -1;
            }
            if (i10 == this.f27501q[i14] && b11 != 2) {
                return i14;
            }
        } while (i14 != i11);
        return -1;
    }

    public int pf(int i10) {
        int d10 = Vd.b.d(i10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b10 = bArr[length];
        this.f27504t = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27501q[length] == i10) ? (-length) - 1 : rf(i10, length, d10, b10);
        }
        this.f27504t = true;
        qf(length, i10);
        return length;
    }

    public void qf(int i10, int i11) {
        this.f27501q[i10] = i11;
        this.f27568l[i10] = 1;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27502r = objectInput.readInt();
        this.f27503s = objectInput.readShort();
    }

    public int rf(int i10, int i11, int i12, byte b10) {
        int length = this.f27501q.length;
        int i13 = (i12 % (length - 2)) + 1;
        int i14 = i11;
        int i15 = -1;
        do {
            if (b10 == 2 && i15 == -1) {
                i15 = i14;
            }
            i14 -= i13;
            if (i14 < 0) {
                i14 += length;
            }
            b10 = this.f27568l[i14];
            if (b10 == 0) {
                if (i15 != -1) {
                    qf(i15, i10);
                    return i15;
                }
                this.f27504t = true;
                qf(i14, i10);
                return i14;
            }
            if (b10 == 1 && this.f27501q[i14] == i10) {
                return (-i14) - 1;
            }
        } while (i14 != i11);
        if (i15 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        qf(i15, i10);
        return i15;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27502r);
        objectOutput.writeShort(this.f27503s);
    }

    public S(int i10) {
        super(i10);
        this.f27502r = 0;
        this.f27503s = (short) 0;
    }

    public S(int i10, float f10) {
        super(i10, f10);
        this.f27502r = 0;
        this.f27503s = (short) 0;
    }

    public S(int i10, float f10, int i11, short s10) {
        super(i10, f10);
        this.f27502r = i11;
        this.f27503s = s10;
    }
}
