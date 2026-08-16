package Sl;

import Xi.C3335c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class o extends C3335c {

    public List<a> f23776c;

    public p f23777d;

    public static class a {

        public Yl.i f23778a;

        public Yl.i f23779b;

        public Yl.e f23780c;

        public l f23781d;

        public a(Yl.i iVar, Yl.i iVar2, Yl.e eVar, l lVar) {
            this.f23778a = iVar;
            this.f23779b = iVar2;
            this.f23780c = eVar;
            this.f23781d = lVar;
        }

        public void a(OutputStream outputStream, boolean z10) throws IOException {
            int i10 = this.f23781d.f23738e;
            outputStream.write(b(this.f23778a));
            if (this.f23781d.f23752s == 0) {
                Yl.e b10 = this.f23779b.b();
                int i11 = 0;
                while (true) {
                    int[] iArr = b10.f30630a;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    iArr[i11] = iArr[i11] + (i10 / 2);
                    i11++;
                }
                outputStream.write(b10.U(i10));
            } else {
                outputStream.write(b(this.f23779b));
            }
            if (z10) {
                outputStream.write(this.f23780c.U(i10));
            }
        }

        public final byte[] b(Yl.i iVar) {
            return iVar instanceof Yl.j ? ((Yl.j) iVar).j() : iVar.b().W();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Yl.i iVar = this.f23778a;
            if (iVar == null) {
                if (aVar.f23778a != null) {
                    return false;
                }
            } else if (!iVar.equals(aVar.f23778a)) {
                return false;
            }
            Yl.i iVar2 = this.f23779b;
            if (iVar2 == null) {
                if (aVar.f23779b != null) {
                    return false;
                }
            } else if (!iVar2.equals(aVar.f23779b)) {
                return false;
            }
            Yl.e eVar = this.f23780c;
            if (eVar == null) {
                if (aVar.f23780c != null) {
                    return false;
                }
            } else if (!eVar.equals(aVar.f23780c)) {
                return false;
            }
            l lVar = this.f23781d;
            l lVar2 = aVar.f23781d;
            if (lVar == null) {
                if (lVar2 != null) {
                    return false;
                }
            } else if (!lVar.equals(lVar2)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            Yl.i iVar = this.f23778a;
            int hashCode = ((iVar == null ? 0 : iVar.hashCode()) + 31) * 31;
            Yl.i iVar2 = this.f23779b;
            int hashCode2 = (hashCode + (iVar2 == null ? 0 : iVar2.hashCode())) * 31;
            Yl.e eVar = this.f23780c;
            int hashCode3 = (hashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 31;
            l lVar = this.f23781d;
            return hashCode3 + (lVar != null ? lVar.hashCode() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v2, types: [Yl.e] */
        /* JADX WARN: Type inference failed for: r14v3, types: [Yl.j] */
        /* JADX WARN: Type inference failed for: r14v4, types: [Yl.i] */
        /* JADX WARN: Type inference failed for: r14v5, types: [Yl.e] */
        public a(InputStream inputStream, l lVar, boolean z10) throws IOException {
            Yl.i lVar2;
            ?? g10;
            int i10 = lVar.f23737d;
            int i11 = lVar.f23738e;
            int i12 = lVar.f23740g;
            int i13 = lVar.f23741h;
            int i14 = lVar.f23742i;
            boolean z11 = lVar.f23754u;
            this.f23781d = lVar;
            if (lVar.f23757x == 1) {
                lVar2 = Yl.j.g(inputStream, i10, i12, i13, i14 + 1, i14);
            } else {
                Yl.e v10 = Yl.e.v(inputStream, i10);
                lVar2 = z11 ? new Yl.l(v10) : new Yl.d(v10);
            }
            this.f23778a = lVar2;
            if (lVar.f23752s == 0) {
                g10 = Yl.e.s(inputStream, i10, i11);
                int i15 = 0;
                while (true) {
                    int[] iArr = g10.f30630a;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    iArr[i15] = iArr[i15] - (i11 / 2);
                    i15++;
                }
            } else {
                g10 = lVar.f23757x == 1 ? Yl.j.g(inputStream, i10, i12, i13, i14 + 1, i14) : Yl.e.v(inputStream, i10);
            }
            this.f23779b = g10;
            if (z10) {
                this.f23780c = Yl.e.s(inputStream, i10, i11);
            }
        }
    }

    public o(InputStream inputStream, l lVar) throws IOException {
        super(true);
        this.f23776c = new ArrayList();
        int i10 = 0;
        while (i10 <= lVar.f23743j) {
            d(new a(inputStream, lVar, i10 != 0));
            i10++;
        }
        this.f23777d = new p(inputStream, lVar.d());
    }

    public final void d(a aVar) {
        this.f23776c.add(aVar);
    }

    public a e(int i10) {
        return this.f23776c.get(i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        List<a> list = this.f23776c;
        if ((list == null) != (oVar.f23776c == null)) {
            return false;
        }
        if (list == null) {
            return true;
        }
        if (list.size() != oVar.f23776c.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f23776c.size(); i10++) {
            a aVar = this.f23776c.get(i10);
            a aVar2 = oVar.f23776c.get(i10);
            if (!aVar.f23778a.equals(aVar2.f23778a) || !aVar.f23779b.equals(aVar2.f23779b)) {
                return false;
            }
            if ((i10 != 0 && !aVar.f23780c.equals(aVar2.f23780c)) || !aVar.f23781d.equals(aVar2.f23781d)) {
                return false;
            }
        }
        return true;
    }

    public p f() {
        return this.f23777d;
    }

    public void g(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        while (i10 < this.f23776c.size()) {
            this.f23776c.get(i10).a(byteArrayOutputStream, i10 != 0);
            i10++;
        }
        byteArrayOutputStream.write(this.f23777d.getEncoded());
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        List<a> list = this.f23776c;
        if (list == null) {
            return 31;
        }
        int hashCode = 31 + list.hashCode();
        Iterator<a> it = this.f23776c.iterator();
        while (it.hasNext()) {
            hashCode += it.next().hashCode();
        }
        return hashCode;
    }

    public o(List<a> list, p pVar) {
        super(true);
        this.f23776c = new ArrayList(list);
        this.f23777d = pVar;
    }

    public o(byte[] bArr, l lVar) throws IOException {
        this(new ByteArrayInputStream(bArr), lVar);
    }
}
