package Pm;

import Um.AbstractC3153b;
import Um.x;
import java.util.regex.Pattern;

public class k extends Wm.a {

    public static final Pattern[][] f21797e = {new Pattern[]{null, null}, new Pattern[]{Pattern.compile("^<(?:script|pre|style)(?:\\s|>|$)", 2), Pattern.compile("</(?:script|pre|style)>", 2)}, new Pattern[]{Pattern.compile("^<!--"), Pattern.compile("-->")}, new Pattern[]{Pattern.compile("^<[?]"), Pattern.compile("\\?>")}, new Pattern[]{Pattern.compile("^<![A-Z]"), Pattern.compile(">")}, new Pattern[]{Pattern.compile("^<!\\[CDATA\\["), Pattern.compile("\\]\\]>")}, new Pattern[]{Pattern.compile("^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)", 2), null}, new Pattern[]{Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$", 2), null}};

    public final Um.n f21798a;

    public final Pattern f21799b;

    public boolean f21800c;

    public Pm.a f21801d;

    public static class b extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            int c10 = hVar.c();
            CharSequence b10 = hVar.b();
            if (hVar.d() < 4 && b10.charAt(c10) == '<') {
                for (int i10 = 1; i10 <= 7; i10++) {
                    if (i10 != 7 || !(gVar.a().getBlock() instanceof x)) {
                        Pattern pattern = k.f21797e[i10][0];
                        Pattern pattern2 = k.f21797e[i10][1];
                        if (pattern.matcher(b10.subSequence(c10, b10.length())).find()) {
                            return Wm.f.d(new k(pattern2)).b(hVar.getIndex());
                        }
                    }
                }
            }
            return Wm.f.c();
        }
    }

    @Override
    public void c(CharSequence charSequence) {
        this.f21801d.a(charSequence);
        Pattern pattern = this.f21799b;
        if (pattern == null || !pattern.matcher(charSequence).find()) {
            return;
        }
        this.f21800c = true;
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        return this.f21800c ? Wm.c.d() : (hVar.a() && this.f21799b == null) ? Wm.c.d() : Wm.c.b(hVar.getIndex());
    }

    @Override
    public void g() {
        this.f21798a.r(this.f21801d.b());
        this.f21801d = null;
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21798a;
    }

    public k(Pattern pattern) {
        this.f21798a = new Um.n();
        this.f21800c = false;
        this.f21801d = new Pm.a();
        this.f21799b = pattern;
    }
}
