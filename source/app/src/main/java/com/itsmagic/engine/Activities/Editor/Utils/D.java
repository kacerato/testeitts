package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;
import androidx.annotation.FontRes;
import androidx.core.content.res.ResourcesCompat;
import com.itsmagic.engine2.R;

public final class D {
    public static StaticLayout a(String text, TextPaint paint, int maxWidthPx) {
        return StaticLayout.Builder.obtain(text, 0, text.length(), paint, maxWidthPx).setAlignment(Layout.Alignment.ALIGN_NORMAL).setIncludePad(false).build();
    }

    public static TextPaint b(Context context, float textSizeSp, @FontRes int fontResId) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTextSize(TypedValue.applyDimension(2, textSizeSp, context.getResources().getDisplayMetrics()));
        Typeface font = ResourcesCompat.getFont(context, fontResId);
        if (font != null) {
            textPaint.setTypeface(font);
        }
        return textPaint;
    }

    public static int c(Context context, float dp) {
        return (int) TypedValue.applyDimension(1, dp, context.getResources().getDisplayMetrics());
    }

    public static float[] d(Context context, String text, float textSizeSp, @FontRes int fontResId, int maxWidthDp) {
        float f10 = 0.0f;
        if (text == null || text.trim().isEmpty()) {
            return new float[]{0.0f, 0.0f};
        }
        StaticLayout a10 = a(text, b(context, textSizeSp, fontResId), c(context, maxWidthDp));
        for (int i10 = 0; i10 < a10.getLineCount(); i10++) {
            f10 = Math.max(f10, a10.getLineWidth(i10));
        }
        return new float[]{h(context, f10), h(context, a10.getHeight())};
    }

    public static float[] e(Context context, String text, float textSizeSp, @FontRes int fontResId) {
        if (text == null || text.trim().isEmpty()) {
            return new float[]{0.0f, 0.0f};
        }
        TextPaint b10 = b(context, textSizeSp, fontResId);
        float measureText = b10.measureText(text);
        Paint.FontMetrics fontMetrics = b10.getFontMetrics();
        return new float[]{h(context, measureText), h(context, fontMetrics.descent - fontMetrics.ascent)};
    }

    @Deprecated
    public static float[] f(Context context, String text, float textSizeInSp) {
        return e(context, text, textSizeInSp, R.font.base_regular);
    }

    public static float[] g(Context context, String text, float textSizeSp, @FontRes int fontResId) {
        return d(context, text, textSizeSp, fontResId, 500);
    }

    public static float h(Context context, float px) {
        return px / context.getResources().getDisplayMetrics().density;
    }
}
