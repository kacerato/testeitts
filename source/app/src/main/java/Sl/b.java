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
import java.security.SecureRandom;
import java.util.Arrays;

public class b extends G implements Cloneable {

    public static final b f23646E = new b(1087, 2048, 120, 120, 256, 13, 25, 14, true, new byte[]{0, 6, 3}, true, false, new O());

    public static final b f23647F = new b(1171, 2048, 106, 106, 256, 13, 20, 15, true, new byte[]{0, 6, 4}, true, false, new O());

    public static final b f23648G = new b(1499, 2048, 79, 79, 256, 13, 17, 19, true, new byte[]{0, 6, 5}, true, false, new O());

    public static final b f23649H = new b(439, 2048, 146, 130, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, false, new L());

    public static final b f23650I = new b(439, 2048, 9, 8, 5, 130, 128, 9, 32, 9, true, new byte[]{0, 7, 101}, true, true, new L());

    public static final b f23651J = new b(743, 2048, 248, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, false, new O());

    public static final b f23652K = new b(743, 2048, 11, 11, 15, 220, 256, 10, 27, 14, true, new byte[]{0, 7, 105}, false, true, new O());

    public boolean f23653A;

    public boolean f23654B;

    public int f23655C;

    public InterfaceC2392y f23656D;

    public int f23657d;

    public int f23658e;

    public int f23659f;

    public int f23660g;

    public int f23661h;

    public int f23662i;

    public int f23663j;

    public int f23664k;

    public int f23665l;

    public int f23666m;

    public int f23667n;

    public int f23668o;

    public int f23669p;

    public int f23670q;

    public int f23671r;

    public int f23672s;

    public int f23673t;

    public int f23674u;

    public int f23675v;

    public int f23676w;

    public int f23677x;

    public boolean f23678y;

    public byte[] f23679z;

