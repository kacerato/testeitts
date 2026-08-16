package androidx.core.content.res;

import Mf.l;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.M;

public final class TypedArrayKt {
    private static final void checkAttribute(TypedArray typedArray, int i10) {
        if (!typedArray.hasValue(i10)) {
            throw new IllegalArgumentException("Attribute not defined in set.");
        }
    }

    public static final boolean getBooleanOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getBoolean(i10, false);
    }

    public static final int getColorOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getColor(i10, 0);
    }

    public static final ColorStateList getColorStateListOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        ColorStateList colorStateList = typedArray.getColorStateList(i10);
        if (colorStateList != null) {
            return colorStateList;
        }
        throw new IllegalStateException("Attribute value was not a color or color state list.");
    }

    public static final float getDimensionOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getDimension(i10, 0.0f);
    }

    public static final int getDimensionPixelOffsetOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getDimensionPixelOffset(i10, 0);
    }

    public static final int getDimensionPixelSizeOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getDimensionPixelSize(i10, 0);
    }

    public static final Drawable getDrawableOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        Drawable drawable = typedArray.getDrawable(i10);
        M.m(drawable);
        return drawable;
    }

    public static final float getFloatOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getFloat(i10, 0.0f);
    }

    public static final Typeface getFontOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return TypedArrayApi26ImplKt.getFont(typedArray, i10);
    }

    public static final int getIntOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getInt(i10, 0);
    }

    public static final int getIntegerOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getInteger(i10, 0);
    }

    public static final int getResourceIdOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        return typedArray.getResourceId(i10, 0);
    }

    public static final String getStringOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        String string = typedArray.getString(i10);
        if (string != null) {
            return string;
        }
        throw new IllegalStateException("Attribute value could not be coerced to String.");
    }

    public static final CharSequence[] getTextArrayOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        CharSequence[] textArray = typedArray.getTextArray(i10);
        M.o(textArray, "getTextArray(index)");
        return textArray;
    }

    public static final CharSequence getTextOrThrow(TypedArray typedArray, int i10) {
        M.p(typedArray, "<this>");
        checkAttribute(typedArray, i10);
        CharSequence text = typedArray.getText(i10);
        if (text != null) {
            return text;
        }
        throw new IllegalStateException("Attribute value could not be coerced to CharSequence.");
    }

    public static final <R> R use(TypedArray typedArray, l<? super TypedArray, ? extends R> block) {
        M.p(typedArray, "<this>");
        M.p(block, "block");
        R invoke = block.invoke(typedArray);
        typedArray.recycle();
        return invoke;
    }
}
