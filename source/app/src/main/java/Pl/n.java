package Pl;

import Bi.InterfaceC2392y;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;

public class n {

    public int f21736a;

    public Vector f21737b;

    public Vector f21738c;

    public byte[] f21739d;

    public byte[] f21740e;

    public byte[] f21741f;

    public int f21742g;

    public int f21743h;

    public boolean f21744i;

    public boolean f21745j;

    public boolean f21746k;

    public InterfaceC2392y f21747l;

    public n(InterfaceC2392y interfaceC2392y, byte[][] bArr, int[] iArr) {
        this.f21747l = interfaceC2392y;
        this.f21736a = iArr[0];
        this.f21742g = iArr[1];
        this.f21743h = iArr[2];
        if (iArr[3] == 1) {
            this.f21745j = true;
        } else {
            this.f21745j = false;
        }
        if (iArr[4] == 1) {
            this.f21744i = true;
        } else {
            this.f21744i = false;
        }
        if (iArr[5] == 1) {
            this.f21746k = true;
        } else {
            this.f21746k = false;
        }
        this.f21738c = new Vector();
        for (int i10 = 0; i10 < this.f21742g; i10++) {
            this.f21738c.addElement(org.bouncycastle.util.k.j(iArr[i10 + 6]));
        }
        this.f21739d = bArr[0];
        this.f21740e = bArr[1];
        this.f21741f = bArr[2];
        this.f21737b = new Vector();
        for (int i11 = 0; i11 < this.f21742g; i11++) {
            this.f21737b.addElement(bArr[i11 + 3]);
        }
    }

    public void a() {
        this.f21744i = false;
        this.f21745j = false;
        this.f21739d = null;
        this.f21742g = 0;
        this.f21743h = -1;
    }

    public byte[] b() {
        return this.f21739d;
    }

    public int c() {
        return this.f21739d == null ? this.f21736a : this.f21743h;
    }

    public int d() {
        return this.f21739d == null ? this.f21736a : this.f21742g == 0 ? this.f21743h : Math.min(this.f21743h, ((Integer) this.f21738c.lastElement()).intValue());
    }

    public byte[] e() {
        return this.f21740e;
    }

