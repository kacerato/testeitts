package kg;

import eg.F0;
import jg.InterfaceC13842i;
import org.jetbrains.annotations.NotNull;

@F0
public interface p<T> extends InterfaceC13842i<T> {

    public static final class a {
        public static InterfaceC13842i a(p pVar, yf.j jVar, int i10, gg.i iVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i11 & 1) != 0) {
                jVar = yf.l.f130251b;
            }
            if ((i11 & 2) != 0) {
                i10 = -3;
            }
            if ((i11 & 4) != 0) {
                iVar = gg.i.SUSPEND;
            }
            return pVar.c(jVar, i10, iVar);
        }
    }

    @NotNull
    InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar);
}
