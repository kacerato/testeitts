package Sl;

import Bi.G;
import Bi.InterfaceC2392y;
import Bi.r;
import Ii.L;
import Ii.O;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;

public class l extends G implements Cloneable {

    public static final int f23727A = 0;

    public static final int f23728B = 1;

    public static final l f23729C = new l(439, 2048, 146, 1, 1, 0.165d, 490.0d, 280.0d, false, true, 0, new L());

    public static final l f23730D = new l(439, 2048, 9, 8, 5, 1, 1, 0.165d, 490.0d, 280.0d, false, true, 0, new L());

    public static final l f23731E = new l(743, 2048, 248, 1, 1, 0.127d, 560.0d, 360.0d, true, false, 0, new O());

    public static final l f23732F = new l(743, 2048, 11, 11, 15, 1, 1, 0.127d, 560.0d, 360.0d, true, false, 0, new O());

    public static final l f23733G = new l(157, 256, 29, 1, 1, 0.38d, 200.0d, 80.0d, false, false, 0, new L());

    public static final l f23734H = new l(157, 256, 5, 5, 8, 1, 1, 0.38d, 200.0d, 80.0d, false, false, 0, new L());

    public static final int f23735y = 0;

    public static final int f23736z = 1;

    public int f23737d;

    public int f23738e;

    public int f23739f;

    public int f23740g;

    public int f23741h;

    public int f23742i;

    public int f23743j;

    public double f23744k;

    public double f23745l;

    public double f23746m;

    public double f23747n;

    public int f23748o;

    public double f23749p;

    public double f23750q;

    public boolean f23751r;

    public int f23752s;

    public int f23753t;

    public boolean f23754u;

    public int f23755v;

    public InterfaceC2392y f23756w;

    public int f23757x;

    public l(int i10, int i11, int i12, int i13, int i14, double d10, double d11, double d12, boolean z10, boolean z11, int i15, InterfaceC2392y interfaceC2392y) {
        super(r.h(), i10);
        this.f23748o = 100;
        this.f23753t = 6;
        this.f23737d = i10;
        this.f23738e = i11;
        this.f23739f = i12;
        this.f23743j = i13;
        this.f23752s = i14;
        this.f23744k = d10;
        this.f23746m = d11;
        this.f23749p = d12;
        this.f23751r = z10;
        this.f23754u = z11;
        this.f23755v = i15;
        this.f23756w = interfaceC2392y;
        this.f23757x = 0;
        e();
    }

    private void e() {
        double d10 = this.f23744k;
        this.f23745l = d10 * d10;
        double d11 = this.f23746m;
        this.f23747n = d11 * d11;
        double d12 = this.f23749p;
        this.f23750q = d12 * d12;
    }

    public l clone() {
        return this.f23757x == 0 ? new l(this.f23737d, this.f23738e, this.f23739f, this.f23743j, this.f23752s, this.f23744k, this.f23746m, this.f23749p, this.f23751r, this.f23754u, this.f23755v, this.f23756w) : new l(this.f23737d, this.f23738e, this.f23740g, this.f23741h, this.f23742i, this.f23743j, this.f23752s, this.f23744k, this.f23746m, this.f23749p, this.f23751r, this.f23754u, this.f23755v, this.f23756w);
    }

