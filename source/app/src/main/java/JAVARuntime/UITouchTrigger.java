package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UITouchTrigger.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UITouchTrigger.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Components"})
public class UITouchTrigger extends Component {
    @HideGetSet
    public Touch getSelectedTouch() {
        return null;
    }

    @HideGetSet
    public boolean isDown() {
        return false;
    }

    @HideGetSet
    public boolean isPressed() {
        return false;
    }

    @HideGetSet
    public boolean isUp() {
        return false;
    }
}
