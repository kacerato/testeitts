package Wd;

import he.InterfaceC13470z;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class AbstractC3180x extends c0 {

    public static final long f27702u = 1;

    public transient double[] f27703q;

    public double f27704r;

    public long f27705s;

    public boolean f27706t;

    public AbstractC3180x() {
        this.f27704r = 0.0d;
        this.f27705s = 0L;
    }

    public boolean Y0(double d10) {
        return nf(d10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27703q[i10] = this.f27704r;
        super.hf(i10);
    }

    public long i() {
        return this.f27705s;
    }

    public boolean i1(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27703q;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13470z.a(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27703q = new double[jf2];
        return jf2;
    }

    public double l() {
        return this.f27704r;
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
    
        r11.f27706t = true;
        r1[r4] = r12;
        r0[r4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0064, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int mf(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27703q;
        int length = bArr.length;
        int b10 = Vd.b.b(d10) & Integer.MAX_VALUE;
        int i10 = b10 % length;
        byte b11 = bArr[i10];
        this.f27706t = false;
        if (b11 == 0) {
            this.f27706t = true;
            dArr[i10] = d10;
            bArr[i10] = 1;
            return i10;
        }
        if (b11 != 1 || dArr[i10] != d10) {
            int i11 = (b10 % (length - 2)) + 1;
        }
        int i12 = -i10;
        return i12 - 1;
    }

    public int nf(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27703q;
        int length = bArr.length;
        int b10 = Vd.b.b(d10) & Integer.MAX_VALUE;
        int i10 = b10 % length;
        byte b11 = bArr[i10];
        if (b11 == 0) {
            return -1;
        }
        return (b11 == 1 && dArr[i10] == d10) ? i10 : of(d10, i10, b10, b11);
    }

    public int of(double d10, int i10, int i11, byte b10) {
        int length = this.f27703q.length;
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
            if (d10 == this.f27703q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int pf(double d10) {
        int b10 = Vd.b.b(d10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = b10 % bArr.length;
        byte b11 = bArr[length];
        this.f27706t = false;
        if (b11 != 0) {
            return (b11 == 1 && this.f27703q[length] == d10) ? (-length) - 1 : rf(d10, length, b10, b11);
        }
        this.f27706t = true;
        qf(length, d10);
        return length;
    }

    public void qf(int i10, double d10) {
        this.f27703q[i10] = d10;
        this.f27568l[i10] = 1;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27704r = objectInput.readDouble();
        this.f27705s = objectInput.readLong();
    }

    public int rf(double d10, int i10, int i11, byte b10) {
        int length = this.f27703q.length;
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
                    qf(i14, d10);
                    return i14;
                }
                this.f27706t = true;
                qf(i13, d10);
                return i13;
            }
            if (b10 == 1 && this.f27703q[i13] == d10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        qf(i14, d10);
        return i14;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeDouble(this.f27704r);
        objectOutput.writeLong(this.f27705s);
    }

    public AbstractC3180x(int i10) {
        super(i10);
        this.f27704r = 0.0d;
        this.f27705s = 0L;
    }

    public AbstractC3180x(int i10, float f10) {
        super(i10, f10);
        this.f27704r = 0.0d;
        this.f27705s = 0L;
    }

    public AbstractC3180x(int i10, float f10, double d10, long j10) {
        super(i10, f10);
        this.f27704r = d10;
        this.f27705s = j10;
    }
}
