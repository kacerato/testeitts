package oh;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Exception;

public class r extends FilterInputStream implements InterfaceC14531n0 {

    public final int f98974b;

    public final boolean f98975c;

    public final byte[][] f98976d;

    public r(InputStream inputStream) {
        this(inputStream, j1.a(inputStream));
    }

    public static B d(int i10, b1 b1Var, byte[][] bArr) throws IOException {
        try {
            switch (i10) {
                case 1:
                    return C14512e.E(f(b1Var, bArr));
                case 2:
                    return C14539s.E(b1Var.g());
                case 3:
                    return AbstractC14508c.E(b1Var.g());
                case 4:
                    return AbstractC14551y.E(b1Var.g());
                case 5:
                    return AbstractC14541t.E(b1Var.g());
                case 6:
                    C14549x.F(b1Var.e());
                    return C14549x.H(f(b1Var, bArr), true);
                case 7:
                    return C14547w.E(b1Var.g());
                case 8:
                case 9:
                case 11:
                case 15:
                case 16:
                case 17:
                case 29:
                default:
                    throw new IOException("unknown tag " + i10 + " encountered");
                case 10:
                    return C14522j.E(f(b1Var, bArr), true);
                case 12:
                    return Q.E(b1Var.g());
                case 13:
                    D.F(b1Var.e());
                    return D.H(f(b1Var, bArr), true);
                case 14:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                    throw new IOException("unsupported tag " + i10 + " encountered");
                case 18:
                    return AbstractC14543u.E(b1Var.g());
                case 19:
                    return C.E(b1Var.g());
                case 20:
                    return K.E(b1Var.g());
                case 21:
                    return W.E(b1Var.g());
                case 22:
                    return AbstractC14536q.E(b1Var.g());
                case 23:
                    return P.E(b1Var.g());
                case 24:
                    return C14530n.H(b1Var.g());
                case 25:
                    return AbstractC14534p.E(b1Var.g());
                case 26:
                    return X.E(b1Var.g());
                case 27:
                    return AbstractC14528m.E(b1Var.g());
                case 28:
                    return S.E(b1Var.g());
                case 30:
                    return AbstractC14506b.F(e(b1Var));
            }
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception(e10.getMessage(), e10);
        } catch (IllegalStateException e11) {
            throw new ASN1Exception(e11.getMessage(), e11);
        }
    }

