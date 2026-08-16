package rg;

import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.i;

public interface InterfaceC15175a {

    public static final class C1996a {
        @InterfaceC14427o(level = EnumC14431q.WARNING, message = "Mutex.onLock deprecated without replacement. For additional details please refer to #2794")
        public static void a() {
        }

        public static Object b(InterfaceC15175a interfaceC15175a, Object obj, yf.f fVar, int i10, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lock");
            }
            if ((i10 & 1) != 0) {
                obj = null;
            }
            return interfaceC15175a.h(obj, fVar);
        }

        public static boolean c(InterfaceC15175a interfaceC15175a, Object obj, int i10, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
            }
            if ((i10 & 1) != 0) {
                obj = null;
            }
            return interfaceC15175a.b(obj);
        }

        public static void d(InterfaceC15175a interfaceC15175a, Object obj, int i10, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
            }
            if ((i10 & 1) != 0) {
                obj = null;
            }
            interfaceC15175a.i(obj);
        }
    }

    boolean b(@Nullable Object obj);

    boolean c();

    boolean d(@NotNull Object obj);

    @NotNull
    i<Object, InterfaceC15175a> e();

    @Nullable
    Object h(@Nullable Object obj, @NotNull yf.f<? super P0> fVar);

    void i(@Nullable Object obj);
}
