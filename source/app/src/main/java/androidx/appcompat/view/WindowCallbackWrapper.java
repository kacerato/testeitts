package androidx.appcompat.view;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class WindowCallbackWrapper implements Window.Callback {
    final Window.Callback mWrapped;

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static boolean onSearchRequested(Window.Callback callback, SearchEvent searchEvent) {
            return callback.onSearchRequested(searchEvent);
        }

        public static android.view.ActionMode onWindowStartingActionMode(Window.Callback callback, ActionMode.Callback callback2, int i10) {
            return callback.onWindowStartingActionMode(callback2, i10);
        }
    }

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static void onProvideKeyboardShortcuts(Window.Callback callback, List<KeyboardShortcutGroup> list, Menu menu, int i10) {
            callback.onProvideKeyboardShortcuts(list, menu, i10);
        }
    }

    public static class Api26Impl {
        private Api26Impl() {
        }

        public static void onPointerCaptureChanged(Window.Callback callback, boolean z10) {
            callback.onPointerCaptureChanged(z10);
        }
    }

    public WindowCallbackWrapper(Window.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.mWrapped = callback;
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchGenericMotionEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyEvent(keyEvent);
    }

    @Override
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.mWrapped.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTouchEvent(motionEvent);
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTrackballEvent(motionEvent);
    }

    public final Window.Callback getWrapped() {
        return this.mWrapped;
    }

    @Override
    public void onActionModeFinished(android.view.ActionMode actionMode) {
        this.mWrapped.onActionModeFinished(actionMode);
    }

    @Override
    public void onActionModeStarted(android.view.ActionMode actionMode) {
        this.mWrapped.onActionModeStarted(actionMode);
    }

    @Override
    public void onAttachedToWindow() {
        this.mWrapped.onAttachedToWindow();
    }

    @Override
    public void onContentChanged() {
        this.mWrapped.onContentChanged();
    }

    @Override
    public boolean onCreatePanelMenu(int i10, Menu menu) {
        return this.mWrapped.onCreatePanelMenu(i10, menu);
    }

    @Override
    public View onCreatePanelView(int i10) {
        return this.mWrapped.onCreatePanelView(i10);
    }

    @Override
    public void onDetachedFromWindow() {
        this.mWrapped.onDetachedFromWindow();
    }

    @Override
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        return this.mWrapped.onMenuItemSelected(i10, menuItem);
    }

    @Override
    public boolean onMenuOpened(int i10, Menu menu) {
        return this.mWrapped.onMenuOpened(i10, menu);
    }

    @Override
    public void onPanelClosed(int i10, Menu menu) {
        this.mWrapped.onPanelClosed(i10, menu);
    }

    @Override
    public void onPointerCaptureChanged(boolean z10) {
        Api26Impl.onPointerCaptureChanged(this.mWrapped, z10);
    }

    @Override
    public boolean onPreparePanel(int i10, View view, Menu menu) {
        return this.mWrapped.onPreparePanel(i10, view, menu);
    }

    @Override
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i10) {
        Api24Impl.onProvideKeyboardShortcuts(this.mWrapped, list, menu, i10);
    }

    @Override
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return Api23Impl.onSearchRequested(this.mWrapped, searchEvent);
    }

    @Override
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.mWrapped.onWindowAttributesChanged(layoutParams);
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        this.mWrapped.onWindowFocusChanged(z10);
    }

    @Override
    public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.mWrapped.onWindowStartingActionMode(callback);
    }

    @Override
    public boolean onSearchRequested() {
        return this.mWrapped.onSearchRequested();
    }

    @Override
    public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
        return Api23Impl.onWindowStartingActionMode(this.mWrapped, callback, i10);
    }
}
