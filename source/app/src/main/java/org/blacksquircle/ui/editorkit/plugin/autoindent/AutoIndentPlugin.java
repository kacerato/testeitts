package org.blacksquircle.ui.editorkit.plugin.autoindent;

import ag.C3623e;
import android.util.Log;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.apache.commons.math3.geometry.VectorFormat;
import org.blacksquircle.ui.editorkit.model.TextChange;
import org.blacksquircle.ui.editorkit.plugin.autoindent.AutoIndentPlugin;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class AutoIndentPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "autoindent-7401";
    private boolean autoCloseBrackets;
    private boolean autoCloseQuotes;
    private boolean autoIndentLines;
    private boolean isAutoIndenting;

    @NotNull
    private String newText;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public AutoIndentPlugin() {
        super(PLUGIN_ID);
        this.autoIndentLines = true;
        this.autoCloseBrackets = true;
        this.autoCloseQuotes = true;
        this.newText = "";
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void completeIndentation(final int i10, final int i11) {
        final String str;
        String str2;
        int length;
        if (this.isAutoIndenting) {
            return;
        }
        String[] executeIndentation = executeIndentation(i10);
        String str3 = executeIndentation[0];
        String str4 = "";
        if (str3 == null && executeIndentation[1] == null) {
            String str5 = executeIndentation[2];
            if (str5 == null) {
                return;
            }
            if (str5 != null) {
                str = str5;
                str2 = executeIndentation[3];
                if (str2 == null) {
                    M.m(str2);
                    length = Integer.parseInt(str2);
                } else {
                    length = str.length() + i10;
                }
                final int i12 = length;
                getEditText().post(new Runnable() {
                    @Override
                    public final void run() {
                        AutoIndentPlugin.completeIndentation$lambda$0(AutoIndentPlugin.this, i10, i11, str, i12);
                    }
                });
            }
        } else {
            if (str3 == null) {
                str3 = "";
            }
            String str6 = executeIndentation[1];
            if (str6 == null) {
                str6 = "";
            }
            if (M.g(str3, "") && M.g(str6, "")) {
                return;
            }
            str4 = str3 + this.newText + str6;
        }
        str = str4;
        str2 = executeIndentation[3];
        if (str2 == null) {
        }
        final int i122 = length;
        getEditText().post(new Runnable() {
            @Override
            public final void run() {
                AutoIndentPlugin.completeIndentation$lambda$0(AutoIndentPlugin.this, i10, i11, str, i122);
            }
        });
    }

    public static final void completeIndentation$lambda$0(AutoIndentPlugin autoIndentPlugin, int i10, int i11, String str, int i12) {
        autoIndentPlugin.isAutoIndenting = true;
        autoIndentPlugin.getEditText().getText().replace(i10, i11 + i10, str);
        try {
            autoIndentPlugin.getUndoStack().pop();
            TextChange pop = autoIndentPlugin.getUndoStack().pop();
            if (!M.g(str, "")) {
                pop.setNewText(str);
                autoIndentPlugin.getUndoStack().push(pop);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        autoIndentPlugin.getEditText().setSelection(i12);
        autoIndentPlugin.isAutoIndenting = false;
    }

    private final String[] executeIndentation(int i10) {
        int i11;
        if (M.g(this.newText, "\n") && this.autoIndentLines) {
            String indentationForOffset = getIndentationForOffset(i10);
            StringBuilder sb2 = new StringBuilder(indentationForOffset);
            int length = sb2.length() + i10 + 1;
            if (i10 > 0 && getEditText().getText().charAt(i10 - 1) == '{') {
                sb2.append(getEditText().tab());
                length = sb2.length() + i10 + 1;
            }
            int i12 = i10 + 1;
            if (i12 < getEditText().getText().length() && getEditText().getText().charAt(i12) == '}') {
                sb2.append("\n");
                sb2.append(indentationForOffset);
            }
            String[] strArr = new String[4];
            strArr[1] = sb2.toString();
            strArr[3] = String.valueOf(length);
            return strArr;
        }
        if (M.g(this.newText, JavadocConstants.ANCHOR_PREFIX_END) && this.autoCloseQuotes) {
            int i13 = i10 + 1;
            if (i13 >= getEditText().getText().length()) {
                String[] strArr2 = new String[4];
                strArr2[1] = JavadocConstants.ANCHOR_PREFIX_END;
                strArr2[3] = String.valueOf(i13);
                return strArr2;
            }
            if (getEditText().getText().charAt(i13) == '\"' && getEditText().getText().charAt(i10 - 1) != '\\') {
                String[] strArr3 = new String[4];
                strArr3[2] = "";
                strArr3[3] = String.valueOf(i13);
                return strArr3;
            }
            if (getEditText().getText().charAt(i13) != '\"' || getEditText().getText().charAt(i10 - 1) != '\\') {
                String[] strArr4 = new String[4];
                strArr4[1] = JavadocConstants.ANCHOR_PREFIX_END;
                strArr4[3] = String.valueOf(i13);
                return strArr4;
            }
        } else if (M.g(this.newText, "'") && this.autoCloseQuotes) {
            int i14 = i10 + 1;
            if (i14 >= getEditText().getText().length()) {
                String[] strArr5 = new String[4];
                strArr5[1] = "'";
                strArr5[3] = String.valueOf(i14);
                return strArr5;
            }
            if (i14 >= getEditText().getText().length()) {
                String[] strArr6 = new String[4];
                strArr6[1] = "'";
                strArr6[3] = String.valueOf(i14);
                return strArr6;
            }
            if (getEditText().getText().charAt(i14) == '\'' && i10 > 0 && getEditText().getText().charAt(i10 - 1) != '\\') {
                String[] strArr7 = new String[4];
                strArr7[2] = "";
                strArr7[3] = String.valueOf(i14);
                return strArr7;
            }
            if (getEditText().getText().charAt(i14) != '\'' || i10 <= 0 || getEditText().getText().charAt(i10 - 1) != '\\') {
                String[] strArr8 = new String[4];
                strArr8[1] = "'";
                strArr8[3] = String.valueOf(i14);
                return strArr8;
            }
        } else {
            if (M.g(this.newText, "{") && this.autoCloseBrackets) {
                String[] strArr9 = new String[4];
                strArr9[1] = VectorFormat.DEFAULT_SUFFIX;
                strArr9[3] = String.valueOf(i10 + 1);
                return strArr9;
            }
            if (M.g(this.newText, VectorFormat.DEFAULT_SUFFIX) && this.autoCloseBrackets) {
                int i15 = i10 + 1;
                if (i15 < getEditText().getText().length() && getEditText().getText().charAt(i15) == '}') {
                    String[] strArr10 = new String[4];
                    strArr10[2] = "";
                    strArr10[3] = String.valueOf(i15);
                    return strArr10;
                }
            } else {
                if (M.g(this.newText, "(") && this.autoCloseBrackets) {
                    String[] strArr11 = new String[4];
                    strArr11[1] = ")";
                    strArr11[3] = String.valueOf(i10 + 1);
                    return strArr11;
                }
                if (M.g(this.newText, ")") && this.autoCloseBrackets) {
                    int i16 = i10 + 1;
                    if (i16 < getEditText().getText().length() && getEditText().getText().charAt(i16) == ')') {
                        String[] strArr12 = new String[4];
                        strArr12[2] = "";
                        strArr12[3] = String.valueOf(i16);
                        return strArr12;
                    }
                } else {
                    if (M.g(this.newText, "[") && this.autoCloseBrackets) {
                        String[] strArr13 = new String[4];
                        strArr13[1] = "]";
                        strArr13[3] = String.valueOf(i10 + 1);
                        return strArr13;
                    }
                    if (M.g(this.newText, "]") && this.autoCloseBrackets && (i11 = i10 + 1) < getEditText().getText().length() && getEditText().getText().charAt(i11) == ']') {
                        String[] strArr14 = new String[4];
                        strArr14[2] = "";
                        strArr14[3] = String.valueOf(i11);
                        return strArr14;
                    }
                }
            }
        }
        return new String[4];
    }

    private final String getIndentationForLine(int i10) {
        int start = getLines().getLine(i10).getStart();
        int i11 = start;
        while (i11 < getEditText().getText().length()) {
            char charAt = getEditText().getText().charAt(i11);
            if (!C3623e.r(charAt) || charAt == '\n') {
                break;
            }
            i11++;
        }
        return getEditText().getText().subSequence(start, i11).toString();
    }

    private final String getIndentationForOffset(int i10) {
        return getIndentationForLine(getLines().getLineForIndex(i10));
    }

    public final boolean getAutoCloseBrackets() {
        return this.autoCloseBrackets;
    }

    public final boolean getAutoCloseQuotes() {
        return this.autoCloseQuotes;
    }

    public final boolean getAutoIndentLines() {
        return this.autoIndentLines;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "AutoIndent plugin loaded successfully!");
    }

    @Override
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        this.newText = String.valueOf(charSequence != null ? charSequence.subSequence(i10, i10 + i12) : null);
        completeIndentation(i10, i12);
        this.newText = "";
    }

    public final void setAutoCloseBrackets(boolean z10) {
        this.autoCloseBrackets = z10;
    }

    public final void setAutoCloseQuotes(boolean z10) {
        this.autoCloseQuotes = z10;
    }

    public final void setAutoIndentLines(boolean z10) {
        this.autoIndentLines = z10;
    }
}
