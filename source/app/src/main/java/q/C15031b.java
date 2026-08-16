package q;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.icu.text.DateFormat;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavaElement;

public class C15031b extends AppCompatMultiAutoCompleteTextView {

    public static final Pattern f104217q = Pattern.compile("(^.+$)+", 8);

    public static final Pattern f104218r = Pattern.compile("[\\t ]+$", 8);

    public static final String f104219s = "CodeView";

    public int f104220b;

    public int f104221c;

    public int f104222d;

    public boolean f104223e;

    public boolean f104224f;

    public boolean f104225g;

    public boolean f104226h;

    public final Handler f104227i;

    public MultiAutoCompleteTextView.Tokenizer f104228j;

    public final float f104229k;

    public final SortedMap<Integer, Integer> f104230l;

    public final Map<Pattern, Integer> f104231m;

    public List<Character> f104232n;

    public final Runnable f104233o;

    public final TextWatcher f104234p;

    public class a implements InputFilter {
        public a() {
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            return (C15031b.this.f104224f && i11 - i10 == 1 && i10 < charSequence.length() && i12 < spanned.length() && charSequence.charAt(i10) == '\n') ? C15031b.this.m(charSequence, spanned, i12, i13) : charSequence;
        }
    }

    public class RunnableC1960b implements Runnable {
        public RunnableC1960b() {
        }

        @Override
        public void run() {
            C15031b.this.w(C15031b.this.getText());
        }
    }

    public class c implements TextWatcher {

        public int f104237b;

        public int f104238c;

        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            C15031b.this.n();
            if (C15031b.this.getSyntaxPatternsSize() > 0) {
                C15031b.this.q(editable, this.f104237b, this.f104238c);
                if (C15031b.this.f104224f) {
                    C15031b.this.f104223e = true;
                    C15031b.this.f104227i.postDelayed(C15031b.this.f104233o, C15031b.this.f104222d);
                    if (C15031b.this.f104226h) {
                        C15031b.this.B();
                    }
                }
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            this.f104237b = i10;
            this.f104238c = i12;
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public final class d extends ReplacementSpan {
        public d() {
        }

        @Override
        public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        }

        @Override
        public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
            return C15031b.this.f104220b;
        }

        public d(C15031b c15031b, a aVar) {
            this();
        }
    }

    public C15031b(Context context) {
        super(context);
        this.f104222d = 500;
        this.f104224f = true;
        this.f104227i = new Handler();
        this.f104229k = getResources().getDisplayMetrics().density;
        this.f104230l = new TreeMap();
        this.f104231m = new HashMap();
        this.f104232n = Arrays.asList(Character.valueOf(JavaElement.JEM_COMPILATIONUNIT), '+', '-', '*', '/', '=');
        this.f104233o = new RunnableC1960b();
        this.f104234p = new c();
        x();
    }

    public void A() {
        v(getEditableText());
    }

    public void B() {
        this.f104230l.clear();
        this.f104225g = false;
    }

    public void C(Pattern pattern) {
        this.f104231m.remove(pattern);
    }

    public void D() {
        this.f104231m.clear();
    }

    public List<Character> getAutoIndentCharacterList() {
        return this.f104232n;
    }

    public int getErrorsSize() {
        return this.f104230l.size();
    }

    public int getSyntaxPatternsSize() {
        return this.f104231m.size();
    }

    public String getTextWithoutTrailingSpace() {
        return f104218r.matcher(getText()).replaceAll("");
    }

    public int getUpdateDelayTime() {
        return this.f104222d;
    }

    public void k(int i10, int i11) {
        this.f104230l.put(Integer.valueOf(i10), Integer.valueOf(i11));
        this.f104225g = true;
    }

    public void l(Pattern pattern, int i10) {
        this.f104231m.put(pattern, Integer.valueOf(i10));
    }

    public final CharSequence m(CharSequence charSequence, Spanned spanned, int i10, int i11) {
        char charAt;
        Log.d(f104219s, "autoIndent: Auto Indent");
        int i12 = i10 - 1;
        int i13 = 0;
        boolean z10 = false;
        while (i12 > -1 && (charAt = spanned.charAt(i12)) != '\n') {
            if (charAt != ' ' && charAt != '\t') {
                if (!z10) {
                    if (this.f104232n.contains(Character.valueOf(charAt))) {
                        i13--;
                    }
                    z10 = true;
                }
                if (charAt == '(') {
                    i13--;
                } else if (charAt == ')') {
                    i13++;
                }
            }
            i12--;
        }
        String str = "";
        if (i12 > -1) {
            char charAt2 = spanned.charAt(i10);
            int i14 = i12 + 1;
            int i15 = i14;
            while (true) {
                if (i15 >= i11) {
                    break;
                }
                char charAt3 = spanned.charAt(i15);
                if (charAt2 != '\n' && charAt3 == '/' && i15 + 1 < i11 && spanned.charAt(i15) == charAt3) {
                    i15 += 2;
                    break;
                }
                if (charAt3 != ' ' && charAt3 != '\t') {
                    break;
                }
                i15++;
            }
            str = "" + ((Object) spanned.subSequence(i14, i15));
        }
        if (i13 < 0) {
            str = str + "\t";
        }
        return ((Object) charSequence) + str;
    }

    public void n() {
        this.f104227i.removeCallbacks(this.f104233o);
    }

    public void o() {
        this.f104232n.clear();
    }

