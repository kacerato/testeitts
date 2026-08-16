package androidx.core.view;

import Xf.AbstractC3314o;
import Xf.InterfaceC3312m;
import android.view.View;
import android.view.ViewGroup;
import nf.C14418j0;
import nf.P0;

@Bf.f(c = "androidx.core.view.ViewGroupKt$descendants$1", f = "ViewGroup.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {119, 121}, m = "invokeSuspend", n = {"$this$sequence", "$this$forEach$iv", "child", "index$iv", "$this$sequence", "$this$forEach$iv", "index$iv"}, s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "I$0"})
public final class ViewGroupKt$descendants$1 extends Bf.l implements Mf.p<AbstractC3314o<? super View>, yf.f<? super P0>, Object> {
    final ViewGroup $this_descendants;
    int I$0;
    int I$1;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewGroupKt$descendants$1(ViewGroup viewGroup, yf.f<? super ViewGroupKt$descendants$1> fVar) {
        super(2, fVar);
        this.$this_descendants = viewGroup;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        ViewGroupKt$descendants$1 viewGroupKt$descendants$1 = new ViewGroupKt$descendants$1(this.$this_descendants, fVar);
        viewGroupKt$descendants$1.L$0 = obj;
        return viewGroupKt$descendants$1;
    }

    @Override
    public final Object invoke(AbstractC3314o<? super View> abstractC3314o, yf.f<? super P0> fVar) {
        return ((ViewGroupKt$descendants$1) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x008b -> B:6:0x008d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0092 -> B:7:0x0094). Please report as a decompilation issue!!! */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        AbstractC3314o abstractC3314o;
        ViewGroup viewGroup;
        int childCount;
        int i10;
        ViewGroup viewGroup2;
        View view;
        int i11;
        int i12;
        Object l10 = Af.d.l();
        int i13 = this.label;
        if (i13 == 0) {
            C14418j0.n(obj);
            abstractC3314o = (AbstractC3314o) this.L$0;
            viewGroup = this.$this_descendants;
            childCount = viewGroup.getChildCount();
            i10 = 0;
            if (i10 >= childCount) {
            }
        } else if (i13 == 1) {
            i12 = this.I$1;
            i11 = this.I$0;
            view = (View) this.L$2;
            viewGroup2 = (ViewGroup) this.L$1;
            AbstractC3314o abstractC3314o2 = (AbstractC3314o) this.L$0;
            C14418j0.n(obj);
            abstractC3314o = abstractC3314o2;
            if (view instanceof ViewGroup) {
            }
        } else {
            if (i13 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i12 = this.I$1;
            i11 = this.I$0;
            ViewGroup viewGroup3 = (ViewGroup) this.L$1;
            AbstractC3314o abstractC3314o3 = (AbstractC3314o) this.L$0;
            C14418j0.n(obj);
            abstractC3314o = abstractC3314o3;
            ViewGroup viewGroup4 = viewGroup3;
            int i14 = i12;
            viewGroup = viewGroup4;
            int i15 = i14;
            i10 = i11 + 1;
            childCount = i15;
            if (i10 >= childCount) {
                View childAt = viewGroup.getChildAt(i10);
                kotlin.jvm.internal.M.o(childAt, "getChildAt(index)");
                this.L$0 = abstractC3314o;
                this.L$1 = viewGroup;
                this.L$2 = childAt;
                this.I$0 = i10;
                this.I$1 = childCount;
                this.label = 1;
                if (abstractC3314o.a(childAt, this) == l10) {
                    return l10;
                }
                viewGroup2 = viewGroup;
                i12 = childCount;
                i11 = i10;
                view = childAt;
                if (view instanceof ViewGroup) {
                    i14 = i12;
                    viewGroup = viewGroup2;
                    int i152 = i14;
                    i10 = i11 + 1;
                    childCount = i152;
                    if (i10 >= childCount) {
                    }
                } else {
                    InterfaceC3312m<View> descendants = ViewGroupKt.getDescendants((ViewGroup) view);
                    this.L$0 = abstractC3314o;
                    this.L$1 = viewGroup2;
                    this.L$2 = null;
                    this.I$0 = i11;
                    this.I$1 = i12;
                    this.label = 2;
                    if (abstractC3314o.c(descendants, this) == l10) {
                        return l10;
                    }
                    viewGroup3 = viewGroup2;
                    abstractC3314o3 = abstractC3314o;
                    abstractC3314o = abstractC3314o3;
                    ViewGroup viewGroup42 = viewGroup3;
                    int i142 = i12;
                    viewGroup = viewGroup42;
                    int i1522 = i142;
                    i10 = i11 + 1;
                    childCount = i1522;
                    if (i10 >= childCount) {
                        return P0.f98194a;
                    }
                }
            }
        }
    }
}
