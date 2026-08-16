package W;

import W.f;
import android.view.View;

public class j<R> implements f<R> {

    public final a f27198a;

    public interface a {
        void a(View view);
    }

    public j(a aVar) {
        this.f27198a = aVar;
    }

    @Override
    public boolean a(R r10, f.a aVar) {
        if (aVar.d() == null) {
            return false;
        }
        this.f27198a.a(aVar.d());
        return false;
    }
}
