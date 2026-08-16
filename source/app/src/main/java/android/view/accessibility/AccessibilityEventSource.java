package android.view.accessibility;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/accessibility/AccessibilityEventSource.class
 */
public interface AccessibilityEventSource {
    void sendAccessibilityEvent(int i10);

    void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent);
}
