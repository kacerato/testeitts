package d8;

import androidx.annotation.NonNull;

public class e {

    public String f84381a;

    public String f84382b;

    public int f84383c;

    public boolean f84384d;

    public String f84385e;

    public e(boolean blockCompile) {
        this.f84384d = blockCompile;
    }

    public String a() {
        return this.f84382b;
    }

    public int b() {
        return this.f84383c;
    }

    public String c() {
        return this.f84381a;
    }

    public boolean d() {
        return this.f84384d;
    }

    public void e(String information) {
        this.f84382b = information;
    }

    public void f(int line) {
        this.f84383c = line;
    }

    public void g(String text) {
        this.f84381a = text;
    }

    public String h() {
        return i(0, false);
    }

    public String i(int lineIncrement, boolean hideLine) {
        String str = "";
        if (!hideLine) {
            str = "(line:" + (this.f84383c + 1 + lineIncrement) + ")\n";
        }
        return str + "Info: " + this.f84382b + "\n" + this.f84381a;
    }

    public String j(boolean hideLine) {
        return i(0, hideLine);
    }

    @NonNull
    public String toString() {
        return "(Block Class? " + this.f84384d + ")\nline: " + this.f84383c + "\nCause: " + this.f84381a + "\nInformation: " + this.f84382b;
    }
}
