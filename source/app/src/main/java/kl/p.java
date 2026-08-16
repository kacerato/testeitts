package kl;

public class p {

    public final byte[] f95465a;

    public final byte[] f95466b = new byte[32];

    public final a[] f95467c;

    public static class a {

        public final byte[] f95468a;

        public final byte[] f95469b;

        public final int[] f95470c;

        public final byte[] f95471d;

        public final byte[] f95472e;

        public final byte[] f95473f;

        public a(h hVar) {
            int i10 = hVar.f95432o;
            this.f95468a = new byte[i10];
            this.f95469b = new byte[i10];
            this.f95470c = new int[hVar.f95425h];
            this.f95471d = new byte[hVar.f95426i];
            this.f95472e = new byte[hVar.f95433p];
            int i11 = hVar.f95428k;
            if (i11 > 0) {
                this.f95473f = new byte[i11];
            } else {
                this.f95473f = null;
            }
        }
    }

    public p(h hVar) {
        this.f95465a = new byte[t.i(hVar.f95429l * 2)];
        this.f95467c = new a[hVar.f95429l];
        int i10 = 0;
        while (true) {
            a[] aVarArr = this.f95467c;
            if (i10 >= aVarArr.length) {
                return;
            }
            aVarArr[i10] = new a(hVar);
            i10++;
        }
    }
}
