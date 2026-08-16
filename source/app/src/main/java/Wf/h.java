package Wf;

import nf.InterfaceC14392B;
import nf.InterfaceC14422l0;

public interface h<R> extends c<R>, InterfaceC14392B<R> {

    public static final class a {
        @InterfaceC14422l0(version = "1.1")
        public static void a() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void b() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void c() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void d() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void e() {
        }
    }

    boolean isExternal();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    @Override
    boolean isSuspend();
}
