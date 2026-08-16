package P1;

import android.animation.Animator;
import androidx.annotation.Nullable;

public class a {

    @Nullable
    public Animator f20627a;

    public void a() {
        Animator animator = this.f20627a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f20627a = null;
    }

    public void c(Animator animator) {
        a();
        this.f20627a = animator;
    }
}
