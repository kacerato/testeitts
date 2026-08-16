package Pl;

import Bi.InterfaceC2392y;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Vector;

public class i {

    public int f21681a;

    public int f21682b;

    public n[] f21683c;

    public Vector[] f21684d;

    public byte[] f21685e;

    public byte[][] f21686f;

    public int f21687g;

    public Vector f21688h;

    public Vector f21689i;

    public InterfaceC2392y f21690j;

    public a f21691k;

    public int[] f21692l;

    public boolean f21693m;

    public boolean f21694n;

    public int f21695o;

    public int f21696p;

    public i(int i10, int i11, a aVar) {
        this.f21681a = i10;
        this.f21691k = aVar;
        InterfaceC2392y interfaceC2392y = aVar.get();
        this.f21690j = interfaceC2392y;
        int f10 = interfaceC2392y.f();
        this.f21682b = f10;
        this.f21687g = i11;
        this.f21692l = new int[i10];
        int[] iArr = {i10, f10};
        this.f21686f = (byte[][]) Array.newInstance(Byte.TYPE, iArr);
        this.f21685e = new byte[this.f21682b];
        this.f21684d = new Vector[this.f21687g - 1];
        for (int i12 = 0; i12 < i11 - 1; i12++) {
            this.f21684d[i12] = new Vector();
        }
    }

    public byte[][] a() {
        return m.f(this.f21686f);
    }

