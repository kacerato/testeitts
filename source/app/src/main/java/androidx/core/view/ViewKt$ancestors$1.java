package androidx.core.view;

import android.view.ViewParent;

public class ViewKt$ancestors$1 extends kotlin.jvm.internal.I implements Mf.l<ViewParent, ViewParent> {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    public ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override
    public final ViewParent invoke(ViewParent p02) {
        kotlin.jvm.internal.M.p(p02, "p0");
        return p02.getParent();
    }
}
