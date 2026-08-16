package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class o {

    public final ArrayList<b> f64754a = new ArrayList<>();

    @Nullable
    public b f64755b = null;

    @Nullable
    public ValueAnimator f64756c = null;

    public final Animator.AnimatorListener f64757d = new a();

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            o oVar = o.this;
            if (oVar.f64756c == animator) {
                oVar.f64756c = null;
            }
        }
    }

    public static class b {

        public final int[] f64759a;

        public final ValueAnimator f64760b;

        public b(int[] iArr, ValueAnimator valueAnimator) {
            this.f64759a = iArr;
            this.f64760b = valueAnimator;
        }
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f64757d);
        this.f64754a.add(bVar);
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f64756c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f64756c = null;
        }
    }

    public void c() {
        ValueAnimator valueAnimator = this.f64756c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f64756c = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.f64754a.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                bVar = null;
                break;
            }
            bVar = this.f64754a.get(i10);
            if (StateSet.stateSetMatches(bVar.f64759a, iArr)) {
                break;
            } else {
                i10++;
            }
        }
        b bVar2 = this.f64755b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f64755b = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }

    public final void e(@NonNull b bVar) {
        ValueAnimator valueAnimator = bVar.f64760b;
        this.f64756c = valueAnimator;
        valueAnimator.start();
    }
}