    public static char[] e(b1 b1Var) throws IOException {
        int e10 = b1Var.e();
        if ((e10 & 1) != 0) {
            throw new IOException("malformed BMPString encoding encountered");
        }
        int i10 = e10 / 2;
        char[] cArr = new char[i10];
        byte[] bArr = new byte[8];
        int i11 = 0;
        int i12 = 0;
        while (e10 >= 8) {
            if (C13260d.h(b1Var, bArr, 0, 8) != 8) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            cArr[i12] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[i12 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[i12 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[i12 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            i12 += 4;
            e10 -= 8;
        }
        if (e10 > 0) {
            if (C13260d.h(b1Var, bArr, 0, e10) != e10) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            do {
                int i13 = i11 + 1;
                int i14 = bArr[i11] << 8;
                i11 += 2;
                cArr[i12] = (char) ((bArr[i13] & 255) | i14);
                i12++;
            } while (i11 < e10);
        }
        if (b1Var.e() == 0 && i10 == i12) {
            return cArr;
        }
        throw new IllegalStateException();
    }

    public static byte[] f(b1 b1Var, byte[][] bArr) throws IOException {
        int e10 = b1Var.e();
        if (e10 >= bArr.length) {
            return b1Var.g();
        }
        byte[] bArr2 = bArr[e10];
        if (bArr2 == null) {
            bArr2 = new byte[e10];
            bArr[e10] = bArr2;
        }
        b1Var.f(bArr2);
        return bArr2;
    }

    public static int j(InputStream inputStream, int i10, boolean z10) throws IOException {
        int read = inputStream.read();
        if ((read >>> 7) == 0) {
            return read;
        }
        if (128 == read) {
            return -1;
        }
        if (read < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (255 == read) {
            throw new IOException("invalid long form definite-length 0xFF");
        }
        int i11 = read & 127;
        int i12 = 0;
        int i13 = 0;
        do {
            int read2 = inputStream.read();
            if (read2 < 0) {
                throw new EOFException("EOF found reading length");
            }
            if ((i12 >>> 23) != 0) {
                throw new IOException("long form definite-length more than 31 bits");
            }
            i12 = (i12 << 8) + read2;
            i13++;
        } while (i13 < i11);
        if (i12 < i10 || z10) {
            return i12;
        }
        throw new IOException("corrupted stream - out of bounds length found: " + i12 + " >= " + i10);
    }

    public static int l(InputStream inputStream, int i10) throws IOException {
        int i11 = i10 & 31;
        if (i11 != 31) {
            return i11;
        }
        int read = inputStream.read();
        if (read < 31) {
            if (read < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            throw new IOException("corrupted stream - high tag number < 31 found");
        }
        int i12 = read & 127;
        if (i12 == 0) {
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        while ((read & 128) != 0) {
            if ((i12 >>> 24) != 0) {
                throw new IOException("Tag number more than 31 bits");
            }
            int i13 = i12 << 7;
            int read2 = inputStream.read();
            if (read2 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            i12 = i13 | (read2 & 127);
            read = read2;
        }
        return i12;
    }

    public AbstractC14508c a(C14518h c14518h) throws IOException {
        int i10 = c14518h.i();
        AbstractC14508c[] abstractC14508cArr = new AbstractC14508c[i10];
        for (int i11 = 0; i11 != i10; i11++) {
            InterfaceC14516g g10 = c14518h.g(i11);
            if (!(g10 instanceof AbstractC14508c)) {
                throw new ASN1Exception("unknown object encountered in constructed BIT STRING: " + ((Object) g10.getClass()));
            }
            abstractC14508cArr[i11] = (AbstractC14508c) g10;
        }
        return new Y(abstractC14508cArr);
    }

    public AbstractC14551y b(C14518h c14518h) throws IOException {
        int i10 = c14518h.i();
        AbstractC14551y[] abstractC14551yArr = new AbstractC14551y[i10];
        for (int i11 = 0; i11 != i10; i11++) {
            InterfaceC14516g g10 = c14518h.g(i11);
            if (!(g10 instanceof AbstractC14551y)) {
                throw new ASN1Exception("unknown object encountered in constructed OCTET STRING: " + ((Object) g10.getClass()));
            }
            abstractC14551yArr[i11] = (AbstractC14551y) g10;
        }
        return new C14509c0(abstractC14551yArr);
    }

    public B c(int i10, int i11, int i12) throws IOException {
        b1 b1Var = new b1(this, i12, this.f98974b);
        if ((i10 & 224) == 0) {
            return d(i11, b1Var, this.f98976d);
        }
        int i13 = i10 & 192;
        if (i13 != 0) {
            return m(i13, i11, (i10 & 32) != 0, b1Var);
        }
        if (i11 == 3) {
            return a(o(b1Var));
        }
        if (i11 == 4) {
            return b(o(b1Var));
        }
        if (i11 == 8) {
            return T0.a(o(b1Var)).N();
        }
        if (i11 == 16) {
            return b1Var.e() < 1 ? T0.f98832a : this.f98975c ? new f1(b1Var.g()) : T0.a(o(b1Var));
        }
        if (i11 == 17) {
            return T0.b(o(b1Var));
        }
        throw new IOException("unknown tag " + i11 + " encountered");
    }

    public int g() {
        return this.f98974b;
    }

    public int h() throws IOException {
        return j(this, this.f98974b, false);
    }

    public B k() throws IOException {
        int read = read();
        if (read <= 0) {
            if (read != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int l10 = l(this, read);
        int h10 = h();
        if (h10 >= 0) {
            try {
                return c(read, l10, h10);
            } catch (IllegalArgumentException e10) {
                throw new ASN1Exception("corrupted stream detected", e10);
            }
        }
        if ((read & 32) == 0) {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        I i10 = new I(new d1(this, this.f98974b), this.f98974b, this.f98976d);
        int i11 = read & 192;
        if (i11 != 0) {
            return i10.c(i11, l10);
        }
        if (l10 == 3) {
            return Z.e(i10);
        }
        if (l10 == 4) {
            return C14513e0.e(i10);
        }
        if (l10 == 8) {
            return C14542t0.e(i10);
        }
        if (l10 == 16) {
            return C14521i0.e(i10);
        }
        if (l10 == 17) {
            return C14525k0.e(i10);
        }
        throw new IOException("unknown BER object encountered");
    }

    public B m(int i10, int i11, boolean z10, b1 b1Var) throws IOException {
        return !z10 ? M.J(i10, i11, b1Var.g()) : M.H(i10, i11, o(b1Var));
    }

    public C14518h n() throws IOException {
        B k10 = k();
        if (k10 == null) {
            return new C14518h(0);
        }
        C14518h c14518h = new C14518h();
        do {
            c14518h.a(k10);
            k10 = k();
        } while (k10 != null);
        return c14518h;
    }

    public C14518h o(b1 b1Var) throws IOException {
        int e10 = b1Var.e();
        return e10 < 1 ? new C14518h(0) : new r(b1Var, e10, this.f98975c, this.f98976d).n();
    }

    public void readFully(byte[] bArr) throws IOException {
        if (C13260d.h(this, bArr, 0, bArr.length) != bArr.length) {
            throw new EOFException("EOF encountered in middle of object");
        }
    }

    public r(InputStream inputStream, int i10) {
        this(inputStream, i10, false);
    }

    public r(InputStream inputStream, int i10, boolean z10) {
        this(inputStream, i10, z10, new byte[11]);
    }

    public r(InputStream inputStream, int i10, boolean z10, byte[][] bArr) {
        super(inputStream);
        this.f98974b = i10;
        this.f98975c = z10;
        this.f98976d = bArr;
    }

    public r(InputStream inputStream, boolean z10) {
        this(inputStream, j1.a(inputStream), z10);
    }

    public r(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public r(byte[] bArr, boolean z10) {
        this(new ByteArrayInputStream(bArr), bArr.length, z10);
    }
}
