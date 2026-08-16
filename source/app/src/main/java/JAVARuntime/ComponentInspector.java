package JAVARuntime;

import JAVARuntime.Component;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ComponentInspector.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ComponentInspector.class
  classes.dex
 */
@ClassCategory(cat = {"Editor"})
public class ComponentInspector<T extends Component> {
    public transient T myComponent;

    public void updateUIVisible() {
    }

    public View onAttach() {
        return null;
    }

    /* JADX WARN: Incorrect return type in method signature: <T:Landroid/view/View;>(Landroid/view/View;Ljava/lang/String;)TT; */
    public static View findViewByID(View view, String str) {
        return Editor.findViewByID(view, str);
    }

    public static View toView(Object obj) {
        return (View) obj;
    }

    public static String getIdOf(View view) {
        return Editor.getIdOf(view);
    }
}
