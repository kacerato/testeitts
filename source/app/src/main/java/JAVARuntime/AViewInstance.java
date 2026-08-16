package JAVARuntime;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AViewInstance.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AViewInstance.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public interface AViewInstance {
    String getViewID();

    <T extends View> T findByID(String str);
}
