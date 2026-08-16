package Wd;

import he.t0;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class d0 extends c0 {

    public static final long f27574u = 1;

    public transient short[] f27575q;

    public short f27576r;

    public byte f27577s;

    public boolean f27578t;

    public d0() {
        this.f27576r = (short) 0;
        this.f27577s = (byte) 0;
    }

    public boolean W0(short s10) {
        return nf(s10) >= 0;
    }

    public boolean h1(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27575q;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void hf(int i10) {
        this.f27575q[i10] = this.f27576r;
        super.hf(i10);
    }

    public byte i() {
        return this.f27577s;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27575q = new short[jf2];
        return jf2;
    }

    public short l() {
        return this.f27576r;
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
    
        r10.f27578t = true;
        r1[r4] = r11;
        r0[r4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005e, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int mf(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27575q;
        int length = bArr.length;
        int d10 = Vd.b.d(s10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b10 = bArr[i10];
        this.f27578t = false;
        if (b10 == 0) {
            this.f27578t = true;
            sArr[i10] = s10;
            bArr[i10] = 1;
            return i10;
        }
        if (b10 != 1 || sArr[i10] != s10) {
            int i11 = (d10 % (length - 2)) + 1;
        }
        int i12 = -i10;
        return i12 - 1;
    }

    public int nf(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27575q;
        int length = bArr.length;
        int d10 = Vd.b.d(s10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && sArr[i10] == s10) ? i10 : of(s10, i10, d10, b10);
    }

    public int of(short s10, int i10, int i11, byte b10) {
        int length = this.f27575q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        do {
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            byte b11 = this.f27568l[i13];
            if (b11 == 0) {
                return -1;
            }
            if (s10 == this.f27575q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int pf(short s10) {
        int d10 = Vd.b.d(s10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b10 = bArr[length];
        this.f27578t = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27575q[length] == s10) ? (-length) - 1 : rf(s10, length, d10, b10);
        }
        this.f27578t = true;
        qf(length, s10);
        return length;
    }

    public void qf(int i10, short s10) {
        this.f27575q[i10] = s10;
        this.f27568l[i10] = 1;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27576r = objectInput.readShort();
        this.f27577s = objectInput.readByte();
    }

    public int rf(short s10, int i10, int i11, byte b10) {
        int length = this.f27575q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        int i14 = -1;
        do {
            if (b10 == 2 && i14 == -1) {
                i14 = i13;
            }
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            b10 = this.f27568l[i13];
            if (b10 == 0) {
                if (i14 != -1) {
                    qf(i14, s10);
                    return i14;
                }
                this.f27578t = true;
                qf(i13, s10);
                return i13;
            }
            if (b10 == 1 && this.f27575q[i13] == s10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        qf(i14, s10);
        return i14;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeShort(this.f27576r);
        objectOutput.writeByte(this.f27577s);
    }

    public d0(int i10) {
        super(i10);
        this.f27576r = (short) 0;
        this.f27577s = (byte) 0;
    }

    public d0(int i10, float f10) {
        super(i10, f10);
        this.f27576r = (short) 0;
        this.f27577s = (byte) 0;
    }

    public d0(int i10, float f10, short s10, byte b10) {
        super(i10, f10);
        this.f27576r = s10;
        this.f27577s = b10;
    }
}
