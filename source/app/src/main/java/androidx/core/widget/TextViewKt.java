package androidx.core.widget;

import Mf.l;
import Mf.r;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import kotlin.jvm.internal.M;
import nf.P0;

public final class TextViewKt {
    public static final TextWatcher addTextChangedListener(TextView textView, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> beforeTextChanged, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> onTextChanged, l<? super Editable, P0> afterTextChanged) {
        M.p(textView, "<this>");
        M.p(beforeTextChanged, "beforeTextChanged");
        M.p(onTextChanged, "onTextChanged");
        M.p(afterTextChanged, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(afterTextChanged, beforeTextChanged, onTextChanged);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static TextWatcher addTextChangedListener$default(TextView textView, r beforeTextChanged, r onTextChanged, l afterTextChanged, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            beforeTextChanged = TextViewKt$addTextChangedListener$1.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            onTextChanged = TextViewKt$addTextChangedListener$2.INSTANCE;
        }
        if ((i10 & 4) != 0) {
            afterTextChanged = TextViewKt$addTextChangedListener$3.INSTANCE;
        }
        M.p(textView, "<this>");
        M.p(beforeTextChanged, "beforeTextChanged");
        M.p(onTextChanged, "onTextChanged");
        M.p(afterTextChanged, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(afterTextChanged, beforeTextChanged, onTextChanged);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static final TextWatcher doAfterTextChanged(TextView textView, final l<? super Editable, P0> action) {
        M.p(textView, "<this>");
        M.p(action, "action");
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable editable) {
                l.this.invoke(editable);
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doBeforeTextChanged(TextView textView, final r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> action) {
        M.p(textView, "<this>");
        M.p(action, "action");
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable editable) {
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                r.this.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doOnTextChanged(TextView textView, final r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> action) {
        M.p(textView, "<this>");
        M.p(action, "action");
        TextWatcher textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable editable) {
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                r.this.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
