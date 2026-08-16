package org.blacksquircle.ui.editorkit.model;

import ag.C3617K;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class TabWidthSpan extends ReplacementSpan {
    private final int width;

    public TabWidthSpan(int i10) {
        this.width = i10;
    }

    @Override
    public void draw(@NotNull Canvas canvas, @Nullable CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, @NotNull Paint paint) {
        M.p(canvas, "canvas");
        M.p(paint, "paint");
    }

    @Override
    public int getSize(@NotNull Paint paint, @Nullable CharSequence charSequence, int i10, int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        M.p(paint, "paint");
        return (int) paint.measureText(C3617K.x2(" ", this.width));
    }
}
