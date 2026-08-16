package Pm;

public class a {

    public final StringBuilder f21748a;

    public int f21749b;

    public a() {
        this.f21749b = 0;
        this.f21748a = new StringBuilder();
    }

    public void a(CharSequence charSequence) {
        if (this.f21749b != 0) {
            this.f21748a.append('\n');
        }
        this.f21748a.append(charSequence);
        this.f21749b++;
    }

    public String b() {
        return this.f21748a.toString();
    }

    public a(String str) {
        this.f21749b = 0;
        this.f21748a = new StringBuilder(str);
    }
}
