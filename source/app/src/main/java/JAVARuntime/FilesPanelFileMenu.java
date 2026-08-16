package JAVARuntime;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FilesPanelFileMenu.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FilesPanelFileMenu.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
public class FilesPanelFileMenu {
    private transient String menu;

    public FilesPanelFileMenu(String str) {
        this.menu = str;
    }

    public String getMenu() {
        return this.menu;
    }

    public void setMenu(String str) {
        this.menu = str;
    }

    public void onClick(File file) {
    }

    public void onClick(File file, View view) {
    }

    public boolean filterFormat(String str) {
        return true;
    }
}
