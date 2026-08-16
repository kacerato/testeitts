package qe;

import androidx.annotation.NonNull;
import qe.InterfaceC15084m;

public abstract class AbstractC15085n {

    public class a extends AbstractC15085n {

        public final InterfaceC15084m.b f106166a;

        public final C15078g f106167b;

        public a(InterfaceC15084m.b bVar, C15078g c15078g) {
            this.f106166a = bVar;
            this.f106167b = c15078g;
        }

        @Override
        @NonNull
        public InterfaceC15084m a() {
            return this.f106166a.c(this.f106167b, new C15094w());
        }
    }

    @NonNull
    public static AbstractC15085n b(@NonNull InterfaceC15084m.b bVar, @NonNull C15078g c15078g) {
        return new a(bVar, c15078g);
    }

    @NonNull
    public abstract InterfaceC15084m a();
}
