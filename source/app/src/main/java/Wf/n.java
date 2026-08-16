package Wf;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public interface n<V> extends Wf.c<V> {

    public interface a<V> {
        @NotNull
        n<V> getProperty();
    }

    public static final class b {
        @InterfaceC14422l0(version = "1.1")
        public static void a() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void b() {
        }
    }

    public interface c<V> extends a<V>, h<V> {
    }

    @NotNull
    c<V> c();

    boolean i();

    boolean o();
}
