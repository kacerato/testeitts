package J;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

public interface n<Model, Data> {

    public static class a<Data> {

        public final C.e f10127a;

        public final List<C.e> f10128b;

        public final D.d<Data> f10129c;

        public a(@NonNull C.e eVar, @NonNull D.d<Data> dVar) {
            this(eVar, Collections.emptyList(), dVar);
        }

        public a(@NonNull C.e eVar, @NonNull List<C.e> list, @NonNull D.d<Data> dVar) {
            this.f10127a = (C.e) Y.k.d(eVar);
            this.f10128b = (List) Y.k.d(list);
            this.f10129c = (D.d) Y.k.d(dVar);
        }
    }

    boolean a(@NonNull Model model);

    @Nullable
    a<Data> b(@NonNull Model model, int i10, int i11, @NonNull C.h hVar);
}
