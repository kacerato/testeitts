package Ng;

import java.io.IOException;
import java.util.List;

public interface k {

    public static final k f16361a = new a();

    public class a implements k {
        @Override
        public boolean a(int i10, List<b> list) {
            return true;
        }

        @Override
        public boolean b(int i10, List<b> list, boolean z10) {
            return true;
        }

        @Override
        public boolean c(int i10, Tg.e eVar, int i11, boolean z10) throws IOException {
            eVar.skip(i11);
            return true;
        }

        @Override
        public void d(int i10, Ng.a aVar) {
        }
    }

    boolean a(int i10, List<b> list);

    boolean b(int i10, List<b> list, boolean z10);

    boolean c(int i10, Tg.e eVar, int i11, boolean z10) throws IOException;

    void d(int i10, Ng.a aVar);
}
