package k2;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface v {
    @Nullable
    Animator a(@NonNull ViewGroup viewGroup, @NonNull View view);

    @Nullable
    Animator b(@NonNull ViewGroup viewGroup, @NonNull View view);
}
