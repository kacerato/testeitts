package r8;

import Tc.b;
import androidx.annotation.NonNull;

public class C15153a {

    public String f108719a = "";

    public String[] f108720b;

    public void a(String code) {
        this.f108719a += b.X(code);
        this.f108720b = null;
    }

    public void b(String code) {
        this.f108719a += "\n";
        this.f108719a += b.X(code);
        this.f108720b = null;
    }

    public C15153a clone() {
        C15153a c15153a = new C15153a();
        c15153a.k(this.f108719a);
        return c15153a;
    }

    public final void d() {
        if (this.f108720b == null) {
            this.f108720b = this.f108719a.split("\n");
        }
    }

    public String e() {
        return this.f108719a;
    }

    public String f(int line) {
        d();
        return this.f108720b[line];
    }

    public int g() {
        d();
        return this.f108720b.length;
    }

    public void h() {
        d();
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        int i10 = 0;
        int i11 = 1;
        while (true) {
            String[] strArr = this.f108720b;
            if (i11 >= strArr.length) {
                this.f108719a = b.X(sb2.toString());
                this.f108720b = null;
                return;
            }
            String str = strArr[i11];
            boolean isEmpty = str.trim().isEmpty();
            if (!isEmpty || z10) {
                if (!isEmpty) {
                    z10 = false;
                }
                if (i10 > 0) {
                    sb2.append("\n");
                }
                sb2.append(str);
                i10++;
            } else {
                z10 = true;
            }
            i11++;
        }
    }

    public void i() {
        d();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 1;
        while (true) {
            String[] strArr = this.f108720b;
            if (i10 >= strArr.length) {
                this.f108719a = b.X(sb2.toString());
                this.f108720b = null;
                return;
            } else {
                String str = strArr[i10];
                if (i10 > 0) {
                    sb2.append("\n");
                }
                sb2.append(str);
                i10++;
            }
        }
    }

    public void j(int line, String newText) {
        d();
        this.f108720b[line] = b.X(newText);
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (true) {
            String[] strArr = this.f108720b;
            if (i10 >= strArr.length) {
                this.f108719a = b.X(sb2.toString());
                return;
            }
            String str = strArr[i10];
            if (i10 > 0) {
                sb2.append("\n");
            }
            sb2.append(str);
            i10++;
        }
    }

    public void k(String code) {
        this.f108719a = b.X(code);
        this.f108720b = null;
    }

    @NonNull
    public String toString() {
        return e();
    }
}
