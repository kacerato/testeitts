package Rl;

public class e extends o {

    public final String f22884i;

    public e() {
        this(11, 50, "SHA-256");
    }

    public String e() {
        return this.f22884i;
    }

    public e(int i10) {
        this(i10, "SHA-256");
    }

    public e(int i10, int i11) {
        this(i10, i11, "SHA-256");
    }

    public e(int i10, int i11, int i12) {
        this(i10, i11, i12, "SHA-256");
    }

    public e(int i10, int i11, int i12, String str) {
        super(i10, i11, i12);
        this.f22884i = str;
    }

    public e(int i10, int i11, String str) {
        super(i10, i11);
        this.f22884i = str;
    }

    public e(int i10, String str) {
        super(i10);
        this.f22884i = str;
    }

    public e(String str) {
        this(11, 50, str);
    }
}
