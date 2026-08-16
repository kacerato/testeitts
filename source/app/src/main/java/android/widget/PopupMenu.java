package android.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/PopupMenu.class
 */
public class PopupMenu {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/PopupMenu$OnDismissListener.class
 */
    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/PopupMenu$OnMenuItemClickListener.class
 */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View anchor) {
        throw new RuntimeException("Stub!");
    }

    public PopupMenu(Context context, View anchor, int gravity) {
        throw new RuntimeException("Stub!");
    }

    public PopupMenu(Context context, View anchor, int gravity, int popupStyleAttr, int popupStyleRes) {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    public View.OnTouchListener getDragToOpenListener() {
        throw new RuntimeException("Stub!");
    }

    public Menu getMenu() {
        throw new RuntimeException("Stub!");
    }

    public MenuInflater getMenuInflater() {
        throw new RuntimeException("Stub!");
    }

    public void inflate(int menuRes) {
        throw new RuntimeException("Stub!");
    }

    public void show() {
        throw new RuntimeException("Stub!");
    }

    public void dismiss() {
        throw new RuntimeException("Stub!");
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDismissListener(OnDismissListener listener) {
        throw new RuntimeException("Stub!");
    }
}