    public Vector[] b() {
        return m.e(this.f21684d);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f21685e);
    }

    public Vector d() {
        Vector vector = new Vector();
        Enumeration elements = this.f21688h.elements();
        while (elements.hasMoreElements()) {
            vector.addElement(elements.nextElement());
        }
        return vector;
    }

    public byte[][] e() {
        Vector vector = this.f21688h;
        int size = vector == null ? 0 : vector.size();
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, this.f21681a + 1 + size, 64);
        bArr[0] = this.f21685e;
        int i10 = 0;
        while (i10 < this.f21681a) {
            int i11 = i10 + 1;
            bArr[i11] = this.f21686f[i10];
            i10 = i11;
        }
        for (int i12 = 0; i12 < size; i12++) {
            bArr[this.f21681a + 1 + i12] = (byte[]) this.f21688h.elementAt(i12);
        }
        return bArr;
    }

    public int[] f() {
        Vector vector = this.f21688h;
        int size = vector == null ? 0 : vector.size();
        int i10 = this.f21681a;
        int[] iArr = new int[i10 + 8 + size];
        iArr[0] = i10;
        iArr[1] = this.f21682b;
        iArr[2] = this.f21687g;
        iArr[3] = this.f21695o;
        iArr[4] = this.f21696p;
        if (this.f21694n) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        if (this.f21693m) {
            iArr[6] = 1;
        } else {
            iArr[6] = 0;
        }
        iArr[7] = size;
        for (int i11 = 0; i11 < this.f21681a; i11++) {
            iArr[i11 + 8] = this.f21692l[i11];
        }
        for (int i12 = 0; i12 < size; i12++) {
            iArr[this.f21681a + 8 + i12] = ((Integer) this.f21689i.elementAt(i12)).intValue();
        }
        return iArr;
    }

    public n[] g() {
        return m.d(this.f21683c);
    }

    public void h(Vector vector) {
        int i10;
        this.f21683c = new n[this.f21681a - this.f21687g];
        int i11 = 0;
        while (true) {
            i10 = this.f21681a;
            if (i11 >= i10 - this.f21687g) {
                break;
            }
            this.f21683c[i11] = new n(vector, i11, this.f21691k.get());
            i11++;
        }
        this.f21692l = new int[i10];
        this.f21686f = (byte[][]) Array.newInstance(Byte.TYPE, i10, this.f21682b);
        this.f21685e = new byte[this.f21682b];
        this.f21688h = new Vector();
        this.f21689i = new Vector();
        this.f21693m = true;
        this.f21694n = false;
        for (int i12 = 0; i12 < this.f21681a; i12++) {
            this.f21692l[i12] = -1;
        }
        this.f21684d = new Vector[this.f21687g - 1];
        for (int i13 = 0; i13 < this.f21687g - 1; i13++) {
            this.f21684d[i13] = new Vector();
        }
        this.f21695o = 3;
        this.f21696p = 0;
    }

    public void i(byte[] bArr, int i10) {
        this.f21683c[i10].j(bArr);
    }

    public void j(byte[] bArr) {
        if (this.f21694n) {
            System.out.print("Too much updates for Tree!!");
            return;
        }
        if (!this.f21693m) {
            System.err.println("GMSSRootCalc not initialized!");
            return;
        }
        int[] iArr = this.f21692l;
        int i10 = iArr[0] + 1;
        iArr[0] = i10;
        if (i10 == 1) {
            System.arraycopy(bArr, 0, this.f21686f[0], 0, this.f21682b);
        } else if (i10 == 3 && this.f21681a > this.f21687g) {
            this.f21683c[0].k(bArr);
        }
        int i11 = this.f21692l[0];
        if ((i11 - 3) % 2 == 0 && i11 >= 3 && this.f21681a == this.f21687g) {
            this.f21684d[0].insertElementAt(bArr, 0);
        }
        if (this.f21692l[0] == 0) {
            this.f21688h.addElement(bArr);
            this.f21689i.addElement(org.bouncycastle.util.k.j(0));
            return;
        }
        int i12 = this.f21682b;
        byte[] bArr2 = new byte[i12];
        int i13 = i12 << 1;
        byte[] bArr3 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, 0, i12);
        int i14 = 0;
        while (this.f21688h.size() > 0 && i14 == ((Integer) this.f21689i.lastElement()).intValue()) {
            System.arraycopy(this.f21688h.lastElement(), 0, bArr3, 0, this.f21682b);
            Vector vector = this.f21688h;
            vector.removeElementAt(vector.size() - 1);
            Vector vector2 = this.f21689i;
            vector2.removeElementAt(vector2.size() - 1);
            int i15 = this.f21682b;
            System.arraycopy(bArr2, 0, bArr3, i15, i15);
            this.f21690j.update(bArr3, 0, i13);
            bArr2 = new byte[this.f21690j.f()];
            this.f21690j.c(bArr2, 0);
            i14++;
            if (i14 < this.f21681a) {
                int[] iArr2 = this.f21692l;
                int i16 = iArr2[i14] + 1;
                iArr2[i14] = i16;
                if (i16 == 1) {
                    System.arraycopy(bArr2, 0, this.f21686f[i14], 0, this.f21682b);
                }
                if (i14 >= this.f21681a - this.f21687g) {
                    if (i14 == 0) {
                        System.out.println("M\ufffd\ufffd\ufffdP");
                    }
                    int i17 = this.f21692l[i14];
                    if ((i17 - 3) % 2 == 0 && i17 >= 3) {
                        this.f21684d[i14 - (this.f21681a - this.f21687g)].insertElementAt(bArr2, 0);
                    }
                } else if (this.f21692l[i14] == 3) {
                    this.f21683c[i14].k(bArr2);
                }
            }
        }
        this.f21688h.addElement(bArr2);
        this.f21689i.addElement(org.bouncycastle.util.k.j(i14));
        if (i14 == this.f21681a) {
            this.f21694n = true;
            this.f21693m = false;
            this.f21685e = (byte[]) this.f21688h.lastElement();
        }
    }

    public void k(byte[] bArr, byte[] bArr2) {
        int i10 = this.f21696p;
        if (i10 < this.f21681a - this.f21687g && this.f21695o - 2 == this.f21692l[0]) {
            i(bArr, i10);
            this.f21696p++;
            this.f21695o *= 2;
        }
        j(bArr2);
    }

    public boolean l() {
        return this.f21694n;
    }

    public boolean m() {
        return this.f21693m;
    }

    public String toString() {
        Vector vector = this.f21688h;
        int size = vector == null ? 0 : vector.size();
        String str = "";
        for (int i10 = 0; i10 < this.f21681a + 8 + size; i10++) {
            str = str + f()[i10] + " ";
        }
        for (int i11 = 0; i11 < this.f21681a + 1 + size; i11++) {
            str = str + new String(em.h.h(e()[i11])) + " ";
        }
        return str + GlideException.a.f59088e + this.f21691k.get().f();
    }
}
