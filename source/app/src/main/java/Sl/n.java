package Sl;

import Bi.InterfaceC2392y;
import Ii.L;
import Ii.O;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;

public class n implements Cloneable {

    public int f23762b;

    public int f23763c;

    public int f23764d;

    public int f23765e;

    public int f23766f;

    public int f23767g;

    public int f23768h;

    public double f23769i;

    public double f23770j;

    public double f23771k;

    public double f23772l;

    public int f23773m;

    public int f23774n;

    public InterfaceC2392y f23775o;

    public n(int i10, int i11, int i12, int i13, double d10, double d11, InterfaceC2392y interfaceC2392y) {
        this.f23773m = 100;
        this.f23774n = 6;
        this.f23762b = i10;
        this.f23763c = i11;
        this.f23764d = i12;
        this.f23768h = i13;
        this.f23769i = d10;
        this.f23771k = d11;
        this.f23775o = interfaceC2392y;
        b();
    }

    public n clone() {
        return new n(this.f23762b, this.f23763c, this.f23764d, this.f23768h, this.f23769i, this.f23771k, this.f23775o);
    }

    public final void b() {
        double d10 = this.f23769i;
        this.f23770j = d10 * d10;
        double d11 = this.f23771k;
        this.f23772l = d11 * d11;
    }

    public void c(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f23762b);
        dataOutputStream.writeInt(this.f23763c);
        dataOutputStream.writeInt(this.f23764d);
        dataOutputStream.writeInt(this.f23765e);
        dataOutputStream.writeInt(this.f23766f);
        dataOutputStream.writeInt(this.f23767g);
        dataOutputStream.writeInt(this.f23768h);
        dataOutputStream.writeDouble(this.f23769i);
        dataOutputStream.writeDouble(this.f23771k);
        dataOutputStream.writeInt(this.f23773m);
        dataOutputStream.writeInt(this.f23774n);
        dataOutputStream.writeUTF(this.f23775o.b());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f23768h != nVar.f23768h || this.f23762b != nVar.f23762b || Double.doubleToLongBits(this.f23769i) != Double.doubleToLongBits(nVar.f23769i) || Double.doubleToLongBits(this.f23770j) != Double.doubleToLongBits(nVar.f23770j) || this.f23774n != nVar.f23774n || this.f23764d != nVar.f23764d || this.f23765e != nVar.f23765e || this.f23766f != nVar.f23766f || this.f23767g != nVar.f23767g) {
            return false;
        }
        InterfaceC2392y interfaceC2392y = this.f23775o;
        if (interfaceC2392y == null) {
            if (nVar.f23775o != null) {
                return false;
            }
        } else if (!interfaceC2392y.b().equals(nVar.f23775o.b())) {
            return false;
        }
        return Double.doubleToLongBits(this.f23771k) == Double.doubleToLongBits(nVar.f23771k) && Double.doubleToLongBits(this.f23772l) == Double.doubleToLongBits(nVar.f23772l) && this.f23763c == nVar.f23763c && this.f23773m == nVar.f23773m;
    }

    public int hashCode() {
        int i10 = ((this.f23768h + 31) * 31) + this.f23762b;
        long doubleToLongBits = Double.doubleToLongBits(this.f23769i);
        int i11 = (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f23770j);
        int i12 = ((((((((((((i11 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + this.f23774n) * 31) + this.f23764d) * 31) + this.f23765e) * 31) + this.f23766f) * 31) + this.f23767g) * 31;
        InterfaceC2392y interfaceC2392y = this.f23775o;
        int hashCode = i12 + (interfaceC2392y == null ? 0 : interfaceC2392y.b().hashCode());
        long doubleToLongBits3 = Double.doubleToLongBits(this.f23771k);
        int i13 = (hashCode * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f23772l);
        return (((((i13 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + this.f23763c) * 31) + this.f23773m;
    }

    public String toString() {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        StringBuilder sb2 = new StringBuilder("SignatureParameters(N=" + this.f23762b + " q=" + this.f23763c);
        sb2.append(" B=" + this.f23768h + " beta=" + decimalFormat.format(this.f23769i) + " normBound=" + decimalFormat.format(this.f23771k) + " hashAlg=" + ((Object) this.f23775o) + ")");
        return sb2.toString();
    }

    public n(int i10, int i11, int i12, int i13, int i14, int i15, double d10, double d11, double d12, InterfaceC2392y interfaceC2392y) {
        this.f23773m = 100;
        this.f23774n = 6;
        this.f23762b = i10;
        this.f23763c = i11;
        this.f23765e = i12;
        this.f23766f = i13;
        this.f23767g = i14;
        this.f23768h = i15;
        this.f23769i = d10;
        this.f23771k = d11;
        this.f23775o = interfaceC2392y;
        b();
    }

    public n(InputStream inputStream) throws IOException {
        InterfaceC2392y l10;
        this.f23773m = 100;
        this.f23774n = 6;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f23762b = dataInputStream.readInt();
        this.f23763c = dataInputStream.readInt();
        this.f23764d = dataInputStream.readInt();
        this.f23765e = dataInputStream.readInt();
        this.f23766f = dataInputStream.readInt();
        this.f23767g = dataInputStream.readInt();
        this.f23768h = dataInputStream.readInt();
        this.f23769i = dataInputStream.readDouble();
        this.f23771k = dataInputStream.readDouble();
        this.f23773m = dataInputStream.readInt();
        this.f23774n = dataInputStream.readInt();
        String readUTF = dataInputStream.readUTF();
        if (!"SHA-512".equals(readUTF)) {
            l10 = "SHA-256".equals(readUTF) ? new L() : l10;
            b();
        }
        l10 = new O();
        this.f23775o = l10;
        b();
    }
}
