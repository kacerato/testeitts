package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TextScriptingStyleSpan.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TextScriptingStyleSpan.class
  classes.dex
 */
public class TextScriptingStyleSpan {
    public transient Color color;
    public transient boolean bold;
    public transient boolean italic;
    public transient boolean underline;
    public transient boolean strikethrough;

    public TextScriptingStyleSpan(Color color) {
        this.bold = false;
        this.italic = false;
        this.underline = false;
        this.strikethrough = false;
        this.color = color;
    }

    public TextScriptingStyleSpan(Color color, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.bold = false;
        this.italic = false;
        this.underline = false;
        this.strikethrough = false;
        this.color = color;
        this.bold = z10;
        this.italic = z11;
        this.underline = z12;
        this.strikethrough = z13;
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public boolean isBold() {
        return this.bold;
    }

    public void setBold(boolean z10) {
        this.bold = z10;
    }

    public boolean isItalic() {
        return this.italic;
    }

    public void setItalic(boolean z10) {
        this.italic = z10;
    }

    public boolean isUnderline() {
        return this.underline;
    }

    public void setUnderline(boolean z10) {
        this.underline = z10;
    }

    public boolean isStrikethrough() {
        return this.strikethrough;
    }

    public void setStrikethrough(boolean z10) {
        this.strikethrough = z10;
    }
}
