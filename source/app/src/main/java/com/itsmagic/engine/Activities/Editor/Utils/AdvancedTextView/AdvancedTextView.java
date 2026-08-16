package com.itsmagic.engine.Activities.Editor.Utils.AdvancedTextView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.Html;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Activities.Editor.Utils.InterfaceC12734b;
import com.itsmagic.engine.Activities.Editor.Utils.n;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Utils.Media.YoutubeUtils;
import com.itsmagic.engine2.R;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.openjdk.tools.doclint.DocLint;
import yd.C16181m;

@SuppressLint({"AppCompatCustomView"})
public class AdvancedTextView extends TextView {

    public static final String f71955k = "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)";

    public static final char f71956l = '\ue000';

    public static final char f71957m = '\ue001';

    public final List<Tc.c> f71958b;

    public final Tc.c f71959c;

    public boolean f71960d;

    public int f71961e;

    public String f71962f;

    public final Pattern f71963g;

    public boolean f71964h;

    public String f71965i;

    public e f71966j;

    public class a extends SteppedArrayList<Tc.c> {

        public class C1144a implements Tc.a {
            public C1144a() {
            }

            @Override
            public String a(String str) {
                try {
                    return "<small>" + str.substring(str.indexOf("'") + 1) + "</small>";
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return str;
                }
            }
        }

        public class b implements Tc.a {
            public b() {
            }

            @Override
            public String a(String str) {
                return "<B><I>" + str + "</I></B>";
            }
        }

        public class c implements Tc.a {
            public c() {
            }

            @Override
            public String a(String str) {
                return "<b>" + str + "</b>";
            }
        }

        public class d implements Tc.a {
            public d() {
            }

            @Override
            public String a(String str) {
                return "<i>" + str + "</i>";
            }
        }

        public class e implements Tc.a {
            public e() {
            }

            @Override
            public String a(String str) {
                return "<u>" + str + "</u>";
            }
        }

        public class f implements Tc.a {
            public f() {
            }

            @Override
            public String a(String str) {
                return "<del>" + str + "</del>";
            }
        }

        public class g implements Tc.a {
            public g() {
            }

            @Override
            public String a(String str) {
                return "<sub>" + str + "</sub>";
            }
        }

        public class h implements Tc.a {
            public h() {
            }

            @Override
            public String a(String str) {
                return "<sup>" + str + "</sup>";
            }
        }

        public class i implements Tc.a {
            public i() {
            }

            @Override
            public String a(String str) {
                try {
                    String substring = str.substring(0, str.indexOf("'"));
                    if (!substring.startsWith(C16181m.f130230g) && substring.contains(DocLint.SEPARATOR)) {
                        String[] split = substring.split("\\,");
                        substring = new ColorINT(Nc.b.w1(split[0]), Nc.b.w1(split[1]), Nc.b.w1(split[2])).z(true);
                    }
                    return "<font color='" + substring + "'>" + str.substring(str.indexOf("'") + 1) + "</font>";
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return str;
                }
            }
        }

        public class j implements Tc.a {
            public j() {
            }

            @Override
            public String a(String str) {
                try {
                    return "<big>" + str.substring(str.indexOf("'") + 1) + "</big>";
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return str;
                }
            }
        }

        public a() {
            add(new Tc.c("\\*\\*\\*", "\\*\\*\\*", new b()));
            add(new Tc.c("\\*\\*", "\\*\\*", new c()));
            add(new Tc.c("\\*", "\\*", new d()));
            add(new Tc.c("\\_\\_", "\\_\\_", new e()));
            add(new Tc.c("\\-\\-", "\\-\\-", new f()));
            add(new Tc.c("\\-\\_", "\\_\\-", new g()));
            add(new Tc.c("\\_\\-", "\\-\\_", new h()));
            add(new Tc.c("\\'color=", "\\'\\'", new i()));
            add(new Tc.c("\\'big", "\\'\\'", new j()));
            add(new Tc.c("\\'small", "\\'\\'", new C1144a()));
        }
    }

    public class b implements InterfaceC12734b {
        public b() {
        }

        @Override
        public void a(n linkPair) {
            if (AdvancedTextView.this.f71966j != null) {
                AdvancedTextView.this.f71966j.a(linkPair.b(), linkPair.d());
            }
        }
    }

    public class c extends ClickableSpan {

        public final d f71979b;

        public final CharSequence f71980c;

        public final SpannableStringBuilder f71981d;

        public c(final d val$t, final CharSequence val$insert, final SpannableStringBuilder val$ssb) {
            this.f71979b = val$t;
            this.f71980c = val$insert;
            this.f71981d = val$ssb;
        }

        @Override
        public void onClick(@NonNull View view) {
            try {
                Selection.setSelection(this.f71981d, 0);
                view.invalidate();
            } catch (Exception unused) {
            }
            n nVar = this.f71979b.f71984b;
            nVar.f72147c.a(nVar);
        }

