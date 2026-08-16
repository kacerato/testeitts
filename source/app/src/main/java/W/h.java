package W;

import W.k;
import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

public class h<R> implements g<R> {

    public final k.a f27192a;

    public f<R> f27193b;

    public static class a implements k.a {

        public final Animation f27194a;

        public a(Animation animation) {
            this.f27194a = animation;
        }

        @Override
        public Animation a(Context context) {
            return this.f27194a;
        }
    }

    public static class b implements k.a {

        public final int f27195a;

        public b(int i10) {
            this.f27195a = i10;
        }

        @Override
        public Animation a(Context context) {
            return AnimationUtils.loadAnimation(context, this.f27195a);
        }
    }

    public h(Animation animation) {
        this(new a(animation));
    }

    @Override
    public f<R> a(C.a aVar, boolean z10) {
        if (aVar == C.a.MEMORY_CACHE || !z10) {
            return e.b();
        }
        if (this.f27193b == null) {
            this.f27193b = new k(this.f27192a);
        }
        return this.f27193b;
    }

    public h(int i10) {
        this(new b(i10));
    }

    public h(k.a aVar) {
        this.f27192a = aVar;
    }
}
