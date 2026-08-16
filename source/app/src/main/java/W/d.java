package W;

import W.f;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

public class d implements f<Drawable> {

    public final int f27188a;

    public final boolean f27189b;

    public d(int i10, boolean z10) {
        this.f27188a = i10;
        this.f27189b = z10;
    }

    @Override
    public boolean a(Drawable drawable, f.a aVar) {
        Drawable e10 = aVar.e();
        if (e10 == null) {
            e10 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{e10, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f27189b);
        transitionDrawable.startTransition(this.f27188a);
        aVar.j(transitionDrawable);
        return true;
    }
}
