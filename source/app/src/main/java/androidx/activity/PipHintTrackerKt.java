package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import jg.C13844k;
import jg.InterfaceC13843j;
import nf.P0;

public final class PipHintTrackerKt {
    public static final Object trackPipAnimationHintView(final Activity activity, View view, yf.f<? super P0> fVar) {
        Object a10 = C13844k.s(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).a(new InterfaceC13843j() {
            @Override
            public Object emit(Object obj, yf.f fVar2) {
                return emit((Rect) obj, (yf.f<? super P0>) fVar2);
            }

            public final Object emit(Rect rect, yf.f<? super P0> fVar2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(Activity.this, rect);
                return P0.f98194a;
            }
        }, fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    public static final Rect trackPipAnimationHintView$positionInWindow(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