    public n d() {
        return new n(this.f23737d, this.f23738e, this.f23739f, this.f23743j, this.f23744k, this.f23746m, this.f23756w);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f23743j != lVar.f23743j || this.f23737d != lVar.f23737d || this.f23752s != lVar.f23752s || Double.doubleToLongBits(this.f23744k) != Double.doubleToLongBits(lVar.f23744k) || Double.doubleToLongBits(this.f23745l) != Double.doubleToLongBits(lVar.f23745l) || this.f23753t != lVar.f23753t || this.f23739f != lVar.f23739f || this.f23740g != lVar.f23740g || this.f23741h != lVar.f23741h || this.f23742i != lVar.f23742i) {
            return false;
        }
        InterfaceC2392y interfaceC2392y = this.f23756w;
        if (interfaceC2392y == null) {
            if (lVar.f23756w != null) {
                return false;
            }
        } else if (!interfaceC2392y.b().equals(lVar.f23756w.b())) {
            return false;
        }
        return this.f23755v == lVar.f23755v && Double.doubleToLongBits(this.f23749p) == Double.doubleToLongBits(lVar.f23749p) && Double.doubleToLongBits(this.f23750q) == Double.doubleToLongBits(lVar.f23750q) && Double.doubleToLongBits(this.f23746m) == Double.doubleToLongBits(lVar.f23746m) && Double.doubleToLongBits(this.f23747n) == Double.doubleToLongBits(lVar.f23747n) && this.f23757x == lVar.f23757x && this.f23751r == lVar.f23751r && this.f23738e == lVar.f23738e && this.f23748o == lVar.f23748o && this.f23754u == lVar.f23754u;
    }

    public void f(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f23737d);
        dataOutputStream.writeInt(this.f23738e);
        dataOutputStream.writeInt(this.f23739f);
        dataOutputStream.writeInt(this.f23740g);
        dataOutputStream.writeInt(this.f23741h);
        dataOutputStream.writeInt(this.f23742i);
        dataOutputStream.writeInt(this.f23743j);
        dataOutputStream.writeInt(this.f23752s);
        dataOutputStream.writeDouble(this.f23744k);
        dataOutputStream.writeDouble(this.f23746m);
        dataOutputStream.writeDouble(this.f23749p);
        dataOutputStream.writeInt(this.f23748o);
        dataOutputStream.writeBoolean(this.f23751r);
        dataOutputStream.writeBoolean(this.f23754u);
        dataOutputStream.writeInt(this.f23753t);
        dataOutputStream.write(this.f23755v);
        dataOutputStream.writeUTF(this.f23756w.b());
        dataOutputStream.write(this.f23757x);
    }

    public int hashCode() {
        int i10 = ((((this.f23743j + 31) * 31) + this.f23737d) * 31) + this.f23752s;
        long doubleToLongBits = Double.doubleToLongBits(this.f23744k);
        int i11 = (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f23745l);
        int i12 = ((((((((((((i11 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + this.f23753t) * 31) + this.f23739f) * 31) + this.f23740g) * 31) + this.f23741h) * 31) + this.f23742i) * 31;
        InterfaceC2392y interfaceC2392y = this.f23756w;
        int hashCode = ((i12 + (interfaceC2392y == null ? 0 : interfaceC2392y.b().hashCode())) * 31) + this.f23755v;
        long doubleToLongBits3 = Double.doubleToLongBits(this.f23749p);
        int i13 = (hashCode * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f23750q);
        int i14 = (i13 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f23746m);
        int i15 = (i14 * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f23747n);
        return (((((((((((i15 * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)))) * 31) + this.f23757x) * 31) + (this.f23751r ? 1231 : 1237)) * 31) + this.f23738e) * 31) + this.f23748o) * 31) + (this.f23754u ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        StringBuilder sb3 = new StringBuilder("SignatureParameters(N=" + this.f23737d + " q=" + this.f23738e);
        if (this.f23757x == 0) {
            sb2 = new StringBuilder();
            sb2.append(" polyType=SIMPLE d=");
            i10 = this.f23739f;
        } else {
            sb2 = new StringBuilder();
            sb2.append(" polyType=PRODUCT d1=");
            sb2.append(this.f23740g);
            sb2.append(" d2=");
            sb2.append(this.f23741h);
            sb2.append(" d3=");
            i10 = this.f23742i;
        }
        sb2.append(i10);
        sb3.append(sb2.toString());
        sb3.append(" B=" + this.f23743j + " basisType=" + this.f23752s + " beta=" + decimalFormat.format(this.f23744k) + " normBound=" + decimalFormat.format(this.f23746m) + " keyNormBound=" + decimalFormat.format(this.f23749p) + " prime=" + this.f23751r + " sparse=" + this.f23754u + " keyGenAlg=" + this.f23755v + " hashAlg=" + ((Object) this.f23756w) + ")");
        return sb3.toString();
    }

    public l(int i10, int i11, int i12, int i13, int i14, int i15, int i16, double d10, double d11, double d12, boolean z10, boolean z11, int i17, InterfaceC2392y interfaceC2392y) {
        super(r.h(), i10);
        this.f23748o = 100;
        this.f23753t = 6;
        this.f23737d = i10;
        this.f23738e = i11;
        this.f23740g = i12;
        this.f23741h = i13;
        this.f23742i = i14;
        this.f23743j = i15;
        this.f23752s = i16;
        this.f23744k = d10;
        this.f23746m = d11;
        this.f23749p = d12;
        this.f23751r = z10;
        this.f23754u = z11;
        this.f23755v = i17;
        this.f23756w = interfaceC2392y;
        this.f23757x = 1;
        e();
    }

    public l(InputStream inputStream) throws IOException {
        super(r.h(), 0);
        InterfaceC2392y l10;
        this.f23748o = 100;
        this.f23753t = 6;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f23737d = dataInputStream.readInt();
        this.f23738e = dataInputStream.readInt();
        this.f23739f = dataInputStream.readInt();
        this.f23740g = dataInputStream.readInt();
        this.f23741h = dataInputStream.readInt();
        this.f23742i = dataInputStream.readInt();
        this.f23743j = dataInputStream.readInt();
        this.f23752s = dataInputStream.readInt();
        this.f23744k = dataInputStream.readDouble();
        this.f23746m = dataInputStream.readDouble();
        this.f23749p = dataInputStream.readDouble();
        this.f23748o = dataInputStream.readInt();
        this.f23751r = dataInputStream.readBoolean();
        this.f23754u = dataInputStream.readBoolean();
        this.f23753t = dataInputStream.readInt();
        this.f23755v = dataInputStream.read();
        String readUTF = dataInputStream.readUTF();
        if (!"SHA-512".equals(readUTF)) {
            l10 = "SHA-256".equals(readUTF) ? new L() : l10;
            this.f23757x = dataInputStream.read();
            e();
        }
        l10 = new O();
        this.f23756w = l10;
        this.f23757x = dataInputStream.read();
        e();
    }
}
