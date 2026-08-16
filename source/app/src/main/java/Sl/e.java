package Sl;

import Bi.InterfaceC2392y;
import Ii.L;
import Ii.O;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

public class e implements Cloneable {

    public int f23682A;

    public InterfaceC2392y f23683B;

    public int f23684b;

    public int f23685c;

    public int f23686d;

    public int f23687e;

    public int f23688f;

    public int f23689g;

    public int f23690h;

    public int f23691i;

    public int f23692j;

    public int f23693k;

    public int f23694l;

    public int f23695m;

    public int f23696n;

    public int f23697o;

    public int f23698p;

    public int f23699q;

    public int f23700r;

    public int f23701s;

    public int f23702t;

    public int f23703u;

    public int f23704v;

    public boolean f23705w;

    public byte[] f23706x;

    public boolean f23707y;

    public boolean f23708z;

    public e(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y) {
        this.f23684b = i10;
        this.f23685c = i11;
        this.f23687e = i12;
        this.f23688f = i13;
        this.f23689g = i14;
        this.f23697o = i16;
        this.f23700r = i15;
        this.f23702t = i17;
        this.f23703u = i18;
        this.f23704v = i19;
        this.f23705w = z10;
        this.f23706x = bArr;
        this.f23707y = z11;
        this.f23708z = z12;
        this.f23682A = 1;
        this.f23683B = interfaceC2392y;
        c();
    }

    public e clone() {
        return this.f23682A == 0 ? new e(this.f23684b, this.f23685c, this.f23686d, this.f23700r, this.f23697o, this.f23702t, this.f23703u, this.f23704v, this.f23705w, this.f23706x, this.f23707y, this.f23708z, org.bouncycastle.crypto.util.g.a(this.f23683B)) : new e(this.f23684b, this.f23685c, this.f23687e, this.f23688f, this.f23689g, this.f23700r, this.f23697o, this.f23702t, this.f23703u, this.f23704v, this.f23705w, this.f23706x, this.f23707y, this.f23708z, org.bouncycastle.crypto.util.g.a(this.f23683B));
    }

    public int b() {
        return this.f23696n;
    }

    public final void c() {
        this.f23690h = this.f23686d;
        this.f23691i = this.f23687e;
        this.f23692j = this.f23688f;
        this.f23693k = this.f23689g;
        int i10 = this.f23684b;
        this.f23694l = i10 / 3;
        this.f23695m = 1;
        int i11 = this.f23697o;
        this.f23696n = (((((i10 * 3) / 2) / 8) - 1) - (i11 / 8)) - 1;
        this.f23698p = (((((i10 * 3) / 2) + 7) / 8) * 8) + 1;
        this.f23699q = i10 - 1;
        this.f23701s = i11;
    }

