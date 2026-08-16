package android.app.assist;

import android.content.ComponentName;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/assist/AssistStructure.class
 */
public class AssistStructure implements Parcelable {
    public static final Parcelable.Creator<AssistStructure> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/assist/AssistStructure$WindowNode.class
 */
    public static class WindowNode {
        WindowNode() {
            throw new RuntimeException("Stub!");
        }

        public int getLeft() {
            throw new RuntimeException("Stub!");
        }

        public int getTop() {
            throw new RuntimeException("Stub!");
        }

        public int getWidth() {
            throw new RuntimeException("Stub!");
        }

        public int getHeight() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getTitle() {
            throw new RuntimeException("Stub!");
        }

        public int getDisplayId() {
            throw new RuntimeException("Stub!");
        }

        public ViewNode getRootViewNode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/assist/AssistStructure$ViewNode.class
 */
    public static class ViewNode {
        public static final int TEXT_COLOR_UNDEFINED = 1;
        public static final int TEXT_STYLE_BOLD = 1;
        public static final int TEXT_STYLE_ITALIC = 2;
        public static final int TEXT_STYLE_STRIKE_THRU = 8;
        public static final int TEXT_STYLE_UNDERLINE = 4;

        ViewNode() {
            throw new RuntimeException("Stub!");
        }

        public int getId() {
            throw new RuntimeException("Stub!");
        }

        public String getIdPackage() {
            throw new RuntimeException("Stub!");
        }

        public String getIdType() {
            throw new RuntimeException("Stub!");
        }

        public String getIdEntry() {
            throw new RuntimeException("Stub!");
        }

        public AutofillId getAutofillId() {
            throw new RuntimeException("Stub!");
        }

        public int getAutofillType() {
            throw new RuntimeException("Stub!");
        }

        public String[] getAutofillHints() {
            throw new RuntimeException("Stub!");
        }

        public AutofillValue getAutofillValue() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence[] getAutofillOptions() {
            throw new RuntimeException("Stub!");
        }

        public int getInputType() {
            throw new RuntimeException("Stub!");
        }

        public int getLeft() {
            throw new RuntimeException("Stub!");
        }

        public int getTop() {
            throw new RuntimeException("Stub!");
        }

        public int getScrollX() {
            throw new RuntimeException("Stub!");
        }

        public int getScrollY() {
            throw new RuntimeException("Stub!");
        }

        public int getWidth() {
            throw new RuntimeException("Stub!");
        }

        public int getHeight() {
            throw new RuntimeException("Stub!");
        }

        public Matrix getTransformation() {
            throw new RuntimeException("Stub!");
        }

        public float getElevation() {
            throw new RuntimeException("Stub!");
        }

        public float getAlpha() {
            throw new RuntimeException("Stub!");
        }

        public int getVisibility() {
            throw new RuntimeException("Stub!");
        }

        public boolean isAssistBlocked() {
            throw new RuntimeException("Stub!");
        }

        public boolean isEnabled() {
            throw new RuntimeException("Stub!");
        }

        public boolean isClickable() {
            throw new RuntimeException("Stub!");
        }

        public boolean isFocusable() {
            throw new RuntimeException("Stub!");
        }

        public boolean isFocused() {
            throw new RuntimeException("Stub!");
        }

        public boolean isAccessibilityFocused() {
            throw new RuntimeException("Stub!");
        }

        public boolean isCheckable() {
            throw new RuntimeException("Stub!");
        }

        public boolean isChecked() {
            throw new RuntimeException("Stub!");
        }

        public boolean isSelected() {
            throw new RuntimeException("Stub!");
        }

        public boolean isActivated() {
            throw new RuntimeException("Stub!");
        }

        public boolean isOpaque() {
            throw new RuntimeException("Stub!");
        }

        public boolean isLongClickable() {
            throw new RuntimeException("Stub!");
        }

        public boolean isContextClickable() {
            throw new RuntimeException("Stub!");
        }

        public String getClassName() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getContentDescription() {
            throw new RuntimeException("Stub!");
        }

        public String getWebDomain() {
            throw new RuntimeException("Stub!");
        }

        public ViewStructure.HtmlInfo getHtmlInfo() {
            throw new RuntimeException("Stub!");
        }

        public LocaleList getLocaleList() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getText() {
            throw new RuntimeException("Stub!");
        }

        public int getTextSelectionStart() {
            throw new RuntimeException("Stub!");
        }

        public int getTextSelectionEnd() {
            throw new RuntimeException("Stub!");
        }

        public int getTextColor() {
            throw new RuntimeException("Stub!");
        }

        public int getTextBackgroundColor() {
            throw new RuntimeException("Stub!");
        }

        public float getTextSize() {
            throw new RuntimeException("Stub!");
        }

        public int getTextStyle() {
            throw new RuntimeException("Stub!");
        }

        public int[] getTextLineCharOffsets() {
            throw new RuntimeException("Stub!");
        }

        public int[] getTextLineBaselines() {
            throw new RuntimeException("Stub!");
        }

        public String getHint() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public int getChildCount() {
            throw new RuntimeException("Stub!");
        }

        public ViewNode getChildAt(int index) {
            throw new RuntimeException("Stub!");
        }
    }

    public AssistStructure() {
        throw new RuntimeException("Stub!");
    }

    public long getAcquisitionStartTime() {
        throw new RuntimeException("Stub!");
    }

    public long getAcquisitionEndTime() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getActivityComponent() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHomeActivity() {
        throw new RuntimeException("Stub!");
    }

    public int getWindowNodeCount() {
        throw new RuntimeException("Stub!");
    }

    public WindowNode getWindowNodeAt(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
