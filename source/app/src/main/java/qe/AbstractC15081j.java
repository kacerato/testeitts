package qe;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class AbstractC15081j {

    public static class a extends AbstractC15081j {
        @Override
        @NonNull
        public List<Um.v> b(@NonNull Um.v vVar) {
            Um.v e10 = vVar.e();
            if (e10 == null) {
                return Collections.singletonList(vVar);
            }
            ArrayList arrayList = new ArrayList();
            while (e10 != null) {
                if (!(e10 instanceof Um.s)) {
                    arrayList.add(e10);
                }
                Um.v g10 = e10.g();
                e10.o();
                e10 = g10;
            }
            return arrayList;
        }
    }

    @NonNull
    public static AbstractC15081j a() {
        return new a();
    }

    @NonNull
    public abstract List<Um.v> b(@NonNull Um.v vVar);
}