    public void d(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f23684b);
        dataOutputStream.writeInt(this.f23685c);
        dataOutputStream.writeInt(this.f23686d);
        dataOutputStream.writeInt(this.f23687e);
        dataOutputStream.writeInt(this.f23688f);
        dataOutputStream.writeInt(this.f23689g);
        dataOutputStream.writeInt(this.f23697o);
        dataOutputStream.writeInt(this.f23700r);
        dataOutputStream.writeInt(this.f23702t);
        dataOutputStream.writeInt(this.f23703u);
        dataOutputStream.writeInt(this.f23704v);
        dataOutputStream.writeBoolean(this.f23705w);
        dataOutputStream.write(this.f23706x);
        dataOutputStream.writeBoolean(this.f23707y);
        dataOutputStream.writeBoolean(this.f23708z);
        dataOutputStream.write(this.f23682A);
        dataOutputStream.writeUTF(this.f23683B.b());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f23684b != eVar.f23684b || this.f23698p != eVar.f23698p || this.f23699q != eVar.f23699q || this.f23702t != eVar.f23702t || this.f23697o != eVar.f23697o || this.f23686d != eVar.f23686d || this.f23687e != eVar.f23687e || this.f23688f != eVar.f23688f || this.f23689g != eVar.f23689g || this.f23694l != eVar.f23694l || this.f23700r != eVar.f23700r || this.f23690h != eVar.f23690h || this.f23691i != eVar.f23691i || this.f23692j != eVar.f23692j || this.f23693k != eVar.f23693k || this.f23708z != eVar.f23708z) {
            return false;
        }
        InterfaceC2392y interfaceC2392y = this.f23683B;
        if (interfaceC2392y == null) {
            if (eVar.f23683B != null) {
                return false;
            }
        } else if (!interfaceC2392y.b().equals(eVar.f23683B.b())) {
            return false;
        }
        return this.f23705w == eVar.f23705w && this.f23695m == eVar.f23695m && this.f23696n == eVar.f23696n && this.f23704v == eVar.f23704v && this.f23703u == eVar.f23703u && Arrays.equals(this.f23706x, eVar.f23706x) && this.f23701s == eVar.f23701s && this.f23682A == eVar.f23682A && this.f23685c == eVar.f23685c && this.f23707y == eVar.f23707y;
    }

    public int hashCode() {
        int i10 = (((((((((((((((((((((((((((((((this.f23684b + 31) * 31) + this.f23698p) * 31) + this.f23699q) * 31) + this.f23702t) * 31) + this.f23697o) * 31) + this.f23686d) * 31) + this.f23687e) * 31) + this.f23688f) * 31) + this.f23689g) * 31) + this.f23694l) * 31) + this.f23700r) * 31) + this.f23690h) * 31) + this.f23691i) * 31) + this.f23692j) * 31) + this.f23693k) * 31) + (this.f23708z ? 1231 : 1237)) * 31;
        InterfaceC2392y interfaceC2392y = this.f23683B;
        return ((((((((((((((((((((i10 + (interfaceC2392y == null ? 0 : interfaceC2392y.b().hashCode())) * 31) + (this.f23705w ? 1231 : 1237)) * 31) + this.f23695m) * 31) + this.f23696n) * 31) + this.f23704v) * 31) + this.f23703u) * 31) + Arrays.hashCode(this.f23706x)) * 31) + this.f23701s) * 31) + this.f23682A) * 31) + this.f23685c) * 31) + (this.f23707y ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        StringBuilder sb3 = new StringBuilder("EncryptionParameters(N=" + this.f23684b + " q=" + this.f23685c);
        if (this.f23682A == 0) {
            sb2 = new StringBuilder();
            sb2.append(" polyType=SIMPLE df=");
            i10 = this.f23686d;
        } else {
            sb2 = new StringBuilder();
            sb2.append(" polyType=PRODUCT df1=");
            sb2.append(this.f23687e);
            sb2.append(" df2=");
            sb2.append(this.f23688f);
            sb2.append(" df3=");
            i10 = this.f23689g;
        }
        sb2.append(i10);
        sb3.append(sb2.toString());
        sb3.append(" dm0=" + this.f23700r + " db=" + this.f23697o + " c=" + this.f23702t + " minCallsR=" + this.f23703u + " minCallsMask=" + this.f23704v + " hashSeed=" + this.f23705w + " hashAlg=" + ((Object) this.f23683B) + " oid=" + Arrays.toString(this.f23706x) + " sparse=" + this.f23707y + ")");
        return sb3.toString();
    }

    public e(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y) {
        this.f23684b = i10;
        this.f23685c = i11;
        this.f23686d = i12;
        this.f23697o = i14;
        this.f23700r = i13;
        this.f23702t = i15;
        this.f23703u = i16;
        this.f23704v = i17;
        this.f23705w = z10;
        this.f23706x = bArr;
        this.f23707y = z11;
        this.f23708z = z12;
        this.f23682A = 0;
        this.f23683B = interfaceC2392y;
        c();
    }

    public e(InputStream inputStream) throws IOException {
        InterfaceC2392y l10;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f23684b = dataInputStream.readInt();
        this.f23685c = dataInputStream.readInt();
        this.f23686d = dataInputStream.readInt();
        this.f23687e = dataInputStream.readInt();
        this.f23688f = dataInputStream.readInt();
        this.f23689g = dataInputStream.readInt();
        this.f23697o = dataInputStream.readInt();
        this.f23700r = dataInputStream.readInt();
        this.f23702t = dataInputStream.readInt();
        this.f23703u = dataInputStream.readInt();
        this.f23704v = dataInputStream.readInt();
        this.f23705w = dataInputStream.readBoolean();
        byte[] bArr = new byte[3];
        this.f23706x = bArr;
        dataInputStream.read(bArr);
        this.f23707y = dataInputStream.readBoolean();
        this.f23708z = dataInputStream.readBoolean();
        this.f23682A = dataInputStream.read();
        String readUTF = dataInputStream.readUTF();
        if (!"SHA-512".equals(readUTF)) {
            l10 = "SHA-256".equals(readUTF) ? new L() : l10;
            c();
        }
        l10 = new O();
        this.f23683B = l10;
        c();
    }
}
