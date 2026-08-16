package androidx.loader.app;

import android.os.Bundle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager {

    public interface LoaderCallbacks<D> {
        Loader<D> onCreateLoader(int i10, Bundle bundle);

        void onLoadFinished(Loader<D> loader, D d10);

        void onLoaderReset(Loader<D> loader);
    }

    public static void enableDebugLogging(boolean z10) {
        LoaderManagerImpl.DEBUG = z10;
    }

    public static <T extends LifecycleOwner & ViewModelStoreOwner> LoaderManager getInstance(T t10) {
        return new LoaderManagerImpl(t10, t10.getViewModelStore());
    }

    public abstract void destroyLoader(int i10);

    @Deprecated
    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> Loader<D> getLoader(int i10);

    public boolean hasRunningLoaders() {
        return false;
    }

    public abstract <D> Loader<D> initLoader(int i10, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);

    public abstract void markForRedelivery();

    public abstract <D> Loader<D> restartLoader(int i10, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);
}
