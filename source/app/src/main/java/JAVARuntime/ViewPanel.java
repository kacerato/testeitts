package JAVARuntime;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ViewPanel.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ViewPanel.class
  classes.dex
 */
@ClassCategory(cat = {"Editor"})
public class ViewPanel extends EditorPanel {
    public void updateUI() {
    }

    public void updateUIVisible() {
    }

    public void minimizedUpdate() {
    }

    public void lpTaskUpdate() {
    }

    public void onBindView() {
    }

    public void onUnbindView() {
    }

    public View onAttach() {
        return null;
    }

    public void onDetach() {
    }

    public static <T extends View> T findViewByID(View view, String str) {
        return (T) Editor.findViewByID(view, str);
    }

    public static View toView(Object obj) {
        return (View) obj;
    }

    public static String getIdOf(View view) {
        return Editor.getIdOf(view);
    }
}
