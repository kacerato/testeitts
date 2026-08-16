package Zf;

import Ef.f;
import Lf.j;

@j(name = "ProcessKt")
public final class a {
    @f
    public static final Void a(int i10) {
        System.exit(i10);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }
}
