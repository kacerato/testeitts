package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.internal.g;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class TextInputEditText extends AppCompatEditText {

    public final Rect f65011b;

    public boolean f65012c;

    public TextInputEditText(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private CharSequence getHintFromLayout() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null) {
            return textInputLayout.getHint();
        }
        return null;
    }

    @Nullable
    private TextInputLayout getTextInputLayout() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @NonNull
    public final String a(@NonNull TextInputLayout textInputLayout) {
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        setLabelFor(C15879a.h.f123517A5);
        String str = "";
        String charSequence = !isEmpty2 ? hint.toString() : "";
        if (isEmpty) {
            return !TextUtils.isEmpty(charSequence) ? charSequence : "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) text);
        if (!TextUtils.isEmpty(charSequence)) {
            str = ", " + charSequence;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public boolean b() {
        return this.f65012c;
    }

    @Override
    public void getFocusedRect(@Nullable Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout == null || !this.f65012c || rect == null) {
            return;
        }
        textInputLayout.getFocusedRect(this.f65011b);
        rect.bottom = this.f65011b.bottom;
    }

    @Override
    public boolean getGlobalVisibleRect(@Nullable Rect rect, @Nullable Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f65012c && rect != null) {
            textInputLayout.getGlobalVisibleRect(this.f65011b, point);
            rect.bottom = this.f65011b.bottom;
        }
        return globalVisibleRect;
    }

    @Override
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        return (textInputLayout == null || !textInputLayout.a0()) ? super.getHint() : textInputLayout.getHint();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.a0() && super.getHint() == null && g.c()) {
            setHint("");
        }
    }

    @Override
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = getHintFromLayout();
        }
        return onCreateInputConnection;
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        getTextInputLayout();
    }

    @Override
    public boolean requestRectangleOnScreen(@Nullable Rect rect) {
        boolean requestRectangleOnScreen = super.requestRectangleOnScreen(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f65012c) {
            this.f65011b.set(0, textInputLayout.getHeight() - getResources().getDimensionPixelOffset(C15879a.f.f123369y4), textInputLayout.getWidth(), textInputLayout.getHeight());
            textInputLayout.requestRectangleOnScreen(this.f65011b, true);
        }
        return requestRectangleOnScreen;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z10) {
        this.f65012c = z10;
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122044M4);
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, 0), attributeSet, i10);
        this.f65011b = new Rect();
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.ct, i10, C15879a.n.f124174Ca, new int[0]);
        setTextInputLayoutFocusedRectEnabled(j10.getBoolean(C15879a.o.dt, false));
        j10.recycle();
    }
}
