package k8;

import androidx.annotation.NonNull;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;

public class C13950c {

    public String f94981a;

    public String[] f94982b;

    public String f94983c;

    public JavaMetaInfo f94984d;

    public C13950c(String className) {
        this.f94983c = className;
    }

    public C13950c clone() {
        C13950c c13950c = new C13950c(this.f94983c);
        c13950c.f94984d = this.f94984d;
        c13950c.i(this.f94981a);
        return c13950c;
    }

    public final void b() {
        if (this.f94982b == null) {
            this.f94982b = this.f94981a.split("\n");
        }
    }

    public String c() {
        return this.f94983c;
    }

    public String d() {
        return this.f94981a;
    }

    public String e(int line) {
        b();
        return this.f94982b[line];
    }

    public int f() {
        b();
        return this.f94982b.length;
    }

    public void g() {
        b();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 1;
        while (true) {
            String[] strArr = this.f94982b;
            if (i10 >= strArr.length) {
                this.f94981a = Tc.b.X(sb2.toString());
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

    public void h(int line, String newText) {
        b();
        this.f94982b[line] = Tc.b.X(newText);
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (true) {
            String[] strArr = this.f94982b;
            if (i10 >= strArr.length) {
                this.f94981a = Tc.b.X(sb2.toString());
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

    public void i(String code) {
        this.f94981a = Tc.b.X(code);
        this.f94982b = null;
    }

    @NonNull
    public String toString() {
        return d();
    }
}
