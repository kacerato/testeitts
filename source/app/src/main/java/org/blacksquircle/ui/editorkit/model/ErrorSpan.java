package org.blacksquircle.ui.editorkit.model;

import F6.c;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.LineBackgroundSpan;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

@c
public final class ErrorSpan implements LineBackgroundSpan {
    private final int color;
    private int end;
    private int lineNumber;
    private final float lineWidth;
    private int start;
    private final float waveSize;

    public ErrorSpan(int i10, int i11, int i12, int i13, float f10, float f11) {
        this.lineNumber = i10;
        this.start = i11;
        this.end = i12;
        this.color = i13;
        this.lineWidth = f10;
        this.waveSize = f11;
    }

    @Override
    public void drawBackground(@NotNull Canvas canvas, @NotNull Paint paint, int i10, int i11, int i12, int i13, int i14, @NotNull CharSequence text, int i15, int i16, int i17) {
        M.p(canvas, "canvas");
        M.p(paint, "paint");
        M.p(text, "text");
        float measureText = paint.measureText(text, i15, i16);
        Paint paint2 = new Paint(paint);
        paint2.setColor(this.color);
        paint2.setStrokeWidth(this.lineWidth);
        float f10 = this.waveSize * 2;
        float f11 = i10;
        float f12 = f11;
        while (f12 < f11 + measureText) {
            float f13 = i14;
            float f14 = this.waveSize;
            canvas.drawLine(f12, f13, f12 + f14, f13 - f14, paint2);
            float f15 = this.waveSize;
            f12 += f10;
            canvas.drawLine(f12 + f15, f13 - f15, f12, f13, paint2);
        }
    }

    public final int getColor() {
        return this.color;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }

    public final int getStart() {
        return this.start;
    }

    public final void setEnd(int i10) {
        this.end = i10;
    }

    public final void setLineNumber(int i10) {
        this.lineNumber = i10;
    }

    public final void setStart(int i10) {
        this.start = i10;
    }

    public ErrorSpan(int i10, int i11, int i12, int i13, float f10, float f11, int i14, C14026x c14026x) {
        this(i10, i11, i12, (i14 & 8) != 0 ? -65536 : i13, (i14 & 16) != 0 ? (1 * Resources.getSystem().getDisplayMetrics().density) + 0.5f : f10, (i14 & 32) != 0 ? (3 * Resources.getSystem().getDisplayMetrics().density) + 0.5f : f11);
    }
}
