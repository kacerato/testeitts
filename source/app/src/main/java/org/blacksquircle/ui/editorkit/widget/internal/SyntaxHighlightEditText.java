package org.blacksquircle.ui.editorkit.widget.internal;

import F6.c;
import Lf.k;
import Mf.l;
import ag.C3617K;
import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import androidx.core.text.PrecomputedTextCompat;
import com.itsmagic.engine2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.blacksquircle.ui.editorkit.model.ErrorEntry;
import org.blacksquircle.ui.editorkit.model.ErrorSpan;
import org.blacksquircle.ui.editorkit.model.FindParams;
import org.blacksquircle.ui.editorkit.model.FindResultSpan;
import org.blacksquircle.ui.editorkit.model.TabWidthSpan;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.ExtensionsKt;
import org.blacksquircle.ui.editorkit.utils.StylingTask;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.StyleSpan;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;

@t0({"SMAP\nSyntaxHighlightEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n+ 2 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n*L\n1#1,479:1\n34#2:480\n34#2:481\n34#2:482\n34#2:483\n*S KotlinDebug\n*F\n+ 1 SyntaxHighlightEditText.kt\norg/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n*L\n137#1:480\n335#1:481\n405#1:482\n426#1:483\n*E\n"})
public abstract class SyntaxHighlightEditText extends UndoRedoEditText {

    @NotNull
    private final List<ErrorSpan> activeErrorSpans;
    private int addedTextCount;

    @NotNull
    private ColorScheme colorScheme;
    private final List<ErrorEntry> errorSpans;

    @NotNull
    private final List<FindResultSpan> findResultSpans;

    @Nullable
    private StyleSpan findResultStyleSpan;
    private boolean isSyntaxHighlighting;

    @Nullable
    private Language language;
    private int selectedFindResult;

    @NotNull
    private final List<SyntaxHighlightSpan> syntaxHighlightSpans;
    private int tabWidth;

