package org.blacksquircle.ui.editorkit.model;

import ag.C3623e;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.S;

public final class UndoStack {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_SIZE = Integer.MAX_VALUE;
    private int currentSize;

    @NotNull
    private List<TextChange> stack;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public UndoStack() {
        this.stack = new ArrayList();
    }

    private final boolean removeLast() {
        if (getSize() <= 0) {
            return false;
        }
        TextChange textChange = this.stack.get(0);
        this.stack.remove(0);
        this.currentSize -= textChange.getNewText().length() + textChange.getOldText().length();
        return true;
    }

    public final boolean canUndo() {
        return getSize() > 0;
    }

    @NotNull
    public final UndoStack clone() {
        return new UndoStack(this.stack);
    }

    @NotNull
    public final TextChange get(int i10) {
        return this.stack.get(i10);
    }

    public final int getSize() {
        return this.stack.size();
    }

    @NotNull
    public final TextChange pop() {
        TextChange textChange = this.stack.get(getSize() - 1);
        this.stack.remove(getSize() - 1);
        this.currentSize -= textChange.getNewText().length() + textChange.getOldText().length();
        return textChange;
    }

    public final void push(@NotNull TextChange textChange) {
        M.p(textChange, "textChange");
        int length = textChange.getNewText().length() + textChange.getOldText().length();
        if (length >= Integer.MAX_VALUE) {
            removeAll();
            return;
        }
        if (getSize() > 0) {
            boolean z10 = true;
            TextChange textChange2 = this.stack.get(getSize() - 1);
            if (textChange.getOldText().length() == 0 && textChange.getNewText().length() == 1 && textChange2.getOldText().length() == 0) {
                if (textChange2.getStart() + textChange2.getNewText().length() != textChange.getStart()) {
                    this.stack.add(textChange);
                } else if (C3623e.r(textChange.getNewText().charAt(0))) {
                    char[] charArray = textChange2.getNewText().toCharArray();
                    M.o(charArray, "toCharArray(...)");
                    for (char c10 : charArray) {
                        if (!C3623e.r(c10)) {
                            z10 = false;
                        }
                    }
                    if (z10) {
                        textChange2.setNewText(textChange2.getNewText() + textChange.getNewText());
                    } else {
                        this.stack.add(textChange);
                    }
                } else if (Character.isLetterOrDigit(textChange.getNewText().charAt(0))) {
                    char[] charArray2 = textChange2.getNewText().toCharArray();
                    M.o(charArray2, "toCharArray(...)");
                    for (char c11 : charArray2) {
                        if (!Character.isLetterOrDigit(c11)) {
                            z10 = false;
                        }
                    }
                    if (z10) {
                        textChange2.setNewText(textChange2.getNewText() + textChange.getNewText());
                    } else {
                        this.stack.add(textChange);
                    }
                } else {
                    this.stack.add(textChange);
                }
            } else if (textChange.getOldText().length() != 1 || textChange.getNewText().length() > 0 || textChange2.getNewText().length() > 0) {
                this.stack.add(textChange);
            } else if (textChange2.getStart() - 1 != textChange.getStart()) {
                this.stack.add(textChange);
            } else if (C3623e.r(textChange.getOldText().charAt(0))) {
                char[] charArray3 = textChange2.getOldText().toCharArray();
                M.o(charArray3, "toCharArray(...)");
                for (char c12 : charArray3) {
                    if (!C3623e.r(c12)) {
                        z10 = false;
                    }
                }
                if (z10) {
                    textChange2.setOldText(textChange.getOldText() + textChange2.getOldText());
                    textChange2.setStart(textChange2.getStart() - textChange.getOldText().length());
                } else {
                    this.stack.add(textChange);
                }
            } else if (Character.isLetterOrDigit(textChange.getOldText().charAt(0))) {
                char[] charArray4 = textChange2.getOldText().toCharArray();
                M.o(charArray4, "toCharArray(...)");
                for (char c13 : charArray4) {
                    if (!Character.isLetterOrDigit(c13)) {
                        z10 = false;
                    }
                }
                if (z10) {
                    textChange2.setOldText(textChange.getOldText() + textChange2.getOldText());
                    textChange2.setStart(textChange2.getStart() - textChange.getOldText().length());
                } else {
                    this.stack.add(textChange);
                }
            } else {
                this.stack.add(textChange);
            }
        } else {
            this.stack.add(textChange);
        }
        this.currentSize += length;
        while (this.currentSize > Integer.MAX_VALUE && removeLast()) {
        }
    }

    public final void removeAll() {
        this.currentSize = 0;
        this.stack.clear();
    }

    private UndoStack(List<TextChange> list) {
        this();
        this.stack = S.d6(list);
    }
}
