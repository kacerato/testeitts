package android.content.pm;

import android.content.Intent;
import android.content.IntentSender;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ShortcutManager.class
 */
public class ShortcutManager {
    ShortcutManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean setDynamicShortcuts(List<ShortcutInfo> shortcutInfoList) {
        throw new RuntimeException("Stub!");
    }

    public List<ShortcutInfo> getDynamicShortcuts() {
        throw new RuntimeException("Stub!");
    }

    public List<ShortcutInfo> getManifestShortcuts() {
        throw new RuntimeException("Stub!");
    }

    public boolean addDynamicShortcuts(List<ShortcutInfo> shortcutInfoList) {
        throw new RuntimeException("Stub!");
    }

    public void removeDynamicShortcuts(List<String> shortcutIds) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllDynamicShortcuts() {
        throw new RuntimeException("Stub!");
    }

    public List<ShortcutInfo> getPinnedShortcuts() {
        throw new RuntimeException("Stub!");
    }

    public boolean updateShortcuts(List<ShortcutInfo> shortcutInfoList) {
        throw new RuntimeException("Stub!");
    }

    public void disableShortcuts(List<String> shortcutIds) {
        throw new RuntimeException("Stub!");
    }

    public void disableShortcuts(List<String> shortcutIds, CharSequence disabledMessage) {
        throw new RuntimeException("Stub!");
    }

    public void enableShortcuts(List<String> shortcutIds) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxShortcutCountPerActivity() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRateLimitingActive() {
        throw new RuntimeException("Stub!");
    }

    public int getIconMaxWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getIconMaxHeight() {
        throw new RuntimeException("Stub!");
    }

    public void reportShortcutUsed(String shortcutId) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequestPinShortcutSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean requestPinShortcut(ShortcutInfo shortcut, IntentSender resultIntent) {
        throw new RuntimeException("Stub!");
    }

    public Intent createShortcutResultIntent(ShortcutInfo shortcut) {
        throw new RuntimeException("Stub!");
    }
}
