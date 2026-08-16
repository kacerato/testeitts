package bh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nTextNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextNote.kt\norg/anastr/speedviewlib/components/note/TextNote\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"})
public final class c extends b<c> {

    @Nullable
    public final CharSequence f33212s;

    @NotNull
    public final TextPaint f33213t;

    public float f33214u;

    @Nullable
    public StaticLayout f33215v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context, @Nullable CharSequence charSequence) {
        super(context);
        M.p(context, "context");
        this.f33212s = charSequence;
        TextPaint textPaint = new TextPaint(1);
        this.f33213t = textPaint;
        this.f33214u = textPaint.getTextSize();
        if (charSequence == null) {
            throw new IllegalArgumentException("noteText cannot be null.");
        }
        textPaint.setTextAlign(Paint.Align.LEFT);
    }

    @Override
    public void e(int i10) {
        StaticLayout staticLayout = new StaticLayout(this.f33212s, this.f33213t, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        this.f33215v = staticLayout;
        M.m(staticLayout);
        int lineCount = staticLayout.getLineCount();
        int i11 = 0;
        for (int i12 = 0; i12 < lineCount; i12++) {
            StaticLayout staticLayout2 = this.f33215v;
            M.m(staticLayout2);
            i11 = (int) Math.max(i11, staticLayout2.getLineWidth(i12));
        }
        StaticLayout staticLayout3 = this.f33215v;
        M.m(staticLayout3);
        m(i11, staticLayout3.getHeight());
    }

    @Override
    public void h(@NotNull Canvas canvas, float f10, float f11) {
        M.p(canvas, "canvas");
        canvas.save();
        canvas.translate(f10, f11);
        StaticLayout staticLayout = this.f33215v;
        M.m(staticLayout);
        staticLayout.draw(canvas);
        canvas.restore();
    }

    public final int t() {
        return this.f33213t.getColor();
    }

    public final float u() {
        return this.f33214u;
    }

    @NotNull
    public final c v(int i10) {
        this.f33213t.setColor(i10);
        return this;
    }

    @NotNull
    public final c w(float f10) {
        this.f33214u = f10;
        this.f33213t.setTextSize(f10);
        return this;
    }

    @NotNull
    public final c x(@NotNull Typeface typeface) {
        M.p(typeface, "typeface");
        this.f33213t.setTypeface(typeface);
        return this;
    }
}
