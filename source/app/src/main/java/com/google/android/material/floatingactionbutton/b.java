package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;
import x1.h;

public interface b {
    h a();

    @Nullable
    h b();

    boolean c();

    void d(@NonNull Animator.AnimatorListener animatorListener);

    @AnimatorRes
    int e();

    AnimatorSet f();

    void g(@Nullable ExtendedFloatingActionButton.j jVar);

    List<Animator.AnimatorListener> getListeners();

    void h();

    void i();

    void j(@NonNull Animator.AnimatorListener animatorListener);

    void k();

    void l(@Nullable h hVar);

    void onAnimationStart(Animator animator);
}