    public byte[][] f() {
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, this.f21742g + 3, this.f21747l.f());
        bArr[0] = this.f21739d;
        bArr[1] = this.f21740e;
        bArr[2] = this.f21741f;
        for (int i10 = 0; i10 < this.f21742g; i10++) {
            bArr[i10 + 3] = (byte[]) this.f21737b.elementAt(i10);
        }
        return bArr;
    }

    public int[] g() {
        int i10 = this.f21742g;
        int[] iArr = new int[i10 + 6];
        iArr[0] = this.f21736a;
        iArr[1] = i10;
        iArr[2] = this.f21743h;
        if (this.f21745j) {
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        if (this.f21744i) {
            iArr[4] = 1;
        } else {
            iArr[4] = 0;
        }
        if (this.f21746k) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        for (int i11 = 0; i11 < this.f21742g; i11++) {
            iArr[i11 + 6] = ((Integer) this.f21738c.elementAt(i11)).intValue();
        }
        return iArr;
    }

    public Vector h() {
        return this.f21737b;
    }

    public void i() {
        if (!this.f21746k) {
            throw new IllegalStateException("Seed " + this.f21736a + " not initialized");
        }
        this.f21738c = new Vector();
        this.f21742g = 0;
        this.f21739d = null;
        this.f21743h = -1;
        this.f21744i = true;
        System.arraycopy(this.f21741f, 0, this.f21740e, 0, this.f21747l.f());
    }

    public void j(byte[] bArr) {
        System.arraycopy(bArr, 0, this.f21741f, 0, this.f21747l.f());
        this.f21746k = true;
    }

    public void k(byte[] bArr) {
        if (!this.f21744i) {
            i();
        }
        this.f21739d = bArr;
        this.f21743h = this.f21736a;
        this.f21745j = true;
    }

    public void l(Ql.a aVar, byte[] bArr) {
        PrintStream printStream;
        String str;
        if (this.f21745j) {
            printStream = System.err;
            str = "No more update possible for treehash instance!";
        } else {
            if (this.f21744i) {
                byte[] bArr2 = new byte[this.f21747l.f()];
                aVar.c(this.f21740e);
                if (this.f21739d == null) {
                    this.f21739d = bArr;
                    this.f21743h = 0;
                } else {
                    int i10 = 0;
                    while (this.f21742g > 0 && i10 == ((Integer) this.f21738c.lastElement()).intValue()) {
                        int f10 = this.f21747l.f() << 1;
                        byte[] bArr3 = new byte[f10];
                        System.arraycopy(this.f21737b.lastElement(), 0, bArr3, 0, this.f21747l.f());
                        Vector vector = this.f21737b;
                        vector.removeElementAt(vector.size() - 1);
                        Vector vector2 = this.f21738c;
                        vector2.removeElementAt(vector2.size() - 1);
                        System.arraycopy(bArr, 0, bArr3, this.f21747l.f(), this.f21747l.f());
                        this.f21747l.update(bArr3, 0, f10);
                        bArr = new byte[this.f21747l.f()];
                        this.f21747l.c(bArr, 0);
                        i10++;
                        this.f21742g--;
                    }
                    this.f21737b.addElement(bArr);
                    this.f21738c.addElement(org.bouncycastle.util.k.j(i10));
                    this.f21742g++;
                    if (((Integer) this.f21738c.lastElement()).intValue() == this.f21743h) {
                        int f11 = this.f21747l.f() << 1;
                        byte[] bArr4 = new byte[f11];
                        System.arraycopy(this.f21739d, 0, bArr4, 0, this.f21747l.f());
                        System.arraycopy(this.f21737b.lastElement(), 0, bArr4, this.f21747l.f(), this.f21747l.f());
                        Vector vector3 = this.f21737b;
                        vector3.removeElementAt(vector3.size() - 1);
                        Vector vector4 = this.f21738c;
                        vector4.removeElementAt(vector4.size() - 1);
                        this.f21747l.update(bArr4, 0, f11);
                        byte[] bArr5 = new byte[this.f21747l.f()];
                        this.f21739d = bArr5;
                        this.f21747l.c(bArr5, 0);
                        this.f21743h++;
                        this.f21742g = 0;
                    }
                }
                if (this.f21743h == this.f21736a) {
                    this.f21745j = true;
                    return;
                }
                return;
            }
            printStream = System.err;
            str = "Treehash instance not initialized before update";
        }
        printStream.println(str);
    }

    public void m(Ql.a aVar) {
        aVar.c(this.f21741f);
    }

    public boolean n() {
        return this.f21745j;
    }

    public boolean o() {
        return this.f21744i;
    }

    public String toString() {
        StringBuilder sb2;
        String str = "Treehash    : ";
        for (int i10 = 0; i10 < this.f21742g + 6; i10++) {
            str = str + g()[i10] + " ";
        }
        for (int i11 = 0; i11 < this.f21742g + 3; i11++) {
            if (f()[i11] != null) {
                sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(new String(em.h.h(f()[i11])));
                sb2.append(" ");
            } else {
                sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("null ");
            }
            str = sb2.toString();
        }
        return str + GlideException.a.f59088e + this.f21747l.f();
    }

    public n(Vector vector, int i10, InterfaceC2392y interfaceC2392y) {
        this.f21737b = vector;
        this.f21736a = i10;
        this.f21739d = null;
        this.f21744i = false;
        this.f21745j = false;
        this.f21746k = false;
        this.f21747l = interfaceC2392y;
        this.f21741f = new byte[interfaceC2392y.f()];
        this.f21740e = new byte[this.f21747l.f()];
    }
}
