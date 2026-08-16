package androidx.core.widget;

import Mf.l;
import Mf.r;
import android.text.Editable;
import android.text.TextWatcher;
import nf.P0;

public final class TextViewKt$addTextChangedListener$textWatcher$1 implements TextWatcher {
    final l<Editable, P0> $afterTextChanged;
    final r<CharSequence, Integer, Integer, Integer, P0> $beforeTextChanged;
    final r<CharSequence, Integer, Integer, Integer, P0> $onTextChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public TextViewKt$addTextChangedListener$textWatcher$1(l<? super Editable, P0> lVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> rVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, P0> rVar2) {
        this.$afterTextChanged = lVar;
        this.$beforeTextChanged = rVar;
        this.$onTextChanged = rVar2;
    }

    @Override
    public void afterTextChanged(Editable editable) {
        this.$afterTextChanged.invoke(editable);
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.$beforeTextChanged.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.$onTextChanged.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }
}
