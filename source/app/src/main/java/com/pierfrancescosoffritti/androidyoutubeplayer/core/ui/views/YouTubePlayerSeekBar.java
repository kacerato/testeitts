package com.pierfrancescosoffritti.androidyoutubeplayer.core.ui.views;

import Cd.b;
import Dd.a;
import Ed.d;
import Ld.c;
import Md.b;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class YouTubePlayerSeekBar extends LinearLayout implements SeekBar.OnSeekBarChangeListener, d {

    public boolean f83474b;

    public int f83475c;

    public boolean f83476d;

    public boolean f83477e;

    @Nullable
    public b f83478f;

    @NotNull
    public final TextView f83479g;

    @NotNull
    public final TextView f83480h;

    @NotNull
    public final SeekBar f83481i;

    public static final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            YouTubePlayerSeekBar.this.getVideoDurationTextView().setText("");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerSeekBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        M.q(context, "context");
        this.f83475c = -1;
        this.f83477e = true;
        TextView textView = new TextView(context);
        this.f83479g = textView;
        TextView textView2 = new TextView(context);
        this.f83480h = textView2;
        SeekBar seekBar = new SeekBar(context);
        this.f83481i = seekBar;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.n.f3830D8, 0, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(b.n.f3850F8, getResources().getDimensionPixelSize(b.e.f2950A0));
        int color = obtainStyledAttributes.getColor(b.n.f3840E8, ContextCompat.getColor(context, b.d.f2867D));
        obtainStyledAttributes.recycle();
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(b.e.f2952B0);
        Resources resources = getResources();
        int i10 = b.l.f3410F;
        textView.setText(resources.getString(i10));
        textView.setPadding(dimensionPixelSize2, dimensionPixelSize2, 0, dimensionPixelSize2);
        textView.setTextColor(ContextCompat.getColor(context, 17170443));
        textView.setGravity(16);
        textView2.setText(getResources().getString(i10));
        textView2.setPadding(0, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2);
        textView2.setTextColor(ContextCompat.getColor(context, 17170443));
        textView2.setGravity(16);
        setFontSize(dimensionPixelSize);
        int i11 = dimensionPixelSize2 * 2;
        seekBar.setPadding(i11, dimensionPixelSize2, i11, dimensionPixelSize2);
        setColor(color);
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
        addView(seekBar, new LinearLayout.LayoutParams(0, -2, 1.0f));
        addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        setGravity(16);
        seekBar.setOnSeekBarChangeListener(this);
    }

    private final void b(a.d dVar) {
        int i10 = Md.a.f14865a[dVar.ordinal()];
        if (i10 == 1) {
            this.f83476d = false;
            return;
        }
        if (i10 == 2) {
            this.f83476d = false;
        } else if (i10 == 3) {
            this.f83476d = true;
        } else {
            if (i10 != 4) {
                return;
            }
            a();
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

    public final void a() {
        this.f83481i.setProgress(0);
        this.f83481i.setMax(0);
        this.f83480h.post(new a());
    }

    @Override
    public void e(@NotNull Dd.b youTubePlayer, @NotNull String videoId) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(videoId, "videoId");
    }

    @Override
    public void f(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        if (!this.f83477e) {
            this.f83481i.setSecondaryProgress(0);
        } else {
            this.f83481i.setSecondaryProgress((int) (f10 * r2.getMax()));
        }
    }

    @NotNull
    public final SeekBar getSeekBar() {
        return this.f83481i;
    }

    public final boolean getShowBufferingProgress() {
        return this.f83477e;
    }

    @NotNull
    public final TextView getVideoCurrentTimeTextView() {
        return this.f83479g;
    }

    @NotNull
    public final TextView getVideoDurationTextView() {
        return this.f83480h;
    }

    @Nullable
    public final Md.b getYoutubePlayerSeekBarListener() {
        return this.f83478f;
    }

    @Override
    public void j(@NotNull Dd.b youTubePlayer, @NotNull a.c error) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(error, "error");
    }

    @Override
    public void l(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        if (this.f83474b) {
            return;
        }
        if (this.f83475c <= 0 || M.g(c.a(f10), c.a(this.f83475c))) {
            this.f83475c = -1;
            this.f83481i.setProgress((int) f10);
        }
    }

    @Override
    public void m(@NotNull Dd.b youTubePlayer, @NotNull a.EnumC0095a playbackQuality) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(playbackQuality, "playbackQuality");
    }

    @Override
    public void onProgressChanged(@NotNull SeekBar seekBar, int i10, boolean z10) {
        M.q(seekBar, "seekBar");
        this.f83479g.setText(c.a(i10));
    }

    @Override
    public void onStartTrackingTouch(@NotNull SeekBar seekBar) {
        M.q(seekBar, "seekBar");
        this.f83474b = true;
    }

    @Override
    public void onStopTrackingTouch(@NotNull SeekBar seekBar) {
        M.q(seekBar, "seekBar");
        if (this.f83476d) {
            this.f83475c = seekBar.getProgress();
        }
        Md.b bVar = this.f83478f;
        if (bVar != null) {
            bVar.a(seekBar.getProgress());
        }
        this.f83474b = false;
    }

    @Override
    public void s(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    public final void setColor(@ColorInt int i10) {
        DrawableCompat.setTint(this.f83481i.getThumb(), i10);
        DrawableCompat.setTint(this.f83481i.getProgressDrawable(), i10);
    }

    public final void setFontSize(float f10) {
        this.f83479g.setTextSize(0, f10);
        this.f83480h.setTextSize(0, f10);
    }

    public final void setShowBufferingProgress(boolean z10) {
        this.f83477e = z10;
    }

    public final void setYoutubePlayerSeekBarListener(@Nullable Md.b bVar) {
        this.f83478f = bVar;
    }

    @Override
    public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(state, "state");
        this.f83475c = -1;
        b(state);
    }

    @Override
    public void w(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
        this.f83480h.setText(c.a(f10));
        this.f83481i.setMax((int) f10);
    }

    public YouTubePlayerSeekBar(Context context, AttributeSet attributeSet, int i10, C14026x c14026x) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
