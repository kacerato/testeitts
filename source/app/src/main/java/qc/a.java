package Qc;

public class a {
    public boolean a(Ac.b s12, Ac.b s22) {
        return s12.W(s22);
    }

    public boolean b(Ac.b s12, String s22) {
        if (s12 == null) {
            return false;
        }
        return s12.X(s22);
    }

    public boolean c(String s12, Ac.b s22) {
        if (s22 == null) {
            return false;
        }
        return s22.X(s12);
    }

    public boolean d(String s12, String s22) {
        return s12.equals(s22);
    }
}
