package android.app;

import android.content.Loader;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/LoaderManager.class
 */
public abstract class LoaderManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/LoaderManager$LoaderCallbacks.class
 */
    public interface LoaderCallbacks<D> {
        Loader<D> onCreateLoader(int i10, Bundle bundle);

        void onLoadFinished(Loader<D> loader, D d10);

        void onLoaderReset(Loader<D> loader);
    }

    public abstract <D> Loader<D> initLoader(int i10, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);

    public abstract <D> Loader<D> restartLoader(int i10, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);

    public abstract void destroyLoader(int i10);

    public abstract <D> Loader<D> getLoader(int i10);

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public LoaderManager() {
        throw new RuntimeException("Stub!");
    }

    public static void enableDebugLogging(boolean enabled) {
        throw new RuntimeException("Stub!");
    }
}
