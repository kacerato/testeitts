package androidx.core.graphics;

import android.graphics.Color;
import android.graphics.ColorSpace;
import kotlin.jvm.internal.M;

public final class ColorKt {
    public static final int component1(int i10) {
        return (i10 >> 24) & 255;
    }

    public static final int component2(int i10) {
        return (i10 >> 16) & 255;
    }

    public static final int component3(int i10) {
        return (i10 >> 8) & 255;
    }

    public static final int component4(int i10) {
        return i10 & 255;
    }

    public static final long convertTo(int i10, ColorSpace.Named colorSpace) {
        M.p(colorSpace, "colorSpace");
        return Color.convert(i10, ColorSpace.get(colorSpace));
    }

    public static final int getAlpha(int i10) {
        return (i10 >> 24) & 255;
    }

    public static final int getBlue(int i10) {
        return i10 & 255;
    }

    public static final ColorSpace getColorSpace(long j10) {
        ColorSpace colorSpace = Color.colorSpace(j10);
        M.o(colorSpace, "colorSpace(this)");
        return colorSpace;
    }

    public static final int getGreen(int i10) {
        return (i10 >> 8) & 255;
    }

    public static final float getLuminance(int i10) {
        return Color.luminance(i10);
    }

    public static final int getRed(int i10) {
        return (i10 >> 16) & 255;
    }

    public static final boolean isSrgb(long j10) {
        return Color.isSrgb(j10);
    }

    public static final boolean isWideGamut(long j10) {
        return Color.isWideGamut(j10);
    }

    public static final Color plus(Color color, Color c10) {
        M.p(color, "<this>");
        M.p(c10, "c");
        Color compositeColors = ColorUtils.compositeColors(c10, color);
        M.o(compositeColors, "compositeColors(c, this)");
        return compositeColors;
    }

    public static final Color toColor(int i10) {
        Color valueOf = Color.valueOf(i10);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final int toColorInt(long j10) {
        return Color.toArgb(j10);
    }

    public static final long toColorLong(int i10) {
        return Color.pack(i10);
    }

    public static final float component1(Color color) {
        M.p(color, "<this>");
        return color.getComponent(0);
    }

    public static final float component2(Color color) {
        M.p(color, "<this>");
        return color.getComponent(1);
    }

    public static final float component3(Color color) {
        M.p(color, "<this>");
        return color.getComponent(2);
    }

    public static final float component4(Color color) {
        M.p(color, "<this>");
        return color.getComponent(3);
    }

    public static final long convertTo(int i10, ColorSpace colorSpace) {
        M.p(colorSpace, "colorSpace");
        return Color.convert(i10, colorSpace);
    }

    public static final float getAlpha(long j10) {
        return Color.alpha(j10);
    }

    public static final float getBlue(long j10) {
        return Color.blue(j10);
    }

    public static final float getGreen(long j10) {
        return Color.green(j10);
    }

    public static final float getLuminance(long j10) {
        return Color.luminance(j10);
    }

    public static final float getRed(long j10) {
        return Color.red(j10);
    }

    public static final Color toColor(long j10) {
        Color valueOf = Color.valueOf(j10);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final int toColorInt(String str) {
        M.p(str, "<this>");
        return Color.parseColor(str);
    }

    public static final float component1(long j10) {
        return Color.red(j10);
    }

    public static final float component2(long j10) {
        return Color.green(j10);
    }

    public static final float component3(long j10) {
        return Color.blue(j10);
    }

    public static final float component4(long j10) {
        return Color.alpha(j10);
    }

    public static final long convertTo(long j10, ColorSpace.Named colorSpace) {
        M.p(colorSpace, "colorSpace");
        return Color.convert(j10, ColorSpace.get(colorSpace));
    }

    public static final long convertTo(long j10, ColorSpace colorSpace) {
        M.p(colorSpace, "colorSpace");
        return Color.convert(j10, colorSpace);
    }

    public static final Color convertTo(Color color, ColorSpace.Named colorSpace) {
        M.p(color, "<this>");
        M.p(colorSpace, "colorSpace");
        Color convert = color.convert(ColorSpace.get(colorSpace));
        M.o(convert, "convert(ColorSpace.get(colorSpace))");
        return convert;
    }

    public static final Color convertTo(Color color, ColorSpace colorSpace) {
        M.p(color, "<this>");
        M.p(colorSpace, "colorSpace");
        Color convert = color.convert(colorSpace);
        M.o(convert, "convert(colorSpace)");
        return convert;
    }
}
