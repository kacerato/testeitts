package bl;

public class n {

    public final int f33508a;

    public final int f33509b;

    public final m[] f33510c;

    public n(C3900a c3900a) {
        int k10 = c3900a.k();
        this.f33508a = k10;
        this.f33509b = c3900a.l();
        this.f33510c = new m[k10];
        for (int i10 = 0; i10 < this.f33508a; i10++) {
            this.f33510c[i10] = new m(c3900a);
        }
    }

    public final String a() {
        StringBuilder sb2;
        String str = "[";
        for (int i10 = 0; i10 < this.f33508a; i10++) {
            String str2 = (str + "Outer Matrix " + i10 + " [") + this.f33510c[i10].toString();
            if (i10 == this.f33508a - 1) {
                sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append("]\n");
            } else {
                sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append("],\n");
            }
            str = sb2.toString();
        }
        return str + "]\n";
    }

    public void b(byte[] bArr) {
        for (int i10 = 0; i10 < this.f33508a; i10++) {
            for (int i11 = 0; i11 < this.f33509b; i11++) {
                this.f33510c[i10].e(i11).B(bArr, (short) ((i10 << 8) + i11));
            }
        }
    }

    public void c(l lVar, m mVar) {
        for (int i10 = 0; i10 < this.f33508a; i10++) {
            lVar.e(i10).i(this.f33510c[i10], mVar);
        }
    }

    public String d(String str) {
        return str.concat(": \n" + a());
    }
}
