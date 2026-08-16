package android.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/AccessibilityManager.class
 */
public final class AccessibilityManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener.class
 */
    public interface AccessibilityStateChangeListener {
        void onAccessibilityStateChanged(boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener.class
 */
    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z10);
    }

    AccessibilityManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTouchExplorationEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void sendAccessibilityEvent(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void interrupt() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public List<ServiceInfo> getAccessibilityServiceList() {
        throw new RuntimeException("Stub!");
    }

    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        throw new RuntimeException("Stub!");
    }

    public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(int feedbackTypeFlags) {
        throw new RuntimeException("Stub!");
    }

    public boolean addAccessibilityStateChangeListener(AccessibilityStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void addAccessibilityStateChangeListener(AccessibilityStateChangeListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeAccessibilityStateChangeListener(AccessibilityStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public boolean addTouchExplorationStateChangeListener(TouchExplorationStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void addTouchExplorationStateChangeListener(TouchExplorationStateChangeListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeTouchExplorationStateChangeListener(TouchExplorationStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }
}
