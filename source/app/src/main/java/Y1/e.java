package y1;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.s;
import w1.C15879a;

@RequiresApi(21)
public class e {

    public static final int[] f129921a = {R.attr.stateListAnimator};

    public static void a(@NonNull View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    public static void b(@NonNull View view, float f10) {
        int integer = view.getResources().getInteger(C15879a.i.f123883c);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j10 = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, C15879a.c.f122725yd, -C15879a.c.f122743zd}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j10));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f10).setDuration(j10));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    public static void c(@NonNull View view, AttributeSet attributeSet, int i10, int i11) {
        Context context = view.getContext();
        TypedArray j10 = s.j(context, attributeSet, f129921a, i10, i11, new int[0]);
        try {
            if (j10.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, j10.getResourceId(0, 0)));
            }
        } finally {
            j10.recycle();
        }
    }
}
