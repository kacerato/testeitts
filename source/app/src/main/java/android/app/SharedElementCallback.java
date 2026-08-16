package android.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/SharedElementCallback.class
 */
public abstract class SharedElementCallback {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/SharedElementCallback$OnSharedElementsReadyListener.class
 */
    public interface OnSharedElementsReadyListener {
        void onSharedElementsReady();
    }

    public SharedElementCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onSharedElementStart(List<String> sharedElementNames, List<View> sharedElements, List<View> sharedElementSnapshots) {
        throw new RuntimeException("Stub!");
    }

    public void onSharedElementEnd(List<String> sharedElementNames, List<View> sharedElements, List<View> sharedElementSnapshots) {
        throw new RuntimeException("Stub!");
    }

    public void onRejectSharedElements(List<View> rejectedSharedElements) {
        throw new RuntimeException("Stub!");
    }

    public void onMapSharedElements(List<String> names, Map<String, View> sharedElements) {
        throw new RuntimeException("Stub!");
    }

    public Parcelable onCaptureSharedElementSnapshot(View sharedElement, Matrix viewToGlobalMatrix, RectF screenBounds) {
        throw new RuntimeException("Stub!");
    }

    public View onCreateSnapshotView(Context context, Parcelable snapshot) {
        throw new RuntimeException("Stub!");
    }

    public void onSharedElementsArrived(List<String> sharedElementNames, List<View> sharedElements, OnSharedElementsReadyListener listener) {
        throw new RuntimeException("Stub!");
    }
}
