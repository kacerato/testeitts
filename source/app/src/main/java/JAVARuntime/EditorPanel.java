package JAVARuntime;

import JAVARuntime.GUIUtils;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:EditorPanel.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:EditorPanel.class
  classes.dex
 */
@ClassCategory(cat = {"Editor"})
public class EditorPanel {
    public boolean isTouchInside(Touch touch) {
        return false;
    }

    public Touch determineTouch(GUIUtils.TouchFilter touchFilter) {
        return null;
    }

    public Touch determineTouch(GUIUtils.TouchFilter touchFilter, int i10) {
        return null;
    }

    public Vector2 determineTouchPosition(Touch touch) {
        return null;
    }

    public Vector2 determineTouchPosition(Touch touch, Vector2 vector2) {
        return null;
    }

    @HideGetSet
    public int getContentXPixels() {
        return 0;
    }

    @HideGetSet
    public int getContentYPixels() {
        return 0;
    }

    @HideGetSet
    public int getContentWidthPixels() {
        return 0;
    }

    @HideGetSet
    public int getContentHeightPixels() {
        return 0;
    }

    @HideGetSet
    public int getTotalXPixels() {
        return 0;
    }

    @HideGetSet
    public int getTotalYPixels() {
        return 0;
    }

    @HideGetSet
    public int getTotalWidthPixels() {
        return 0;
    }

    @HideGetSet
    public int getTotalHeightPixels() {
        return 0;
    }

    public void requestDetach() {
    }

    @HideGetSet
    @DeprecatedInfo(info = {"Incorrect grammar or spelling"})
    @Deprecated
    public String getTittle() {
        return getTitle();
    }

    @HideGetSet
    @DeprecatedInfo(info = {"Incorrect grammar or spelling"})
    @Deprecated
    public void setTittle(String str) {
        setTitle(str);
    }

    @HideGetSet
    public String getTitle() {
        return null;
    }

    @HideGetSet
    public void setTitle(String str) {
    }

    @HideGetSet
    public boolean isRequestCloseConfirmation() {
        return false;
    }

    @HideGetSet
    public void setRequestCloseConfirmation(boolean z10) {
    }

    public void blink() {
    }

    public boolean isAllowCloseX() {
        return false;
    }

    public void setAllowCloseX(boolean z10) {
    }

    @HideGetSet
    public boolean isVisible() {
        return false;
    }

    @HideGetSet
    public boolean isFloating() {
        return false;
    }

    public EditorPanel copy() {
        return null;
    }
}
