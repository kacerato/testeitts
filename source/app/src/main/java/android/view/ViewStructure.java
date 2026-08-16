package android.view;

import android.graphics.Matrix;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Pair;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewStructure.class
 */
public abstract class ViewStructure {
    public abstract void setId(int i10, String str, String str2, String str3);

    public abstract void setDimens(int i10, int i11, int i12, int i13, int i14, int i15);

    public abstract void setTransformation(Matrix matrix);

    public abstract void setElevation(float f10);

    public abstract void setAlpha(float f10);

    public abstract void setVisibility(int i10);

    public abstract void setEnabled(boolean z10);

    public abstract void setClickable(boolean z10);

    public abstract void setLongClickable(boolean z10);

    public abstract void setContextClickable(boolean z10);

    public abstract void setFocusable(boolean z10);

    public abstract void setFocused(boolean z10);

    public abstract void setAccessibilityFocused(boolean z10);

    public abstract void setCheckable(boolean z10);

    public abstract void setChecked(boolean z10);

    public abstract void setSelected(boolean z10);

    public abstract void setActivated(boolean z10);

    public abstract void setOpaque(boolean z10);

    public abstract void setClassName(String str);

    public abstract void setContentDescription(CharSequence charSequence);

    public abstract void setText(CharSequence charSequence);

    public abstract void setText(CharSequence charSequence, int i10, int i11);

    public abstract void setTextStyle(float f10, int i10, int i11, int i12);

    public abstract void setTextLines(int[] iArr, int[] iArr2);

    public abstract void setHint(CharSequence charSequence);

    public abstract CharSequence getText();

    public abstract int getTextSelectionStart();

    public abstract int getTextSelectionEnd();

    public abstract CharSequence getHint();

    public abstract Bundle getExtras();

    public abstract boolean hasExtras();

    public abstract void setChildCount(int i10);

    public abstract int addChildCount(int i10);

    public abstract int getChildCount();

    public abstract ViewStructure newChild(int i10);

    public abstract ViewStructure asyncNewChild(int i10);

    public abstract AutofillId getAutofillId();

    public abstract void setAutofillId(AutofillId autofillId);

    public abstract void setAutofillId(AutofillId autofillId, int i10);

    public abstract void setAutofillType(int i10);

    public abstract void setAutofillHints(String[] strArr);

    public abstract void setAutofillValue(AutofillValue autofillValue);

    public abstract void setAutofillOptions(CharSequence[] charSequenceArr);

    public abstract void setInputType(int i10);

    public abstract void setDataIsSensitive(boolean z10);

    public abstract void asyncCommit();

    public abstract void setWebDomain(String str);

    public abstract void setLocaleList(LocaleList localeList);

    public abstract HtmlInfo.Builder newHtmlInfoBuilder(String str);

    public abstract void setHtmlInfo(HtmlInfo htmlInfo);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewStructure$HtmlInfo.class
 */
    public static abstract class HtmlInfo {
        public abstract String getTag();

        public abstract List<Pair<String, String>> getAttributes();

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewStructure$HtmlInfo$Builder.class
 */
        public static abstract class Builder {
            public abstract Builder addAttribute(String str, String str2);

            public abstract HtmlInfo build();

            public Builder() {
                throw new RuntimeException("Stub!");
            }
        }

        public HtmlInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    public ViewStructure() {
        throw new RuntimeException("Stub!");
    }
}
