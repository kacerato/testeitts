package org.blacksquircle.ui.editorkit.widget.internal;

import Lf.k;
import android.content.Context;
import android.util.AttributeSet;
import androidx.core.text.PrecomputedTextCompat;
import com.itsmagic.engine2.R;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.model.TextChange;
import org.blacksquircle.ui.editorkit.model.UndoStack;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class UndoRedoEditText extends LineNumbersEditText {
    private boolean isDoingUndoRedo;

    @Nullable
    private OnUndoRedoChangedListener onUndoRedoChangedListener;

    @NotNull
    private UndoStack redoStack;

    @Nullable
    private TextChange textLastChange;

    @NotNull
    private UndoStack undoStack;

    public interface OnUndoRedoChangedListener {
        void onUndoRedoChanged();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public UndoRedoEditText(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public final boolean canRedo() {
        return this.redoStack.canUndo();
    }

    public final boolean canUndo() {
        return this.undoStack.canUndo();
    }

    public void clearText() {
        this.undoStack.removeAll();
        this.redoStack.removeAll();
        OnUndoRedoChangedListener onUndoRedoChangedListener = this.onUndoRedoChangedListener;
        if (onUndoRedoChangedListener != null) {
            onUndoRedoChangedListener.onUndoRedoChanged();
        }
        setTextContent("");
    }

    @Override
    public void doBeforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        super.doBeforeTextChanged(charSequence, i10, i11, i12);
        if (this.isDoingUndoRedo) {
            return;
        }
        TextChange textChange = null;
        if (i11 < Integer.MAX_VALUE) {
            textChange = new TextChange("", String.valueOf(charSequence != null ? charSequence.subSequence(i10, i11 + i10) : null), i10);
        } else {
            this.undoStack.removeAll();
            this.redoStack.removeAll();
        }
        this.textLastChange = textChange;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        if (r3.booleanValue() != false) goto L40;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void doOnTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        TextChange textChange;
        Boolean bool;
        Boolean bool2;
        String newText;
        String oldText;
        super.doOnTextChanged(charSequence, i10, i11, i12);
        if (this.isDoingUndoRedo || (textChange = this.textLastChange) == null) {
            return;
        }
        if (i12 < Integer.MAX_VALUE) {
            if (textChange != null) {
                textChange.setNewText(String.valueOf(charSequence != null ? charSequence.subSequence(i10, i12 + i10) : null));
            }
            TextChange textChange2 = this.textLastChange;
            if (textChange2 != null && i10 == textChange2.getStart()) {
                TextChange textChange3 = this.textLastChange;
                if (textChange3 == null || (oldText = textChange3.getOldText()) == null) {
                    bool = null;
                } else {
                    bool = Boolean.valueOf(oldText.length() > 0);
                }
                M.m(bool);
                if (!bool.booleanValue()) {
                    TextChange textChange4 = this.textLastChange;
                    if (textChange4 == null || (newText = textChange4.getNewText()) == null) {
                        bool2 = null;
                    } else {
                        bool2 = Boolean.valueOf(newText.length() > 0);
                    }
                    M.m(bool2);
                }
                TextChange textChange5 = this.textLastChange;
                String oldText2 = textChange5 != null ? textChange5.getOldText() : null;
                TextChange textChange6 = this.textLastChange;
                if (!M.g(oldText2, textChange6 != null ? textChange6.getNewText() : null)) {
                    UndoStack undoStack = this.undoStack;
                    TextChange textChange7 = this.textLastChange;
                    M.m(textChange7);
                    undoStack.push(textChange7);
                    this.redoStack.removeAll();
                }
            }
        } else {
            this.undoStack.removeAll();
            this.redoStack.removeAll();
        }
        this.textLastChange = null;
        OnUndoRedoChangedListener onUndoRedoChangedListener = this.onUndoRedoChangedListener;
        if (onUndoRedoChangedListener != null) {
            onUndoRedoChangedListener.onUndoRedoChanged();
        }
    }

    @Nullable
    public final OnUndoRedoChangedListener getOnUndoRedoChangedListener() {
        return this.onUndoRedoChangedListener;
    }

    @NotNull
    public final UndoStack getRedoStack() {
        return this.redoStack;
    }

    @NotNull
    public final UndoStack getUndoStack() {
        return this.undoStack;
    }

    public final void redo() {
        TextChange pop = this.redoStack.pop();
        if (pop.getStart() >= 0) {
            this.isDoingUndoRedo = true;
            this.undoStack.push(pop);
            getText().replace(pop.getStart(), pop.getStart() + pop.getOldText().length(), pop.getNewText());
            setSelection(pop.getStart() + pop.getNewText().length());
            this.isDoingUndoRedo = false;
        } else {
            this.undoStack.removeAll();
        }
        OnUndoRedoChangedListener onUndoRedoChangedListener = this.onUndoRedoChangedListener;
        if (onUndoRedoChangedListener != null) {
            onUndoRedoChangedListener.onUndoRedoChanged();
        }
    }

    public final void setOnUndoRedoChangedListener(@Nullable OnUndoRedoChangedListener onUndoRedoChangedListener) {
        this.onUndoRedoChangedListener = onUndoRedoChangedListener;
    }

    public final void setRedoStack(@NotNull UndoStack undoStack) {
        M.p(undoStack, "<set-?>");
        this.redoStack = undoStack;
    }

    @Override
    public void setTextContent(@NotNull PrecomputedTextCompat textParams) {
        M.p(textParams, "textParams");
        super.setTextContent(textParams);
        OnUndoRedoChangedListener onUndoRedoChangedListener = this.onUndoRedoChangedListener;
        if (onUndoRedoChangedListener != null) {
            onUndoRedoChangedListener.onUndoRedoChanged();
        }
    }

    public final void setUndoStack(@NotNull UndoStack undoStack) {
        M.p(undoStack, "<set-?>");
        this.undoStack = undoStack;
    }

    public final void undo() {
        TextChange pop = this.undoStack.pop();
        if (pop.getStart() >= 0) {
            this.isDoingUndoRedo = true;
            if (pop.getStart() > getText().length()) {
                pop.setStart(getText().length());
            }
            int start = pop.getStart() + pop.getNewText().length();
            if (start < 0) {
                start = 0;
            }
            if (start > getText().length()) {
                start = getText().length();
            }
            this.redoStack.push(pop);
            getText().replace(pop.getStart(), start, pop.getOldText());
            try {
                setSelection(pop.getStart() + pop.getOldText().length());
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            this.isDoingUndoRedo = false;
        } else {
            this.undoStack.removeAll();
        }
        OnUndoRedoChangedListener onUndoRedoChangedListener = this.onUndoRedoChangedListener;
        if (onUndoRedoChangedListener != null) {
            onUndoRedoChangedListener.onUndoRedoChanged();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public UndoRedoEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public UndoRedoEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.undoStack = new UndoStack();
        this.redoStack = new UndoStack();
    }

    public UndoRedoEditText(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.autoCompleteTextViewStyle : i10);
    }
}