        @Override
        public void updateDrawState(@NonNull TextPaint textPaint) {
            UnderlineSpan[] underlineSpanArr;
            int i10 = this.f71979b.f71984b.f72146b;
            if (i10 >= 0) {
                textPaint.setColor(i10);
            }
            CharSequence charSequence = this.f71980c;
            boolean z10 = (charSequence instanceof Spanned) && (underlineSpanArr = (UnderlineSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), UnderlineSpan.class)) != null && underlineSpanArr.length > 0;
            if (this.f71979b.f71984b.f72149e) {
                textPaint.setUnderlineText(true);
            } else {
                if (z10) {
                    return;
                }
                textPaint.setUnderlineText(false);
            }
        }
    }

    public static class d {

        public final String f71983a;

        public final n f71984b;

        public final CharSequence f71985c;

        public d(String token, n pair, @Nullable CharSequence renderedText) {
            this.f71983a = token;
            this.f71984b = pair;
            this.f71985c = renderedText;
        }
    }

    public interface e {
        void a(String tag, String text);
    }

    public AdvancedTextView(@NonNull Context context) {
        super(context);
        this.f71958b = new a();
        this.f71959c = new Tc.c("\\!tap=", "\\!\\!", null);
        this.f71960d = false;
        this.f71961e = -1;
        this.f71963g = Pattern.compile(f71955k, 2);
        this.f71964h = false;
        k();
    }

    public static SpannableStringBuilder f(Spanned spanned) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned);
        Pattern compile = Pattern.compile("<u>(.*?)</u>", 32);
        for (Matcher matcher = compile.matcher(spanned.toString()); matcher.find(); matcher = compile.matcher(spannableStringBuilder.toString())) {
            int start = matcher.start();
            int end = matcher.end();
            String group = matcher.group(1);
            spannableStringBuilder.replace(start, end, (CharSequence) group);
            spannableStringBuilder.setSpan(new UnderlineSpan(), start, group.length() + start, 33);
        }
        return spannableStringBuilder;
    }

    public static String g(String t10, String c10) {
        return "'color=" + c10 + "'" + t10 + "''";
    }

    public static String m(String t10) {
        return "__" + t10 + "__";
    }

    public static String n(String text, String tag) {
        return "!tap=" + tag + "'" + text + "!!";
    }

    public void b(Tc.c tags) {
        this.f71958b.add(tags);
        setText(this.f71962f);
    }

    public void c(List<Tc.c> tags) {
        this.f71958b.addAll(tags);
        setText(this.f71962f);
    }

    public void d(Tc.c... tags) {
        for (Tc.c cVar : tags) {
            this.f71958b.add(cVar);
        }
        setText(this.f71962f);
    }

    public final void e(SpannableStringBuilder ssb, List<d> tokens) {
        int i10 = 0;
        for (d dVar : tokens) {
            String spannableStringBuilder = ssb.toString();
            int indexOf = spannableStringBuilder.indexOf(dVar.f71983a, i10);
            if (indexOf < 0) {
                indexOf = spannableStringBuilder.indexOf(dVar.f71983a);
            }
            if (indexOf >= 0) {
                int length = dVar.f71983a.length() + indexOf;
                CharSequence charSequence = dVar.f71985c;
                if (charSequence == null) {
                    charSequence = dVar.f71984b.d();
                }
                ssb.replace(indexOf, length, charSequence);
                i10 = charSequence.length() + indexOf;
                ssb.setSpan(new c(dVar, charSequence, ssb), indexOf, i10, 33);
            }
        }
    }

    public CharSequence getEffectiveText() {
        return super.getText();
    }

    public int getLinksColor() {
        return this.f71961e;
    }

    public e getTapListener() {
        return this.f71966j;
    }

    @Override
    public CharSequence getText() {
        return this.f71962f;
    }

    public final String h(String input, List<d> tokensOut) {
        Spanned spanned;
        StringBuffer stringBuffer = new StringBuffer();
        Matcher matcher = Pattern.compile(this.f71959c.a() + "(.*?)" + this.f71959c.c(), 32).matcher(input);
        int i10 = 0;
        while (matcher.find()) {
            String group = matcher.group(1);
            String str = "";
            try {
                int indexOf = group.indexOf("'");
                if (indexOf >= 0) {
                    str = group.substring(0, indexOf);
                    group = group.substring(indexOf + 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\ue000TAP");
            int i11 = i10 + 1;
            sb2.append(i10);
            sb2.append(f71957m);
            String sb3 = sb2.toString();
            matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(sb3));
            n nVar = new n(group, new b());
            nVar.f72149e = false;
            nVar.f72148d = str;
            Spanned spanned2 = null;
            try {
                spanned2 = i(Tc.b.S(group, this.f71958b).replace("\n", "<br>").replace(StringUtils.CR, "<br>"));
                spanned = f(spanned2);
            } catch (Exception e11) {
                e11.printStackTrace();
                spanned = spanned2;
            }
            tokensOut.add(new d(sb3, nVar, spanned));
            i10 = i11;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public final Spanned i(String html) {
        return Html.fromHtml(html, 0);
    }

    public final String j(String url) {
        if (url.contains("www.youtube.com") || url.contains("youtube.com")) {
            if (!url.contains("watch?v=")) {
                throw new YoutubeUtils.InvalidYoutubeLinkException("Invalid youtube link:" + url);
            }
            String substring = url.substring(url.indexOf("watch?v=") + 8);
            int indexOf = substring.indexOf(38);
            if (indexOf >= 0) {
                substring = substring.substring(0, indexOf);
            }
            int indexOf2 = substring.indexOf(63);
            return indexOf2 >= 0 ? substring.substring(0, indexOf2) : substring;
        }
        if (!url.contains("youtu.be/")) {
            throw new YoutubeUtils.InvalidYoutubeLinkException("Invalid youtube link" + url);
        }
        String substring2 = url.substring(url.indexOf("youtu.be/") + 9);
        int indexOf3 = substring2.indexOf(38);
        if (indexOf3 >= 0) {
            substring2 = substring2.substring(0, indexOf3);
        }
        int indexOf4 = substring2.indexOf(63);
        return indexOf4 >= 0 ? substring2.substring(0, indexOf4) : substring2;
    }

    public final void k() {
        this.f71961e = getContext().getResources().getColor(R.color.colorPrimary);
        this.f71964h = true;
        String str = this.f71965i;
        if (str != null) {
            setText(str);
            this.f71965i = null;
        }
    }

    public boolean l() {
        return this.f71960d;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        try {
            return super.onTouchEvent(event);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void setAllowLinkClicks(boolean allowLinkClicks) {
        this.f71960d = allowLinkClicks;
        setText(this.f71962f);
    }

    public void setLinksColor(int linksColor) {
        this.f71961e = linksColor;
        setText(this.f71962f);
    }

    public void setTapListener(e tapListener) {
        this.f71966j = tapListener;
    }

    @Override
    public void setText(CharSequence text, TextView.BufferType type) {
        if (!this.f71964h) {
            this.f71965i = text != null ? text.toString() : "";
            return;
        }
        if (text == null || text.toString().isEmpty()) {
            this.f71962f = "";
            super.setText("", type);
            return;
        }
        this.f71962f = text.toString();
        getContext();
        String str = this.f71962f;
        List<d> steppedArrayList = new SteppedArrayList<>();
        String S10 = Tc.b.S(str, this.f71958b);
        if (this.f71960d) {
            try {
                S10 = h(S10, steppedArrayList);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String S11 = Tc.b.S(S10, this.f71958b);
        StringBuilder sb2 = new StringBuilder(S11.length() + 32);
        boolean z10 = false;
        for (int i10 = 0; i10 < S11.length(); i10++) {
            if (S11.charAt(i10) != ' ' || z10) {
                sb2.append(S11.charAt(i10));
                z10 = true;
            } else {
                sb2.append("&nbsp;");
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Html.fromHtml(sb2.toString().replace("\n", "<br>").replace(StringUtils.CR, "<br>"), 0));
        if (this.f71960d) {
            e(spannableStringBuilder, steppedArrayList);
            setMovementMethod(LinkMovementMethod.getInstance());
        }
        super.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
    }

    @Override
    public void setTextColor(int color) {
        super.setTextColor(color);
        setText(this.f71962f);
    }

    @Override
    public void setTypeface(@Nullable Typeface tf2, int style) {
        super.setTypeface(tf2, style);
        setText(this.f71962f);
    }

    @Override
    public void setTextColor(ColorStateList colors) {
        super.setTextColor(colors);
        setText(this.f71962f);
    }

    @Override
    public void setTypeface(@Nullable Typeface tf2) {
        super.setTypeface(tf2);
        setText(this.f71962f);
    }

    public AdvancedTextView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f71958b = new a();
        this.f71959c = new Tc.c("\\!tap=", "\\!\\!", null);
        this.f71960d = false;
        this.f71961e = -1;
        this.f71963g = Pattern.compile(f71955k, 2);
        this.f71964h = false;
        k();
    }

    public AdvancedTextView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f71958b = new a();
        this.f71959c = new Tc.c("\\!tap=", "\\!\\!", null);
        this.f71960d = false;
        this.f71961e = -1;
        this.f71963g = Pattern.compile(f71955k, 2);
        this.f71964h = false;
        k();
    }

    public AdvancedTextView(Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f71958b = new a();
        this.f71959c = new Tc.c("\\!tap=", "\\!\\!", null);
        this.f71960d = false;
        this.f71961e = -1;
        this.f71963g = Pattern.compile(f71955k, 2);
        this.f71964h = false;
        k();
    }
}
