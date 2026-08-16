package Gd;

import Lf.j;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

@j(name = "YouTubePlayerUtils")
public final class g {
    public static final void a(@NotNull Dd.b loadOrCueVideo, @NotNull Lifecycle lifecycle, @NotNull String videoId, float f10) {
        M.q(loadOrCueVideo, "$this$loadOrCueVideo");
        M.q(lifecycle, "lifecycle");
        M.q(videoId, "videoId");
        b(loadOrCueVideo, lifecycle.getCurrentState() == Lifecycle.State.RESUMED, videoId, f10);
    }

    public static final void b(@NotNull Dd.b loadOrCueVideo, boolean z10, @NotNull String videoId, float f10) {
        M.q(loadOrCueVideo, "$this$loadOrCueVideo");
        M.q(videoId, "videoId");
        if (z10) {
            loadOrCueVideo.h(videoId, f10);
        } else {
            loadOrCueVideo.f(videoId, f10);
        }
    }
}
