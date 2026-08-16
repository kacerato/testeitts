package androidx.core.view;

import Xf.AbstractC3314o;
import Xf.InterfaceC3312m;
import android.view.View;
import android.view.ViewGroup;
import java.net.HttpURLConnection;
import nf.C14418j0;
import nf.P0;

@Bf.f(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", i = {0}, l = {HttpURLConnection.HTTP_REQ_TOO_LONG, 416}, m = "invokeSuspend", n = {"$this$sequence"}, s = {"L$0"})
public final class ViewKt$allViews$1 extends Bf.l implements Mf.p<AbstractC3314o<? super View>, yf.f<? super P0>, Object> {
    final View $this_allViews;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, yf.f<? super ViewKt$allViews$1> fVar) {
        super(2, fVar);
        this.$this_allViews = view;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, fVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override
    public final Object invoke(AbstractC3314o<? super View> abstractC3314o, yf.f<? super P0> fVar) {
        return ((ViewKt$allViews$1) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AbstractC3314o abstractC3314o;
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            abstractC3314o = (AbstractC3314o) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = abstractC3314o;
            this.label = 1;
            if (abstractC3314o.a(view, this) == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
                return P0.f98194a;
            }
            abstractC3314o = (AbstractC3314o) this.L$0;
            C14418j0.n(obj);
        }
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            InterfaceC3312m<View> descendants = ViewGroupKt.getDescendants((ViewGroup) view2);
            this.L$0 = null;
            this.label = 2;
            if (abstractC3314o.c(descendants, this) == l10) {
                return l10;
            }
        }
        return P0.f98194a;
    }
}
