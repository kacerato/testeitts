package Sm;

public abstract class b {

    public static final String f23785c = "   ";

    public static final String f23786d = "";

    public final b f23787a;

    public final String f23788b;

    public b(b bVar) {
        this.f23787a = bVar;
        if (bVar == null) {
            this.f23788b = "";
            return;
        }
        this.f23788b = bVar.f23788b + f23785c;
    }

    public String a() {
        return this.f23788b;
    }

    public b b() {
        return this.f23787a;
    }
}
