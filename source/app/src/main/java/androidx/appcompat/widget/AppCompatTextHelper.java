package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

public class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    private boolean mAsyncFontPending;
    private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableStartTint;
    private TintInfo mDrawableTint;
    private TintInfo mDrawableTopTint;
    private Typeface mFontTypeface;
    private final TextView mView;
    private int mStyle = 0;
    private int mFontWeight = -1;

    public static class Api17Impl {
        private Api17Impl() {
        }

        public static Drawable[] getCompoundDrawablesRelative(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        public static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        public static void setTextLocale(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static LocaleList forLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }

        public static void setTextLocales(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    public static class Api26Impl {
        private Api26Impl() {
        }

        public static int getAutoSizeStepGranularity(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        public static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        public static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        public static boolean setFontVariationSettings(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    public static class Api28Impl {
        private Api28Impl() {
        }

        public static Typeface create(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
    }

    private static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i10) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i10);
        if (tintList == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = tintList;
        return tintInfo;
    }

    private void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = Api17Impl.getCompoundDrawablesRelative(this.mView);
            TextView textView = this.mView;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            Api17Impl.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = Api17Impl.getCompoundDrawablesRelative(this.mView);
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            TextView textView2 = this.mView;
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            Drawable drawable8 = compoundDrawablesRelative2[2];
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            Api17Impl.setCompoundDrawablesRelativeWithIntrinsicBounds(textView2, drawable7, drawable2, drawable8, drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
        TextView textView3 = this.mView;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void setCompoundTints() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void setTextSizeInternal(int i10, float f10) {
        this.mAutoSizeTextHelper.setTextSizeInternal(i10, f10);
    }

    private void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.mStyle = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int i11 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = i11;
            if (i11 != -1) {
                this.mStyle &= 2;
            }
        }
        int i12 = R.styleable.TextAppearance_android_fontFamily;
        if (!tintTypedArray.hasValue(i12) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            int i13 = R.styleable.TextAppearance_android_typeface;
            if (tintTypedArray.hasValue(i13)) {
                this.mAsyncFontPending = false;
                int i14 = tintTypedArray.getInt(i13, 1);
                if (i14 == 1) {
                    this.mFontTypeface = Typeface.SANS_SERIF;
                    return;
                } else if (i14 == 2) {
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                } else {
                    if (i14 != 3) {
                        return;
                    }
                    this.mFontTypeface = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.mFontTypeface = null;
        int i15 = R.styleable.TextAppearance_fontFamily;
        if (tintTypedArray.hasValue(i15)) {
            i12 = i15;
        }
        final int i16 = this.mFontWeight;
        final int i17 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i12, this.mStyle, new ResourcesCompat.FontCallback() {
                    @Override
                    public void lambda$callbackFailAsync$1(int i18) {
                    }

                    @Override
                    public void lambda$callbackSuccessAsync$0(Typeface typeface) {
                        int i18;
                        if (Build.VERSION.SDK_INT >= 28 && (i18 = i16) != -1) {
                            typeface = Api28Impl.create(typeface, i18, (i17 & 2) != 0);
                        }
                        AppCompatTextHelper.this.onAsyncTypefaceReceived(weakReference, typeface);
                    }
                });
                if (font != null) {
                    if (i10 < 28 || this.mFontWeight == -1) {
                        this.mFontTypeface = font;
                    } else {
                        this.mFontTypeface = Api28Impl.create(Typeface.create(font, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    }
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (string = tintTypedArray.getString(i12)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.mFontWeight == -1) {
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        } else {
            this.mFontTypeface = Api28Impl.create(Typeface.create(string, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        }
    }

    public void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = Api17Impl.getCompoundDrawablesRelative(this.mView);
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    public void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    public int getAutoSizeMaxTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    public int getAutoSizeMinTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    public int getAutoSizeStepGranularity() {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    public int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    public ColorStateList getCompoundDrawableTintList() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    public PorterDuff.Mode getCompoundDrawableTintMode() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    public boolean isAutoSizeEnabled() {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0228  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadFromAttributes(AttributeSet attributeSet, int i10) {
        boolean z10;
        boolean z11;
        String str;
        String str2;
        boolean z12;
        int i11;
        int i12;
        Typeface typeface;
        TintTypedArray obtainStyledAttributes;
        int i13;
        int i14;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int[] autoSizeTextAvailableSizes;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        int[] iArr = R.styleable.AppCompatTextHelper;
        TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i10, 0);
        TextView textView = this.mView;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes2.getWrappedTypeArray(), i10, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i15 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (obtainStyledAttributes2.hasValue(i15)) {
            this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i15, 0));
        }
        int i16 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (obtainStyledAttributes2.hasValue(i16)) {
            this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i16, 0));
        }
        int i17 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (obtainStyledAttributes2.hasValue(i17)) {
            this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i17, 0));
        }
        int i18 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (obtainStyledAttributes2.hasValue(i18)) {
            this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i18, 0));
        }
        int i19 = Build.VERSION.SDK_INT;
        int i20 = R.styleable.AppCompatTextHelper_android_drawableStart;
        if (obtainStyledAttributes2.hasValue(i20)) {
            this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i20, 0));
        }
        int i21 = R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (obtainStyledAttributes2.hasValue(i21)) {
            this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes2.getResourceId(i21, 0));
        }
        obtainStyledAttributes2.recycle();
        boolean z13 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId != -1) {
            TintTypedArray obtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, resourceId, R.styleable.TextAppearance);
            if (!z13) {
                int i22 = R.styleable.TextAppearance_textAllCaps;
                if (obtainStyledAttributes3.hasValue(i22)) {
                    z10 = obtainStyledAttributes3.getBoolean(i22, false);
                    z11 = true;
                    updateTypefaceAndStyle(context, obtainStyledAttributes3);
                    int i23 = R.styleable.TextAppearance_textLocale;
                    str = !obtainStyledAttributes3.hasValue(i23) ? obtainStyledAttributes3.getString(i23) : null;
                    int i24 = R.styleable.TextAppearance_fontVariationSettings;
                    str2 = !obtainStyledAttributes3.hasValue(i24) ? obtainStyledAttributes3.getString(i24) : null;
                    obtainStyledAttributes3.recycle();
                }
            }
            z10 = false;
            z11 = false;
            updateTypefaceAndStyle(context, obtainStyledAttributes3);
            int i232 = R.styleable.TextAppearance_textLocale;
            if (!obtainStyledAttributes3.hasValue(i232)) {
            }
            int i242 = R.styleable.TextAppearance_fontVariationSettings;
            if (!obtainStyledAttributes3.hasValue(i242)) {
            }
            obtainStyledAttributes3.recycle();
        } else {
            z10 = false;
            z11 = false;
            str = null;
            str2 = null;
        }
        TintTypedArray obtainStyledAttributes4 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i10, 0);
        if (!z13) {
            int i25 = R.styleable.TextAppearance_textAllCaps;
            if (obtainStyledAttributes4.hasValue(i25)) {
                z10 = obtainStyledAttributes4.getBoolean(i25, false);
                z12 = true;
                i11 = R.styleable.TextAppearance_textLocale;
                if (obtainStyledAttributes4.hasValue(i11)) {
                    str = obtainStyledAttributes4.getString(i11);
                }
                i12 = R.styleable.TextAppearance_fontVariationSettings;
                if (obtainStyledAttributes4.hasValue(i12)) {
                    str2 = obtainStyledAttributes4.getString(i12);
                }
                if (i19 >= 28) {
                    int i26 = R.styleable.TextAppearance_android_textSize;
                    if (obtainStyledAttributes4.hasValue(i26) && obtainStyledAttributes4.getDimensionPixelSize(i26, -1) == 0) {
                        this.mView.setTextSize(0, 0.0f);
                    }
                }
                updateTypefaceAndStyle(context, obtainStyledAttributes4);
                obtainStyledAttributes4.recycle();
                if (!z13 && z12) {
                    setAllCaps(z10);
                }
                typeface = this.mFontTypeface;
                if (typeface != null) {
                    if (this.mFontWeight == -1) {
                        this.mView.setTypeface(typeface, this.mStyle);
                    } else {
                        this.mView.setTypeface(typeface);
                    }
                }
                if (str2 != null) {
                    Api26Impl.setFontVariationSettings(this.mView, str2);
                }
                if (str != null) {
                    Api24Impl.setTextLocales(this.mView, Api24Impl.forLanguageTags(str));
                }
                this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i10);
                if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.getAutoSizeTextType() != 0) {
                    autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
                    if (autoSizeTextAvailableSizes.length > 0) {
                        if (Api26Impl.getAutoSizeStepGranularity(this.mView) != -1.0f) {
                            Api26Impl.setAutoSizeTextTypeUniformWithConfiguration(this.mView, this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
                        } else {
                            Api26Impl.setAutoSizeTextTypeUniformWithPresetSizes(this.mView, autoSizeTextAvailableSizes, 0);
                        }
                    }
                }
                obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
                int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
                Drawable drawable = resourceId2 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId2) : null;
                int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
                Drawable drawable2 = resourceId3 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId3) : null;
                int resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
                Drawable drawable3 = resourceId4 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId4) : null;
                int resourceId5 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
                Drawable drawable4 = resourceId5 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId5) : null;
                int resourceId6 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
                Drawable drawable5 = resourceId6 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId6) : null;
                int resourceId7 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
                setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, resourceId7 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId7) : null);
                i13 = R.styleable.AppCompatTextView_drawableTint;
                if (obtainStyledAttributes.hasValue(i13)) {
                    TextViewCompat.setCompoundDrawableTintList(this.mView, obtainStyledAttributes.getColorStateList(i13));
                }
                i14 = R.styleable.AppCompatTextView_drawableTintMode;
                if (obtainStyledAttributes.hasValue(i14)) {
                    TextViewCompat.setCompoundDrawableTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i14, -1), null));
                }
                dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
                dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
                dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, -1);
                obtainStyledAttributes.recycle();
                if (dimensionPixelSize != -1) {
                    TextViewCompat.setFirstBaselineToTopHeight(this.mView, dimensionPixelSize);
                }
                if (dimensionPixelSize2 != -1) {
                    TextViewCompat.setLastBaselineToBottomHeight(this.mView, dimensionPixelSize2);
                }
                if (dimensionPixelSize3 == -1) {
                    TextViewCompat.setLineHeight(this.mView, dimensionPixelSize3);
                    return;
                }
                return;
            }
        }
        z12 = z11;
        i11 = R.styleable.TextAppearance_textLocale;
        if (obtainStyledAttributes4.hasValue(i11)) {
        }
        i12 = R.styleable.TextAppearance_fontVariationSettings;
        if (obtainStyledAttributes4.hasValue(i12)) {
        }
        if (i19 >= 28) {
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes4);
        obtainStyledAttributes4.recycle();
        if (!z13) {
            setAllCaps(z10);
        }
        typeface = this.mFontTypeface;
        if (typeface != null) {
        }
        if (str2 != null) {
        }
        if (str != null) {
        }
        this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i10);
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
            autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
            if (autoSizeTextAvailableSizes.length > 0) {
            }
        }
        obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
        int resourceId22 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        if (resourceId22 == -1) {
        }
        int resourceId32 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        if (resourceId32 == -1) {
        }
        int resourceId42 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        if (resourceId42 == -1) {
        }
        int resourceId52 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        if (resourceId52 == -1) {
        }
        int resourceId62 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        if (resourceId62 == -1) {
        }
        int resourceId72 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, resourceId72 == -1 ? appCompatDrawableManager.getDrawable(context, resourceId72) : null);
        i13 = R.styleable.AppCompatTextView_drawableTint;
        if (obtainStyledAttributes.hasValue(i13)) {
        }
        i14 = R.styleable.AppCompatTextView_drawableTintMode;
        if (obtainStyledAttributes.hasValue(i14)) {
        }
        dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, -1);
        obtainStyledAttributes.recycle();
        if (dimensionPixelSize != -1) {
        }
        if (dimensionPixelSize2 != -1) {
        }
        if (dimensionPixelSize3 == -1) {
        }
    }

    public void onAsyncTypefaceReceived(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (!ViewCompat.isAttachedToWindow(textView)) {
                    textView.setTypeface(typeface, this.mStyle);
                } else {
                    final int i10 = this.mStyle;
                    textView.post(new Runnable() {
                        @Override
                        public void run() {
                            textView.setTypeface(typeface, i10);
                        }
                    });
                }
            }
        }
    }

    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
            return;
        }
        autoSizeText();
    }

    public void onSetCompoundDrawables() {
        applyCompoundDrawablesTints();
    }

    public void onSetTextAppearance(Context context, int i10) {
        String string;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i10, R.styleable.TextAppearance);
        int i11 = R.styleable.TextAppearance_textAllCaps;
        if (obtainStyledAttributes.hasValue(i11)) {
            setAllCaps(obtainStyledAttributes.getBoolean(i11, false));
        }
        int i12 = R.styleable.TextAppearance_android_textSize;
        if (obtainStyledAttributes.hasValue(i12) && obtainStyledAttributes.getDimensionPixelSize(i12, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes);
        int i13 = R.styleable.TextAppearance_fontVariationSettings;
        if (obtainStyledAttributes.hasValue(i13) && (string = obtainStyledAttributes.getString(i13)) != null) {
            Api26Impl.setFontVariationSettings(this.mView, string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    public void populateSurroundingTextIfNeeded(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    public void setAllCaps(boolean z10) {
        this.mView.setAllCaps(z10);
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
    }

    public void setAutoSizeTextTypeWithDefaults(int i10) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(i10);
    }

    public void setCompoundDrawableTintList(ColorStateList colorStateList) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        setCompoundTints();
    }

    public void setCompoundDrawableTintMode(PorterDuff.Mode mode) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        setCompoundTints();
    }

    public void setTextSize(int i10, float f10) {
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE || isAutoSizeEnabled()) {
            return;
        }
        setTextSizeInternal(i10, f10);
    }
}