    public b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y) {
        this(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, z10, bArr, z11, z12, interfaceC2392y, null);
    }

    public b clone() {
        return this.f23655C == 0 ? new b(this.f23657d, this.f23658e, this.f23659f, this.f23673t, this.f23670q, this.f23675v, this.f23676w, this.f23677x, this.f23678y, this.f23679z, this.f23653A, this.f23654B, org.bouncycastle.crypto.util.g.a(this.f23656D)) : new b(this.f23657d, this.f23658e, this.f23660g, this.f23661h, this.f23662i, this.f23673t, this.f23670q, this.f23675v, this.f23676w, this.f23677x, this.f23678y, this.f23679z, this.f23653A, this.f23654B, org.bouncycastle.crypto.util.g.a(this.f23656D));
    }

    public e d() {
        return this.f23655C == 0 ? new e(this.f23657d, this.f23658e, this.f23659f, this.f23673t, this.f23670q, this.f23675v, this.f23676w, this.f23677x, this.f23678y, this.f23679z, this.f23653A, this.f23654B, org.bouncycastle.crypto.util.g.a(this.f23656D)) : new e(this.f23657d, this.f23658e, this.f23660g, this.f23661h, this.f23662i, this.f23673t, this.f23670q, this.f23675v, this.f23676w, this.f23677x, this.f23678y, this.f23679z, this.f23653A, this.f23654B, org.bouncycastle.crypto.util.g.a(this.f23656D));
    }

    public int e() {
        return this.f23669p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f23657d != bVar.f23657d || this.f23671r != bVar.f23671r || this.f23672s != bVar.f23672s || this.f23675v != bVar.f23675v || this.f23670q != bVar.f23670q || this.f23659f != bVar.f23659f || this.f23660g != bVar.f23660g || this.f23661h != bVar.f23661h || this.f23662i != bVar.f23662i || this.f23667n != bVar.f23667n || this.f23673t != bVar.f23673t || this.f23663j != bVar.f23663j || this.f23664k != bVar.f23664k || this.f23665l != bVar.f23665l || this.f23666m != bVar.f23666m || this.f23654B != bVar.f23654B) {
            return false;
        }
        InterfaceC2392y interfaceC2392y = this.f23656D;
        if (interfaceC2392y == null) {
            if (bVar.f23656D != null) {
                return false;
            }
        } else if (!interfaceC2392y.b().equals(bVar.f23656D.b())) {
            return false;
        }
        return this.f23678y == bVar.f23678y && this.f23668o == bVar.f23668o && this.f23669p == bVar.f23669p && this.f23677x == bVar.f23677x && this.f23676w == bVar.f23676w && Arrays.equals(this.f23679z, bVar.f23679z) && this.f23674u == bVar.f23674u && this.f23655C == bVar.f23655C && this.f23658e == bVar.f23658e && this.f23653A == bVar.f23653A;
    }

    public final void f() {
        this.f23663j = this.f23659f;
        this.f23664k = this.f23660g;
        this.f23665l = this.f23661h;
        this.f23666m = this.f23662i;
        int i10 = this.f23657d;
        this.f23667n = i10 / 3;
        this.f23668o = 1;
        int i11 = this.f23670q;
        this.f23669p = (((((i10 * 3) / 2) / 8) - 1) - (i11 / 8)) - 1;
        this.f23671r = (((((i10 * 3) / 2) + 7) / 8) * 8) + 1;
        this.f23672s = i10 - 1;
        this.f23674u = i11;
    }

    public void g(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f23657d);
        dataOutputStream.writeInt(this.f23658e);
        dataOutputStream.writeInt(this.f23659f);
        dataOutputStream.writeInt(this.f23660g);
        dataOutputStream.writeInt(this.f23661h);
        dataOutputStream.writeInt(this.f23662i);
        dataOutputStream.writeInt(this.f23670q);
        dataOutputStream.writeInt(this.f23673t);
        dataOutputStream.writeInt(this.f23675v);
        dataOutputStream.writeInt(this.f23676w);
        dataOutputStream.writeInt(this.f23677x);
        dataOutputStream.writeBoolean(this.f23678y);
        dataOutputStream.write(this.f23679z);
        dataOutputStream.writeBoolean(this.f23653A);
        dataOutputStream.writeBoolean(this.f23654B);
        dataOutputStream.write(this.f23655C);
        dataOutputStream.writeUTF(this.f23656D.b());
    }

    public int hashCode() {
        int i10 = (((((((((((((((((((((((((((((((this.f23657d + 31) * 31) + this.f23671r) * 31) + this.f23672s) * 31) + this.f23675v) * 31) + this.f23670q) * 31) + this.f23659f) * 31) + this.f23660g) * 31) + this.f23661h) * 31) + this.f23662i) * 31) + this.f23667n) * 31) + this.f23673t) * 31) + this.f23663j) * 31) + this.f23664k) * 31) + this.f23665l) * 31) + this.f23666m) * 31) + (this.f23654B ? 1231 : 1237)) * 31;
        InterfaceC2392y interfaceC2392y = this.f23656D;
        return ((((((((((((((((((((i10 + (interfaceC2392y == null ? 0 : interfaceC2392y.b().hashCode())) * 31) + (this.f23678y ? 1231 : 1237)) * 31) + this.f23668o) * 31) + this.f23669p) * 31) + this.f23677x) * 31) + this.f23676w) * 31) + Arrays.hashCode(this.f23679z)) * 31) + this.f23674u) * 31) + this.f23655C) * 31) + this.f23658e) * 31) + (this.f23653A ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        StringBuilder sb3 = new StringBuilder("EncryptionParameters(N=" + this.f23657d + " q=" + this.f23658e);
        if (this.f23655C == 0) {
            sb2 = new StringBuilder();
            sb2.append(" polyType=SIMPLE df=");
            i10 = this.f23659f;
        } else {
            sb2 = new StringBuilder();
            sb2.append(" polyType=PRODUCT df1=");
            sb2.append(this.f23660g);
            sb2.append(" df2=");
            sb2.append(this.f23661h);
            sb2.append(" df3=");
            i10 = this.f23662i;
        }
        sb2.append(i10);
        sb3.append(sb2.toString());
        sb3.append(" dm0=" + this.f23673t + " db=" + this.f23670q + " c=" + this.f23675v + " minCallsR=" + this.f23676w + " minCallsMask=" + this.f23677x + " hashSeed=" + this.f23678y + " hashAlg=" + ((Object) this.f23656D) + " oid=" + Arrays.toString(this.f23679z) + " sparse=" + this.f23653A + ")");
        return sb3.toString();
    }

    public b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        super(secureRandom != null ? secureRandom : r.h(), i16);
        this.f23657d = i10;
        this.f23658e = i11;
        this.f23660g = i12;
        this.f23661h = i13;
        this.f23662i = i14;
        this.f23670q = i16;
        this.f23673t = i15;
        this.f23675v = i17;
        this.f23676w = i18;
        this.f23677x = i19;
        this.f23678y = z10;
        this.f23679z = bArr;
        this.f23653A = z11;
        this.f23654B = z12;
        this.f23655C = 1;
        this.f23656D = interfaceC2392y;
        f();
    }

    public b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y) {
        this(i10, i11, i12, i13, i14, i15, i16, i17, z10, bArr, z11, z12, interfaceC2392y, null);
    }

    public b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr, boolean z11, boolean z12, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        super(secureRandom == null ? r.h() : secureRandom, i14);
        this.f23657d = i10;
        this.f23658e = i11;
        this.f23659f = i12;
        this.f23670q = i14;
        this.f23673t = i13;
        this.f23675v = i15;
        this.f23676w = i16;
        this.f23677x = i17;
        this.f23678y = z10;
        this.f23679z = bArr;
        this.f23653A = z11;
        this.f23654B = z12;
        this.f23655C = 0;
        this.f23656D = interfaceC2392y;
        f();
    }

    public b(InputStream inputStream) throws IOException {
        super(r.h(), -1);
        InterfaceC2392y l10;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f23657d = dataInputStream.readInt();
        this.f23658e = dataInputStream.readInt();
        this.f23659f = dataInputStream.readInt();
        this.f23660g = dataInputStream.readInt();
        this.f23661h = dataInputStream.readInt();
        this.f23662i = dataInputStream.readInt();
        this.f23670q = dataInputStream.readInt();
        this.f23673t = dataInputStream.readInt();
        this.f23675v = dataInputStream.readInt();
        this.f23676w = dataInputStream.readInt();
        this.f23677x = dataInputStream.readInt();
        this.f23678y = dataInputStream.readBoolean();
        byte[] bArr = new byte[3];
        this.f23679z = bArr;
        dataInputStream.readFully(bArr);
        this.f23653A = dataInputStream.readBoolean();
        this.f23654B = dataInputStream.readBoolean();
        this.f23655C = dataInputStream.read();
        String readUTF = dataInputStream.readUTF();
        if (!"SHA-512".equals(readUTF)) {
            l10 = "SHA-256".equals(readUTF) ? new L() : l10;
            f();
        }
        l10 = new O();
        this.f23656D = l10;
        f();
    }
}
