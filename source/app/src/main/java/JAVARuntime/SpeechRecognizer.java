package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SpeechRecognizer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SpeechRecognizer.class
  classes.dex
 */
@ClassCategory(cat = {"Sound"})
public class SpeechRecognizer extends Component {
    @HideGetSet
    public String getPartialResults() {
        return "";
    }

    @HideGetSet
    public String getResults() {
        return "";
    }

    @HideGetSet
    public String getLanguage() {
        return "";
    }

    @HideGetSet
    public void setLanguage(String str) {
    }

    @HideGetSet
    public boolean isEnableRecognition() {
        return false;
    }

    @HideGetSet
    public void setEnableRecognition(boolean z10) {
    }
}
