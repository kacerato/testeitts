package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TextScriptingSyntaxHighlightSpan.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TextScriptingSyntaxHighlightSpan.class
  classes.dex
 */
public class TextScriptingSyntaxHighlightSpan {
    public transient TextScriptingStyleSpan span;
    public transient int start;
    public transient int end;

    public TextScriptingSyntaxHighlightSpan() {
    }

    public TextScriptingSyntaxHighlightSpan(TextScriptingStyleSpan textScriptingStyleSpan, int i10, int i11) {
        this.span = textScriptingStyleSpan;
        this.start = i10;
        this.end = i11;
    }

    public TextScriptingStyleSpan getSpan() {
        return this.span;
    }

    public void setSpan(TextScriptingStyleSpan textScriptingStyleSpan) {
        this.span = textScriptingStyleSpan;
    }

    public int getStart() {
        return this.start;
    }

    public void setStart(int i10) {
        this.start = i10;
    }

    public int getEnd() {
        return this.end;
    }

    public void setEnd(int i10) {
        this.end = i10;
    }
}
