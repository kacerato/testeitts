package Wd;

import he.InterfaceC13453h;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class AbstractC3164g extends c0 {

    public static final long f27598u = 1;

    public transient byte[] f27599q;

    public byte f27600r;

    public long f27601s;

    public boolean f27602t;

    public AbstractC3164g() {
        this.f27600r = (byte) 0;
        this.f27601s = 0L;
    }

    public boolean V0(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27599q;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13453h.a(bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public boolean a1(byte b10) {
        return nf(b10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27599q[i10] = this.f27600r;
        super.hf(i10);
    }

    public long i() {
        return this.f27601s;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27599q = new byte[jf2];
        return jf2;
    }

    public byte l() {
        return this.f27600r;
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
    
        r10.f27602t = true;
        r1[r4] = r11;
        r0[r4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005e, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int mf(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27599q;
        int length = bArr.length;
        int d10 = Vd.b.d(b10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b11 = bArr[i10];
        this.f27602t = false;
        if (b11 == 0) {
            this.f27602t = true;
            bArr2[i10] = b10;
            bArr[i10] = 1;
            return i10;
        }
        if (b11 != 1 || bArr2[i10] != b10) {
            int i11 = (d10 % (length - 2)) + 1;
        }
        int i12 = -i10;
        return i12 - 1;
    }

    public int nf(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27599q;
        int length = bArr.length;
        int d10 = Vd.b.d(b10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b11 = bArr[i10];
        if (b11 == 0) {
            return -1;
        }
        return (b11 == 1 && bArr2[i10] == b10) ? i10 : of(b10, i10, d10, b11);
    }

    public int of(byte b10, int i10, int i11, byte b11) {
        int length = this.f27599q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        do {
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            byte b12 = this.f27568l[i13];
            if (b12 == 0) {
                return -1;
            }
            if (b10 == this.f27599q[i13] && b12 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int pf(byte b10) {
        int d10 = Vd.b.d(b10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b11 = bArr[length];
        this.f27602t = false;
        if (b11 != 0) {
            return (b11 == 1 && this.f27599q[length] == b10) ? (-length) - 1 : rf(b10, length, d10, b11);
        }
        this.f27602t = true;
        qf(length, b10);
        return length;
    }

    public void qf(int i10, byte b10) {
        this.f27599q[i10] = b10;
        this.f27568l[i10] = 1;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27600r = objectInput.readByte();
        this.f27601s = objectInput.readLong();
    }

    public int rf(byte b10, int i10, int i11, byte b11) {
        int length = this.f27599q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        int i14 = -1;
        do {
            if (b11 == 2 && i14 == -1) {
                i14 = i13;
            }
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            b11 = this.f27568l[i13];
            if (b11 == 0) {
                if (i14 != -1) {
                    qf(i14, b10);
                    return i14;
                }
                this.f27602t = true;
                qf(i13, b10);
                return i13;
            }
            if (b11 == 1 && this.f27599q[i13] == b10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        qf(i14, b10);
        return i14;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeByte(this.f27600r);
        objectOutput.writeLong(this.f27601s);
    }

    public AbstractC3164g(int i10) {
        super(i10);
        this.f27600r = (byte) 0;
        this.f27601s = 0L;
    }

    public AbstractC3164g(int i10, float f10) {
        super(i10, f10);
        this.f27600r = (byte) 0;
        this.f27601s = 0L;
    }

    public AbstractC3164g(int i10, float f10, byte b10, long j10) {
        super(i10, f10);
        this.f27600r = b10;
        this.f27601s = j10;
    }
}