    public final void p(Editable editable) {
        int length = editable.length();
        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) editable.getSpans(0, length, ForegroundColorSpan.class);
        int length2 = foregroundColorSpanArr.length;
        while (true) {
            int i10 = length2 - 1;
            if (length2 <= 0) {
                break;
            }
            editable.removeSpan(foregroundColorSpanArr[i10]);
            length2 = i10;
        }
        BackgroundColorSpan[] backgroundColorSpanArr = (BackgroundColorSpan[]) editable.getSpans(0, length, BackgroundColorSpan.class);
        int length3 = backgroundColorSpanArr.length;
        while (true) {
            int i11 = length3 - 1;
            if (length3 <= 0) {
                return;
            }
            editable.removeSpan(backgroundColorSpanArr[i11]);
            length3 = i11;
        }
    }

    public final void q(Editable editable, int i10, int i11) {
        if (this.f104220b < 1) {
            return;
        }
        String obj = editable.toString();
        int i12 = i11 + i10;
        while (true) {
            int indexOf = obj.indexOf("\t", i10);
            if (indexOf <= -1 || indexOf >= i12) {
                return;
            }
            int i13 = indexOf + 1;
            editable.setSpan(new d(this, null), indexOf, i13, 33);
            i10 = i13;
        }
    }

    public final void r(Editable editable, Matcher matcher, int i10) {
        editable.setSpan(new BackgroundColorSpan(i10), matcher.start(), matcher.end(), 33);
    }

    public void removeErrorLine(int i10) {
        this.f104230l.remove(Integer.valueOf(i10));
        this.f104225g = this.f104230l.size() > 0;
    }

    public final void s(Editable editable, Matcher matcher, int i10) {
        editable.setSpan(new ForegroundColorSpan(i10), matcher.start(), matcher.end(), 33);
    }

    public void setAutoCompleteTokenizer(MultiAutoCompleteTextView.Tokenizer tokenizer) {
        this.f104228j = tokenizer;
    }

    public void setAutoIndentCharacterList(List<Character> list) {
        this.f104232n = list;
    }

    public void setRemoveErrorsWhenTextChanged(boolean z10) {
        this.f104226h = z10;
    }

    public void setSyntaxPatternsMap(Map<Pattern, Integer> map) {
        if (!this.f104231m.isEmpty()) {
            this.f104231m.clear();
        }
        this.f104231m.putAll(map);
    }

    public void setTabWidth(int i10) {
        if (this.f104221c == i10) {
            return;
        }
        this.f104221c = i10;
        this.f104220b = Math.round(getPaint().measureText(DateFormat.MINUTE) * i10);
    }

    public void setTextHighlighted(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        n();
        B();
        this.f104223e = false;
        this.f104224f = false;
        setText(t(new SpannableStringBuilder(charSequence)));
        this.f104224f = true;
    }

    public void setUpdateDelayTime(int i10) {
        this.f104222d = i10;
    }

    @Override
    public void showDropDown() {
        getLocationOnScreen(new int[2]);
        getWindowVisibleDisplayFrame(new Rect());
        int selectionStart = getSelectionStart();
        Layout layout = getLayout();
        setDropDownVerticalOffset((int) (((layout.getLineForOffset(selectionStart) * 140) + 750) / this.f104229k));
        setDropDownHorizontalOffset((int) (layout.getPrimaryHorizontal(selectionStart) / this.f104229k));
        super.showDropDown();
    }

    public final Editable t(Editable editable) {
        try {
        } catch (IllegalStateException e10) {
            Log.e(f104219s, "Highlighter Error Message : " + e10.getMessage());
        }
        if (editable.length() == 0) {
            return editable;
        }
        p(editable);
        u(editable);
        v(editable);
        return editable;
    }

    public final void u(Editable editable) {
        if (this.f104230l.isEmpty()) {
            return;
        }
        int intValue = this.f104230l.lastKey().intValue();
        Matcher matcher = f104217q.matcher(editable);
        int i10 = 0;
        while (matcher.find()) {
            if (this.f104230l.containsKey(Integer.valueOf(i10))) {
                r(editable, matcher, this.f104230l.get(Integer.valueOf(i10)).intValue());
            }
            i10++;
            if (i10 > intValue) {
                return;
            }
        }
    }

    public final void v(Editable editable) {
        if (this.f104231m.isEmpty()) {
            return;
        }
        for (Pattern pattern : this.f104231m.o()) {
            int intValue = this.f104231m.get(pattern).intValue();
            Matcher matcher = pattern.matcher(editable);
            while (matcher.find()) {
                s(editable, matcher, intValue);
            }
        }
    }

    public final void w(Editable editable) {
        this.f104224f = false;
        t(editable);
        this.f104224f = true;
    }

    public final void x() {
        if (this.f104228j == null) {
            this.f104228j = new C15032c();
        }
        setTokenizer(this.f104228j);
        setHorizontallyScrolling(true);
        setFilters(new InputFilter[]{new a()});
        addTextChangedListener(this.f104234p);
    }

    public boolean y() {
        return this.f104225g;
    }

    public void z() {
        u(getEditableText());
    }

    public C15031b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f104222d = 500;
        this.f104224f = true;
        this.f104227i = new Handler();
        this.f104229k = getResources().getDisplayMetrics().density;
        this.f104230l = new TreeMap();
        this.f104231m = new HashMap();
        this.f104232n = Arrays.asList(Character.valueOf(JavaElement.JEM_COMPILATIONUNIT), '+', '-', '*', '/', '=');
        this.f104233o = new RunnableC1960b();
        this.f104234p = new c();
        x();
    }

    public C15031b(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f104222d = 500;
        this.f104224f = true;
        this.f104227i = new Handler();
        this.f104229k = getResources().getDisplayMetrics().density;
        this.f104230l = new TreeMap();
        this.f104231m = new HashMap();
        this.f104232n = Arrays.asList(Character.valueOf(JavaElement.JEM_COMPILATIONUNIT), '+', '-', '*', '/', '=');
        this.f104233o = new RunnableC1960b();
        this.f104234p = new c();
        x();
    }
}
