package jk;

public class w extends AbstractC13871a {

    public final i[] f93943a;

    public w(i[] iVarArr, int i10, int i11) {
        this.f93943a = c(iVarArr, i10, i11);
    }

    public static i[] c(i[] iVarArr, int i10, int i11) {
        i[] iVarArr2 = new i[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iVarArr2[i12] = iVarArr[i10 + i12];
        }
        return iVarArr2;
    }

    @Override
    public i a(int i10) {
        throw new UnsupportedOperationException("Constant-time lookup not supported");
    }

    @Override
    public i b(int i10) {
        return this.f93943a[i10];
    }

    @Override
    public int getSize() {
        return this.f93943a.length;
    }
}
