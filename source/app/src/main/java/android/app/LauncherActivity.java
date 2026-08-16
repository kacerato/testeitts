package android.app;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/LauncherActivity.class
 */
public abstract class LauncherActivity extends ListActivity {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/LauncherActivity$ListItem.class
 */
    public static class ListItem {
        public String className;
        public Bundle extras;
        public Drawable icon;
        public CharSequence label;
        public String packageName;
        public ResolveInfo resolveInfo;

        public ListItem() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/LauncherActivity$IconResizer.class
 */
    public class IconResizer {
        public IconResizer() {
            throw new RuntimeException("Stub!");
        }

        public Drawable createIconThumbnail(Drawable icon) {
            throw new RuntimeException("Stub!");
        }
    }

    public LauncherActivity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate(Bundle icicle) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTitle(CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTitle(int titleId) {
        throw new RuntimeException("Stub!");
    }

    protected void onSetContentView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onListItemClick(ListView l10, View v10, int position, long id2) {
        throw new RuntimeException("Stub!");
    }

    protected Intent intentForPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    protected ListItem itemForPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    protected Intent getTargetIntent() {
        throw new RuntimeException("Stub!");
    }

    protected List<ResolveInfo> onQueryPackageManager(Intent queryIntent) {
        throw new RuntimeException("Stub!");
    }

    public List<ListItem> makeListItems() {
        throw new RuntimeException("Stub!");
    }
}
