package Wd;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class a0 extends c0 {

    public static final long f27544u = 1;

    public transient long[] f27545q;

    public long f27546r;

    public short f27547s;

    public boolean f27548t;

    public a0() {
        this.f27546r = 0L;
        this.f27547s = (short) 0;
    }

    public boolean X0(long j10) {
        return nf(j10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27545q[i10] = this.f27546r;
        super.hf(i10);
    }

    public short i() {
        return this.f27547s;
    }

    public boolean j1(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27545q;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !b0Var.a(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27545q = new long[jf2];
        return jf2;
    }

    public long l() {
        return this.f27546r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        if (r5 != 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        r4 = r4 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r4 >= 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r4 = r4 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        r5 = r0[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if (r5 != 1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        if (r1[r4] != r12) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r5 != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
    
        r8 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0041, code lost:
    
        if (r5 == 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        if (r5 == 2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        if (r1[r8] == r12) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0052, code lost:
    
        if (r5 != 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0054, code lost:
    
        r12 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        r1[r8] = r12;
        r0[r8] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005a, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004b, code lost:
    
        r8 = r8 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x004c, code lost:
    
        if (r8 >= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x004e, code lost:
    
        r8 = r8 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004f, code lost:
    
        r5 = r0[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005b, code lost:
    
        if (r5 != 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x005e, code lost:
    
        r11.f27548t = true;
        r1[r4] = r12;
        r0[r4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0064, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int mf(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27545q;
        int length = bArr.length;
        int e10 = Vd.b.e(j10) & Integer.MAX_VALUE;
        int i10 = e10 % length;
        byte b10 = bArr[i10];
        this.f27548t = false;
        if (b10 == 0) {
            this.f27548t = true;
            jArr[i10] = j10;
            bArr[i10] = 1;
            return i10;
        }
        if (b10 != 1 || jArr[i10] != j10) {
            int i11 = (e10 % (length - 2)) + 1;
        }
        int i12 = -i10;
        return i12 - 1;
    }

    public int nf(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27545q;
        int length = bArr.length;
        int e10 = Vd.b.e(j10) & Integer.MAX_VALUE;
        int i10 = e10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && jArr[i10] == j10) ? i10 : of(j10, i10, e10, b10);
    }

    public int of(long j10, int i10, int i11, byte b10) {
        int length = this.f27545q.length;
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
            if (j10 == this.f27545q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int pf(long j10) {
        int e10 = Vd.b.e(j10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = e10 % bArr.length;
        byte b10 = bArr[length];
        this.f27548t = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27545q[length] == j10) ? (-length) - 1 : rf(j10, length, e10, b10);
        }
        this.f27548t = true;
        qf(length, j10);
        return length;
    }

    public void qf(int i10, long j10) {
        this.f27545q[i10] = j10;
        this.f27568l[i10] = 1;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27546r = objectInput.readLong();
        this.f27547s = objectInput.readShort();
    }

    public int rf(long j10, int i10, int i11, byte b10) {
        int length = this.f27545q.length;
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
                    qf(i14, j10);
                    return i14;
                }
                this.f27548t = true;
                qf(i13, j10);
                return i13;
            }
            if (b10 == 1 && this.f27545q[i13] == j10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        qf(i14, j10);
        return i14;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeLong(this.f27546r);
        objectOutput.writeShort(this.f27547s);
    }

    public a0(int i10) {
        super(i10);
        this.f27546r = 0L;
        this.f27547s = (short) 0;
    }

    public a0(int i10, float f10) {
        super(i10, f10);
        this.f27546r = 0L;
        this.f27547s = (short) 0;
    }

    public a0(int i10, float f10, long j10, short s10) {
        super(i10, f10);
        this.f27546r = j10;
        this.f27547s = s10;
    }
}
