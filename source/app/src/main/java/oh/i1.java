package oh;

public class i1 {

    public String f98896a;

    public int f98897b = 0;

    public i1(String str) {
        this.f98896a = str;
    }

    public boolean a() {
        return this.f98897b != -1;
    }

    public String b() {
        int i10 = this.f98897b;
        if (i10 == -1) {
            return null;
        }
        int indexOf = this.f98896a.indexOf(46, i10);
        if (indexOf == -1) {
            String substring = this.f98896a.substring(this.f98897b);
            this.f98897b = -1;
            return substring;
        }
        String substring2 = this.f98896a.substring(this.f98897b, indexOf);
        this.f98897b = indexOf + 1;
        return substring2;
    }
}
