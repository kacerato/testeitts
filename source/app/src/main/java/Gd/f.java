package Gd;

import Dd.a;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class f extends Ed.a {

    @NotNull
    public a.d f7785b = a.d.UNKNOWN;

    public float f7786c;

    public float f7787d;

    @Nullable
    public String f7788e;

    public final float a() {
        return this.f7786c;
    }

    @NotNull
    public final a.d b() {
        return this.f7785b;
    }

    public final float c() {
        return this.f7787d;
    }

    @Nullable
    public final String d() {
        return this.f7788e;
    }

    @Override
    public void e(@NotNull Dd.b youTubePlayer, @NotNull String videoId) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(videoId, "videoId");
        this.f7788e = videoId;
    }

    @Override
    public void l(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        this.f7786c = f10;
    }

    @Override
    public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(state, "state");
        this.f7785b = state;
    }

    @Override
    public void w(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        this.f7787d = f10;
    }
}
