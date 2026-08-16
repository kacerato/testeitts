package Gd;

import Dd.a;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class d extends Ed.a {

    public boolean f7779b;

    public boolean f7780c;

    public a.c f7781d;

    public String f7782e;

    public float f7783f;

    public final void a() {
        this.f7779b = true;
    }

    public final void b() {
        this.f7779b = false;
    }

    public final void c(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
        String str = this.f7782e;
        if (str != null) {
            boolean z10 = this.f7780c;
            if (z10 && this.f7781d == a.c.HTML_5_PLAYER) {
                g.b(youTubePlayer, this.f7779b, str, this.f7783f);
            } else if (!z10 && this.f7781d == a.c.HTML_5_PLAYER) {
                youTubePlayer.f(str, this.f7783f);
            }
        }
        this.f7781d = null;
    }

    @Override
    public void e(@NotNull Dd.b youTubePlayer, @NotNull String videoId) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(videoId, "videoId");
        this.f7782e = videoId;
    }

    @Override
    public void j(@NotNull Dd.b youTubePlayer, @NotNull a.c error) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(error, "error");
        if (error == a.c.HTML_5_PLAYER) {
            this.f7781d = error;
        }
    }

    @Override
    public void l(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        this.f7783f = f10;
    }

    @Override
    public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(state, "state");
        int i10 = c.f7778a[state.ordinal()];
        if (i10 == 1) {
            this.f7780c = false;
        } else if (i10 == 2) {
            this.f7780c = false;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f7780c = true;
        }
    }
}