    @Nullable
    private StylingTask task;
    private boolean useSpacesInsteadOfTabs;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public SyntaxHighlightEditText(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void cancelSyntaxHighlighting() {
        StylingTask stylingTask = this.task;
        if (stylingTask != null) {
            stylingTask.cancel();
        }
        this.task = null;
    }

    @c
    private static void getErrorSpans$annotations() {
    }

    private final void scrollToFindResult() {
        if (this.selectedFindResult < this.findResultSpans.size()) {
            FindResultSpan findResultSpan = this.findResultSpans.get(this.selectedFindResult);
            if (findResultSpan.getStart() < getLayout().getLineStart(ExtensionsKt.getTopVisibleLine(this)) || findResultSpan.getEnd() > getLayout().getLineEnd(ExtensionsKt.getBottomVisibleLine(this))) {
                int height = (getLayout().getHeight() - getHeight()) + getPaddingBottom() + getPaddingTop();
                int lineTop = getLayout().getLineTop(getLayout().getLineForOffset(findResultSpan.getStart()));
                if (lineTop <= height) {
                    height = lineTop;
                }
                scrollTo(isHorizontallyScrollableCompat() ? (int) getLayout().getPrimaryHorizontal(findResultSpan.getStart()) : getScrollX(), height);
            }
        }
    }

    private final void selectResult() {
        FindResultSpan findResultSpan = this.findResultSpans.get(this.selectedFindResult);
        setSelection(findResultSpan.getStart(), findResultSpan.getEnd());
        scrollToFindResult();
    }

    @c
    private final void shiftSpans(int i10, int i11) {
        for (SyntaxHighlightSpan syntaxHighlightSpan : this.syntaxHighlightSpans) {
            if (syntaxHighlightSpan.getStart() >= i10) {
                syntaxHighlightSpan.setStart(syntaxHighlightSpan.getStart() + i11);
            }
            if (syntaxHighlightSpan.getEnd() >= i10) {
                syntaxHighlightSpan.setEnd(syntaxHighlightSpan.getEnd() + i11);
            }
        }
        for (FindResultSpan findResultSpan : this.findResultSpans) {
            if (findResultSpan.getStart() > i10) {
                findResultSpan.setStart(findResultSpan.getStart() + i11);
            }
            if (findResultSpan.getEnd() >= i10) {
                findResultSpan.setEnd(findResultSpan.getEnd() + i11);
            }
        }
    }

    @c
    private final void syntaxHighlight() {
        cancelSyntaxHighlighting();
        StylingTask stylingTask = new StylingTask(new Mf.a() {
            @Override
            public final Object invoke() {
                List syntaxHighlight$lambda$0;
                syntaxHighlight$lambda$0 = SyntaxHighlightEditText.syntaxHighlight$lambda$0(SyntaxHighlightEditText.this);
                return syntaxHighlight$lambda$0;
            }
        }, new l() {
            @Override
            public final Object invoke(Object obj) {
                P0 syntaxHighlight$lambda$1;
                syntaxHighlight$lambda$1 = SyntaxHighlightEditText.syntaxHighlight$lambda$1(SyntaxHighlightEditText.this, (List) obj);
                return syntaxHighlight$lambda$1;
            }
        });
        this.task = stylingTask;
        stylingTask.execute();
    }

    public static final List syntaxHighlight$lambda$0(SyntaxHighlightEditText syntaxHighlightEditText) {
        LanguageStyler styler;
        List<SyntaxHighlightSpan> execute;
        try {
            Language language = syntaxHighlightEditText.language;
            if (language != null && (styler = language.getStyler()) != null && (execute = styler.execute(syntaxHighlightEditText.getText().toString(), syntaxHighlightEditText.colorScheme)) != null) {
                return execute;
            }
            return H.J();
        } catch (Error e10) {
            e10.printStackTrace();
            return H.J();
        } catch (Exception e11) {
            e11.printStackTrace();
            return H.J();
        }
    }

    public static final P0 syntaxHighlight$lambda$1(SyntaxHighlightEditText syntaxHighlightEditText, List spans) {
        M.p(spans, "spans");
        syntaxHighlightEditText.syntaxHighlightSpans.clear();
        syntaxHighlightEditText.syntaxHighlightSpans.addAll(spans);
        syntaxHighlightEditText.updateSyntaxHighlighting();
        return P0.f98194a;
    }

    @c
    private final void updateSyntaxHighlighting() {
        if (getLayout() != null) {
            int lineStart = getLayout().getLineStart(ExtensionsKt.getTopVisibleLine(this));
            int lineEnd = getLayout().getLineEnd(ExtensionsKt.getBottomVisibleLine(this));
            this.isSyntaxHighlighting = true;
            Editable text = getText();
            M.o(text, "getText(...)");
            Object[] spans = text.getSpans(0, getText().length(), SyntaxHighlightSpan.class);
            M.o(spans, "getSpans(start, end, T::class.java)");
            for (SyntaxHighlightSpan syntaxHighlightSpan : (SyntaxHighlightSpan[]) spans) {
                try {
                    getText().removeSpan(syntaxHighlightSpan);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            for (SyntaxHighlightSpan syntaxHighlightSpan2 : this.syntaxHighlightSpans) {
                boolean z10 = syntaxHighlightSpan2.getStart() >= 0 && syntaxHighlightSpan2.getEnd() <= getText().length();
                int start = syntaxHighlightSpan2.getStart();
                boolean z11 = (lineStart <= start && start <= lineEnd) || (syntaxHighlightSpan2.getStart() <= lineEnd && syntaxHighlightSpan2.getEnd() >= lineStart);
                if (z10 && z11) {
                    try {
                        getText().setSpan(syntaxHighlightSpan2, syntaxHighlightSpan2.getStart() < lineStart ? lineStart : syntaxHighlightSpan2.getStart(), syntaxHighlightSpan2.getEnd() > lineEnd ? lineEnd : syntaxHighlightSpan2.getEnd(), 33);
                    } catch (Error e11) {
                        e11.printStackTrace();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
            }
            this.isSyntaxHighlighting = false;
            Editable text2 = getText();
            M.o(text2, "getText(...)");
            Object[] spans2 = text2.getSpans(0, getText().length(), FindResultSpan.class);
            M.o(spans2, "getSpans(start, end, T::class.java)");
            for (FindResultSpan findResultSpan : (FindResultSpan[]) spans2) {
                getText().removeSpan(findResultSpan);
            }
            for (FindResultSpan findResultSpan2 : this.findResultSpans) {
                boolean z12 = findResultSpan2.getStart() >= 0 && findResultSpan2.getEnd() <= getText().length();
                boolean z13 = findResultSpan2.getStart() <= findResultSpan2.getEnd();
                int start2 = findResultSpan2.getStart();
                boolean z14 = (lineStart <= start2 && start2 <= lineEnd) || (findResultSpan2.getStart() <= lineEnd && findResultSpan2.getEnd() >= lineStart);
                if (z12 && z13 && z14) {
                    getText().setSpan(findResultSpan2, findResultSpan2.getStart() < lineStart ? lineStart : findResultSpan2.getStart(), findResultSpan2.getEnd() > lineEnd ? lineEnd : findResultSpan2.getEnd(), 33);
                }
            }
            if (!this.useSpacesInsteadOfTabs) {
                Editable text3 = getText();
                M.o(text3, "getText(...)");
                Object[] spans3 = text3.getSpans(0, getText().length(), TabWidthSpan.class);
                M.o(spans3, "getSpans(start, end, T::class.java)");
                for (TabWidthSpan tabWidthSpan : (TabWidthSpan[]) spans3) {
                    getText().removeSpan(tabWidthSpan);
                }
                Matcher matcher = Pattern.compile("\t").matcher(getText().subSequence(lineStart, lineEnd));
                while (matcher.find()) {
                    int start3 = matcher.start() + lineStart;
                    int end = matcher.end() + lineStart;
                    if (start3 >= 0 && end <= getText().length()) {
                        getText().setSpan(new TabWidthSpan(this.tabWidth), start3, end, 18);
                    }
                }
            }
            postInvalidate();
        }
    }

    @c
    public final void addErrorLine(int i10) {
        if (i10 > 0) {
            this.errorSpans.add(new ErrorEntry(i10, 0, 2, null));
        }
    }

    public final void clearFindResultSpans() {
        this.selectedFindResult = 0;
        this.findResultSpans.clear();
        Editable text = getText();
        M.o(text, "getText(...)");
        Object[] spans = text.getSpans(0, getText().length(), FindResultSpan.class);
        M.o(spans, "getSpans(start, end, T::class.java)");
        for (FindResultSpan findResultSpan : (FindResultSpan[]) spans) {
            getText().removeSpan(findResultSpan);
        }
    }

    @Override
    public void doAfterTextChanged(@Nullable Editable editable) {
        if (!this.isSyntaxHighlighting) {
            shiftSpans(getSelectionStart(), this.addedTextCount);
        }
        this.addedTextCount = 0;
        syntaxHighlight();
    }

    @Override
    public void doBeforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.addedTextCount -= i11;
        cancelSyntaxHighlighting();
        if (!this.isSyntaxHighlighting) {
            super.doBeforeTextChanged(charSequence, i10, i11, i12);
        }
        abortFling();
    }

    @Override
    public void doOnTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.addedTextCount += i12;
        if (this.isSyntaxHighlighting) {
            return;
        }
        super.doOnTextChanged(charSequence, i10, i11, i12);
    }

    public final void find(@NotNull FindParams params) {
        Pattern compile;
        M.p(params, "params");
        if (params.getQuery().length() > 0) {
            try {
                if (params.getRegex()) {
                    compile = params.getMatchCase() ? Pattern.compile(params.getQuery()) : Pattern.compile(params.getQuery(), 66);
                } else if (!params.getWordsOnly()) {
                    compile = params.getMatchCase() ? Pattern.compile(Pattern.quote(params.getQuery())) : Pattern.compile(Pattern.quote(params.getQuery()), 66);
                } else if (params.getMatchCase()) {
                    compile = Pattern.compile("\\s" + params.getQuery() + "\\s");
                } else {
                    compile = Pattern.compile("\\s" + Pattern.quote(params.getQuery()) + "\\s", 66);
                }
                Matcher matcher = compile.matcher(getText());
                while (matcher.find()) {
                    StyleSpan styleSpan = this.findResultStyleSpan;
                    if (styleSpan != null) {
                        FindResultSpan findResultSpan = new FindResultSpan(styleSpan, matcher.start(), matcher.end());
                        this.findResultSpans.add(findResultSpan);
                        getText().setSpan(findResultSpan, findResultSpan.getStart(), findResultSpan.getEnd(), 33);
                    }
                }
                if (this.findResultSpans.isEmpty()) {
                    return;
                }
                selectResult();
            } catch (PatternSyntaxException unused) {
            }
        }
    }

    public final void findNext() {
        if (this.selectedFindResult < this.findResultSpans.size() - 1) {
            this.selectedFindResult++;
            selectResult();
        }
    }

    public final void findPrevious() {
        int i10 = this.selectedFindResult;
        if (i10 <= 0 || i10 >= this.findResultSpans.size()) {
            return;
        }
        this.selectedFindResult--;
        selectResult();
    }

    @NotNull
    public final ColorScheme getColorScheme() {
        return this.colorScheme;
    }

    @Nullable
    public final Language getLanguage() {
        return this.language;
    }

    public final int getTabWidth() {
        return this.tabWidth;
    }

    public final boolean getUseSpacesInsteadOfTabs() {
        return this.useSpacesInsteadOfTabs;
    }

    public void onColorSchemeChanged() {
        this.findResultStyleSpan = new StyleSpan(this.colorScheme.getFindResultBackgroundColor(), false, false, false, false, 30, null);
        setTextColor(this.colorScheme.getTextColor());
        setBackgroundColor(this.colorScheme.getBackgroundColor());
        setHighlightColor(this.colorScheme.getSelectionColor());
    }

    public void onLanguageChanged() {
    }

    @Override
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        updateSyntaxHighlighting();
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        updateSyntaxHighlighting();
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @c
    public final void removeAllErrors() {
        this.errorSpans.clear();
    }

    @c
    public final void removeErrorLine(int i10) {
        ErrorEntry next;
        if (i10 <= 0) {
            return;
        }
        while (true) {
            Iterator<ErrorEntry> it = this.errorSpans.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (next.getLineNumber() == i10) {
                    break;
                }
            }
            return;
            this.errorSpans.remove(next);
        }
    }

    public final void replaceAllFindResults(@NotNull String replaceText) {
        M.p(replaceText, "replaceText");
        if (this.findResultSpans.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(getText());
        int size = this.findResultSpans.size();
        while (true) {
            size--;
            if (-1 >= size) {
                setText(sb2.toString());
                return;
            } else {
                FindResultSpan findResultSpan = this.findResultSpans.get(size);
                sb2.replace(findResultSpan.getStart(), findResultSpan.getEnd(), replaceText);
                this.findResultSpans.remove(size);
            }
        }
    }

    public final void replaceFindResult(@NotNull String replaceText) {
        M.p(replaceText, "replaceText");
        if (this.findResultSpans.isEmpty()) {
            return;
        }
        FindResultSpan findResultSpan = this.findResultSpans.get(this.selectedFindResult);
        getText().replace(findResultSpan.getStart(), findResultSpan.getEnd(), replaceText);
        this.findResultSpans.remove(findResultSpan);
        if (this.selectedFindResult >= this.findResultSpans.size()) {
            this.selectedFindResult--;
        }
    }

    public final void setColorScheme(@NotNull ColorScheme value) {
        M.p(value, "value");
        this.colorScheme = value;
        onColorSchemeChanged();
    }

    public final void setLanguage(@Nullable Language language) {
        this.language = language;
        onLanguageChanged();
    }

    public final void setTabWidth(int i10) {
        this.tabWidth = i10;
    }

    @Override
    @c
    public void setTextContent(@NotNull PrecomputedTextCompat textParams) {
        M.p(textParams, "textParams");
        this.syntaxHighlightSpans.clear();
        this.findResultSpans.clear();
        super.setTextContent(textParams);
        syntaxHighlight();
    }

    public final void setUseSpacesInsteadOfTabs(boolean z10) {
        this.useSpacesInsteadOfTabs = z10;
    }

    @NotNull
    public final String tab() {
        return this.useSpacesInsteadOfTabs ? C3617K.x2(" ", this.tabWidth) : "\t";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public SyntaxHighlightEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public SyntaxHighlightEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.colorScheme = EditorTheme.INSTANCE.getANDROID_STUDIO();
        this.useSpacesInsteadOfTabs = true;
        this.tabWidth = 4;
        this.syntaxHighlightSpans = new ArrayList();
        this.findResultSpans = new ArrayList();
        this.errorSpans = Collections.synchronizedList(new ArrayList());
        this.activeErrorSpans = new ArrayList();
    }

    public SyntaxHighlightEditText(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.autoCompleteTextViewStyle : i10);
    }
}
