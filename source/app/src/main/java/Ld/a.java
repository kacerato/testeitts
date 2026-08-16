package Ld;

import Dd.a;
import Ed.d;
import android.animation.Animator;
import android.os.Handler;
import android.view.View;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class a implements d {

    public static final long f11702j = 300;

    public static final long f11703k = 3000;

    public static final C0382a f11704l = new C0382a(null);

    public boolean f11705b;

    public boolean f11706c;

    public boolean f11707d;

    public Runnable f11708e;

    public boolean f11709f;

    public long f11710g;

    public long f11711h;

    @NotNull
    public final View f11712i;

    public static final class C0382a {
        public C0382a() {
        }

        public C0382a(C14026x c14026x) {
            this();
        }
    }

    public static final class b implements Animator.AnimatorListener {

        public final float f11714b;

        public b(float f10) {
            this.f11714b = f10;
        }

        @Override
        public void onAnimationCancel(@NotNull Animator animator) {
            M.q(animator, "animator");
        }

        @Override
        public void onAnimationEnd(@NotNull Animator animator) {
            M.q(animator, "animator");
            if (this.f11714b == 0.0f) {
                a.this.g().setVisibility(8);
            }
        }

        @Override
        public void onAnimationRepeat(@NotNull Animator animator) {
            M.q(animator, "animator");
        }

        @Override
        public void onAnimationStart(@NotNull Animator animator) {
            M.q(animator, "animator");
            if (this.f11714b == 1.0f) {
                a.this.g().setVisibility(0);
            }
        }
    }

    public static final class c implements Runnable {
        public c() {
        }

        @Override
        public final void run() {
            a.this.b(0.0f);
        }
    }

    public a(@NotNull View targetView) {
        M.q(targetView, "targetView");
        this.f11712i = targetView;
        this.f11707d = true;
        this.f11708e = new c();
        this.f11710g = 300L;
        this.f11711h = f11703k;
    }

    private final void p(a.d dVar) {
        int i10 = Ld.b.f11716a[dVar.ordinal()];
        if (i10 == 1) {
            this.f11705b = false;
        } else if (i10 == 2) {
            this.f11705b = false;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f11705b = true;
        }
    }

    @Override
    public void A(@NotNull Dd.b youTubePlayer, @NotNull a.b playbackRate) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(playbackRate, "playbackRate");
    }

    @Override
    public void C(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    public final void b(float f10) {
        if (!this.f11706c || this.f11709f) {
            return;
        }
        this.f11707d = f10 != 0.0f;
        if (f10 == 1.0f && this.f11705b) {
            Handler handler = this.f11712i.getHandler();
            if (handler != null) {
                handler.postDelayed(this.f11708e, this.f11711h);
            }
        } else {
            Handler handler2 = this.f11712i.getHandler();
            if (handler2 != null) {
                handler2.removeCallbacks(this.f11708e);
            }
        }
        this.f11712i.animate().alpha(f10).setDuration(this.f11710g).setListener(new b(f10)).start();
    }

    public final long c() {
        return this.f11710g;
    }

    public final long d() {
        return this.f11711h;
    }

    @Override
    public void e(@NotNull Dd.b youTubePlayer, @NotNull String videoId) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(videoId, "videoId");
    }

    @Override
    public void f(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @NotNull
    public final View g() {
        return this.f11712i;
    }

    public final boolean h() {
        return this.f11709f;
    }

    public final void i(long j10) {
        this.f11710g = j10;
    }

    @Override
    public void j(@NotNull Dd.b youTubePlayer, @NotNull a.c error) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(error, "error");
    }

    public final void k(boolean z10) {
        this.f11709f = z10;
    }

    @Override
    public void l(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    public void m(@NotNull Dd.b youTubePlayer, @NotNull a.EnumC0095a playbackQuality) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(playbackQuality, "playbackQuality");
    }

    public final void n(long j10) {
        this.f11711h = j10;
    }

    public final void o() {
        b(this.f11707d ? 0.0f : 1.0f);
    }

    @Override
    public void s(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(state, "state");
        p(state);
        switch (Ld.b.f11717b[state.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f11706c = true;
                if (state == a.d.PLAYING) {
                    Handler handler = this.f11712i.getHandler();
                    if (handler != null) {
                        handler.postDelayed(this.f11708e, this.f11711h);
                        return;
                    }
                    return;
                }
                Handler handler2 = this.f11712i.getHandler();
                if (handler2 != null) {
                    handler2.removeCallbacks(this.f11708e);
                    return;
                }
                return;
            case 4:
            case 5:
                b(1.0f);
                this.f11706c = false;
                return;
            case 6:
                b(1.0f);
                return;
            case 7:
                b(1.0f);
                return;
            default:
                return;
        }
    }

    @Override
    public void w(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }
}
