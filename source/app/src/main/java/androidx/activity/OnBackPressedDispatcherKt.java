package androidx.activity;

import Mf.l;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.internal.M;
import nf.P0;

public final class OnBackPressedDispatcherKt {
    public static final OnBackPressedCallback addCallback(OnBackPressedDispatcher onBackPressedDispatcher, LifecycleOwner lifecycleOwner, final boolean z10, final l<? super OnBackPressedCallback, P0> onBackPressed) {
        M.p(onBackPressedDispatcher, "<this>");
        M.p(onBackPressed, "onBackPressed");
        OnBackPressedCallback onBackPressedCallback = new OnBackPressedCallback(z10) {
            @Override
            public void handleOnBackPressed() {
                onBackPressed.invoke(this);
            }
        };
        if (lifecycleOwner != null) {
            onBackPressedDispatcher.addCallback(lifecycleOwner, onBackPressedCallback);
        } else {
            onBackPressedDispatcher.addCallback(onBackPressedCallback);
        }
        return onBackPressedCallback;
    }

    public static OnBackPressedCallback addCallback$default(OnBackPressedDispatcher onBackPressedDispatcher, LifecycleOwner lifecycleOwner, boolean z10, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lifecycleOwner = null;
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return addCallback(onBackPressedDispatcher, lifecycleOwner, z10, lVar);
    }
}
