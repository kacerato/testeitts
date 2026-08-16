package h3;

public class C13423b implements InterfaceC13422a {

    public static C13423b f90217a;

    public static C13423b b() {
        if (f90217a == null) {
            f90217a = new C13423b();
        }
        return f90217a;
    }

    @Override
    public long a() {
        return System.currentTimeMillis();
    }
}
