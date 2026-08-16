package org.blacksquircle.ui.editorkit.widget.internal;

import Lf.k;
import ag.P;
import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.util.AttributeSet;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.widget.TextViewCompat;
import com.itsmagic.engine2.R;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.blacksquircle.ui.editorkit.model.LinesCollection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import z1.C16241a;

@t0({"SMAP\nLineNumbersEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1915#2,2:143\n*S KotlinDebug\n*F\n+ 1 LineNumbersEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText\n*L\n96#1:143,2\n*E\n"})
public abstract class LineNumbersEditText extends ScrollableEditText {

    @NotNull
    private final LinesCollection lines;
    private boolean softKeyboard;
    private int textChangeEnd;
    private int textChangeStart;

    @NotNull
    private String textChangedNewText;

    @NotNull
    private final SpannableStringBuilder textContent;

    @NotNull
    private final LineNumbersEditText$textWatcher$1 textWatcher;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public LineNumbersEditText(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public void addLine(int i10, int i11, int i12) {
        this.lines.add(i10, i11);
    }

    public void doAfterTextChanged(@Nullable Editable editable) {
    }

    public void doBeforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.textChangeStart = i10;
        this.textChangeEnd = i10 + i11;
    }

    public void doOnTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        String valueOf = String.valueOf(charSequence != null ? charSequence.subSequence(i10, i12 + i10) : null);
        this.textChangedNewText = valueOf;
        replaceText(this.textChangeStart, this.textChangeEnd, valueOf);
    }

    @NotNull
    public final LinesCollection getLines() {
        return this.lines;
    }

    public final boolean getSoftKeyboard() {
        return this.softKeyboard;
    }

    public void removeLine(int i10) {
        this.lines.remove(i10);
    }

    public void replaceText(int i10, int i11, @NotNull CharSequence newText) {
        M.p(newText, "newText");
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 >= this.textContent.length()) {
            i11 = this.textContent.length();
        }
        int length = newText.length() - (i11 - i10);
        int lineForIndex = this.lines.getLineForIndex(i10);
        for (int i12 = i10; i12 < i11; i12++) {
            if (this.textContent.charAt(i12) == '\n') {
                removeLine(lineForIndex + 1);
            }
        }
        LinesCollection linesCollection = this.lines;
        linesCollection.shiftIndexes(linesCollection.getLineForIndex(i10) + 1, length);
        int length2 = newText.length();
        for (int i13 = 0; i13 < length2; i13++) {
            if (newText.charAt(i13) == '\n') {
                LinesCollection linesCollection2 = this.lines;
                int i14 = i10 + i13;
                linesCollection2.add(linesCollection2.getLineForIndex(i14) + 1, i14 + 1);
            }
        }
        try {
            this.textContent.replace(i10, i11, newText);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void setSoftKeyboard(boolean z10) {
        this.softKeyboard = z10;
        setImeOptions(z10 ? 0 : 268435456);
    }

    public void setTextContent(@NotNull PrecomputedTextCompat textParams) {
        M.p(textParams, "textParams");
        removeTextChangedListener(this.textWatcher);
        setText(textParams);
        this.textContent.clear();
        int length = this.textContent.length();
        String precomputedTextCompat = textParams.toString();
        M.o(precomputedTextCompat, "toString(...)");
        int i10 = 0;
        replaceText(0, length, precomputedTextCompat);
        this.lines.clear();
        Editable text = getText();
        M.o(text, "getText(...)");
        int i11 = 0;
        for (String str : P.g4(text)) {
            addLine(i10, i11, str.length());
            i11 += str.length() + 1;
            i10++;
        }
        this.lines.add(i10, i11);
        addTextChangedListener(this.textWatcher);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public LineNumbersEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.blacksquircle.ui.editorkit.widget.internal.LineNumbersEditText$textWatcher$1] */
    @k
    public LineNumbersEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.lines = new LinesCollection();
        this.textContent = new SpannableStringBuilder("");
        this.textWatcher = new TextWatcher() {
            @Override
            public void afterTextChanged(Editable editable) {
                LineNumbersEditText.this.doAfterTextChanged(editable);
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                LineNumbersEditText.this.doBeforeTextChanged(charSequence, i11, i12, i13);
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                LineNumbersEditText.this.doOnTextChanged(charSequence, i11, i12, i13);
            }
        };
        this.textChangedNewText = "";
        setGravity(C16241a.f130539s);
        setInputType(655361);
    }

    public LineNumbersEditText(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.autoCompleteTextViewStyle : i10);
    }

    public final void setTextContent(@NotNull CharSequence text) {
        M.p(text, "text");
        PrecomputedTextCompat.Params textMetricsParams = TextViewCompat.getTextMetricsParams(this);
        M.o(textMetricsParams, "getTextMetricsParams(...)");
        PrecomputedTextCompat create = PrecomputedTextCompat.create(text, textMetricsParams);
        M.m(create);
        setTextContent(create);
    }
}
