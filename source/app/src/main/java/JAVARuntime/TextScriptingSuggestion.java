package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TextScriptingSuggestion.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TextScriptingSuggestion.class
  classes.dex
 */
public class TextScriptingSuggestion {
    public transient String text;
    public transient String returnType;

    public TextScriptingSuggestion(String str) {
        this.text = str;
    }

    public TextScriptingSuggestion(String str, String str2) {
        this.text = str;
        this.returnType = str2;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public String getReturnType() {
        return this.returnType;
    }

    public void setReturnType(String str) {
        this.returnType = str;
    }
}
