package qe;

import androidx.annotation.NonNull;
import qe.InterfaceC15084m;

public class C15095x extends AbstractC15072a {

    public class a implements InterfaceC15084m.c<Um.y> {
        public a() {
        }

        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.y yVar) {
            interfaceC15084m.p();
        }
    }

    @NonNull
    public static C15095x l() {
        return new C15095x();
    }

    @Override
    public void j(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.y.class, new a());
    }
}
