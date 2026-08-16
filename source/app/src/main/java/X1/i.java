package x1;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavaElement;

public class i {

    public long f127904a;

    public long f127905b;

    @Nullable
    public TimeInterpolator f127906c;

    public int f127907d;

    public int f127908e;

    public i(long j10, long j11) {
        this.f127906c = null;
        this.f127907d = 0;
        this.f127908e = 1;
        this.f127904a = j10;
        this.f127905b = j11;
    }

    @NonNull
    public static i b(@NonNull ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f127907d = valueAnimator.getRepeatCount();
        iVar.f127908e = valueAnimator.getRepeatMode();
        return iVar;
    }

    public static TimeInterpolator f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? C16046a.f127889b : interpolator instanceof AccelerateInterpolator ? C16046a.f127890c : interpolator instanceof DecelerateInterpolator ? C16046a.f127891d : interpolator;
    }

    public void a(@NonNull Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f127904a;
    }

    public long d() {
        return this.f127905b;
    }

    @Nullable
    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f127906c;
        return timeInterpolator != null ? timeInterpolator : C16046a.f127889b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f127907d;
    }

    public int h() {
        return this.f127908e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + JavaElement.JEM_COMPILATIONUNIT + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + ((Object) e().getClass()) + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j10, long j11, @NonNull TimeInterpolator timeInterpolator) {
        this.f127907d = 0;
        this.f127908e = 1;
        this.f127904a = j10;
        this.f127905b = j11;
        this.f127906c = timeInterpolator;
    }
}
