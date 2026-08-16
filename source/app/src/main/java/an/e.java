package an;

import java.io.IOException;
import w2.C15883c;

public class e {

    public final Appendable f32406a;

    public char f32407b;

    public e(Appendable appendable) {
        this.f32406a = appendable;
    }

    public final void a(char c10) {
        try {
            this.f32406a.append(c10);
            this.f32407b = c10;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final void b(String str) {
        try {
            this.f32406a.append(str);
            int length = str.length();
            if (length != 0) {
                this.f32407b = str.charAt(length - 1);
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void c() {
        char c10 = this.f32407b;
        if (c10 == 0 || c10 == ':') {
            return;
        }
        a(':');
    }

    public void d() {
        char c10 = this.f32407b;
        if (c10 == 0 || c10 == '\n') {
            return;
        }
        a('\n');
    }

    public void e() {
        char c10 = this.f32407b;
        if (c10 == 0 || c10 == ' ') {
            return;
        }
        a(C15883c.f126249O);
    }

    public void f(char c10) {
        a(c10);
    }

    public void g(String str) {
        b(str);
    }

    public void h(String str) {
        b(str.replaceAll("[\\r\\n\\s]+", " "));
    }
}
