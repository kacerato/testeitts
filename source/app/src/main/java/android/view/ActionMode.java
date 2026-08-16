package android.view;

import android.graphics.Rect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ActionMode.class
 */
public abstract class ActionMode {
    public static final int DEFAULT_HIDE_DURATION = -1;
    public static final int TYPE_FLOATING = 1;
    public static final int TYPE_PRIMARY = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ActionMode$Callback.class
 */
    public interface Callback {
        boolean onCreateActionMode(ActionMode actionMode, Menu menu);

        boolean onPrepareActionMode(ActionMode actionMode, Menu menu);

        boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem);

        void onDestroyActionMode(ActionMode actionMode);
    }

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setTitle(int i10);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setSubtitle(int i10);

    public abstract void setCustomView(View view);

    public abstract void invalidate();

    public abstract void finish();

    public abstract Menu getMenu();

    public abstract CharSequence getTitle();

    public abstract CharSequence getSubtitle();

    public abstract View getCustomView();

    public abstract MenuInflater getMenuInflater();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ActionMode$Callback2.class
 */
    public static abstract class Callback2 implements Callback {
        public Callback2() {
            throw new RuntimeException("Stub!");
        }

        public void onGetContentRect(ActionMode mode, View view, Rect outRect) {
            throw new RuntimeException("Stub!");
        }
    }

    public ActionMode() {
        throw new RuntimeException("Stub!");
    }

    public void setTag(Object tag) {
        throw new RuntimeException("Stub!");
    }

    public Object getTag() {
        throw new RuntimeException("Stub!");
    }

    public void setTitleOptionalHint(boolean titleOptional) {
        throw new RuntimeException("Stub!");
    }

    public boolean getTitleOptionalHint() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTitleOptional() {
        throw new RuntimeException("Stub!");
    }

    public void setType(int type) {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public void invalidateContentRect() {
        throw new RuntimeException("Stub!");
    }

    public void hide(long duration) {
        throw new RuntimeException("Stub!");
    }

    public void onWindowFocusChanged(boolean hasWindowFocus) {
        throw new RuntimeException("Stub!");
    }
}
