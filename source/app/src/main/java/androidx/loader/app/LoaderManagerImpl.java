package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.SparseArrayCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

public class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    private static final String TAG = "LoaderManager";
    private final LifecycleOwner mLifecycleOwner;
    private final LoaderViewModel mLoaderViewModel;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {
        private final Bundle mArgs;
        private final int mId;
        private LifecycleOwner mLifecycleOwner;
        private final Loader<D> mLoader;
        private LoaderObserver<D> mObserver;
        private Loader<D> mPriorLoader;

        public LoaderInfo(int i10, Bundle bundle, Loader<D> loader, Loader<D> loader2) {
            this.mId = i10;
            this.mArgs = bundle;
            this.mLoader = loader;
            this.mPriorLoader = loader2;
            loader.registerListener(i10, this);
        }

        public Loader<D> destroy(boolean z10) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Destroying: " + ((Object) this));
            }
            this.mLoader.cancelLoad();
            this.mLoader.abandon();
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z10) {
                    loaderObserver.reset();
                }
            }
            this.mLoader.unregisterListener(this);
            if ((loaderObserver == null || loaderObserver.hasDeliveredData()) && !z10) {
                return this.mLoader;
            }
            this.mLoader.reset();
            return this.mPriorLoader;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.mId);
            printWriter.print(" mArgs=");
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.mLoader);
            this.mLoader.dump(str + GlideException.a.f59088e, fileDescriptor, printWriter, strArr);
            if (this.mObserver != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.mObserver);
                this.mObserver.dump(str + GlideException.a.f59088e, printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(getLoader().dataToString(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }

        public Loader<D> getLoader() {
            return this.mLoader;
        }

        public boolean isCallbackWaitingForData() {
            LoaderObserver<D> loaderObserver;
            return (!hasActiveObservers() || (loaderObserver = this.mObserver) == null || loaderObserver.hasDeliveredData()) ? false : true;
        }

        public void markForRedelivery() {
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(lifecycleOwner, loaderObserver);
        }

        @Override
        public void onActive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Starting: " + ((Object) this));
            }
            this.mLoader.startLoading();
        }

        @Override
        public void onInactive() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Stopping: " + ((Object) this));
            }
            this.mLoader.stopLoading();
        }

        @Override
        public void onLoadComplete(Loader<D> loader, D d10) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadComplete: " + ((Object) this));
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d10);
                return;
            }
            if (LoaderManagerImpl.DEBUG) {
                Log.w(LoaderManagerImpl.TAG, "onLoadComplete was incorrectly called on a background thread");
            }
            postValue(d10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void removeObserver(Observer<? super D> observer) {
            super.removeObserver(observer);
            this.mLifecycleOwner = null;
            this.mObserver = null;
        }

        public Loader<D> setCallback(LifecycleOwner lifecycleOwner, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.mLoader, loaderCallbacks);
            observe(lifecycleOwner, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.mObserver;
            if (loaderObserver2 != null) {
                removeObserver(loaderObserver2);
            }
            this.mLifecycleOwner = lifecycleOwner;
            this.mObserver = loaderObserver;
            return this.mLoader;
        }

        @Override
        public void setValue(D d10) {
            super.setValue(d10);
            Loader<D> loader = this.mPriorLoader;
            if (loader != null) {
                loader.reset();
                this.mPriorLoader = null;
            }
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(this.mId);
            sb2.append(" : ");
            Class<?> cls = this.mLoader.getClass();
            sb2.append(cls.getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(cls)));
            sb2.append("}}");
            return sb2.toString();
        }
    }

    public static class LoaderObserver<D> implements Observer<D> {
        private final LoaderManager.LoaderCallbacks<D> mCallback;
        private boolean mDeliveredData = false;
        private final Loader<D> mLoader;

        public LoaderObserver(Loader<D> loader, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.mLoader = loader;
            this.mCallback = loaderCallbacks;
        }

        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.mDeliveredData);
        }

        public boolean hasDeliveredData() {
            return this.mDeliveredData;
        }

        @Override
        public void onChanged(D d10) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  onLoadFinished in " + ((Object) this.mLoader) + ": " + this.mLoader.dataToString(d10));
            }
            this.mDeliveredData = true;
            this.mCallback.onLoadFinished(this.mLoader, d10);
        }

        public void reset() {
            if (this.mDeliveredData) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Resetting: " + ((Object) this.mLoader));
                }
                this.mCallback.onLoaderReset(this.mLoader);
            }
        }

        public String toString() {
            return this.mCallback.toString();
        }
    }

    public static class LoaderViewModel extends ViewModel {
        private static final ViewModelProvider.Factory FACTORY = new ViewModelProvider.Factory() {
            @Override
            public <T extends ViewModel> T create(Class<T> cls) {
                return new LoaderViewModel();
            }
        };
        private SparseArrayCompat<LoaderInfo> mLoaders = new SparseArrayCompat<>();
        private boolean mCreatingLoader = false;

        public static LoaderViewModel getInstance(ViewModelStore viewModelStore) {
            return (LoaderViewModel) new ViewModelProvider(viewModelStore, FACTORY).get(LoaderViewModel.class);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.mLoaders.size() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + C13155a.f85806a;
                for (int i10 = 0; i10 < this.mLoaders.size(); i10++) {
                    LoaderInfo valueAt = this.mLoaders.valueAt(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.mLoaders.keyAt(i10));
                    printWriter.print(": ");
                    printWriter.println(valueAt.toString());
                    valueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        public void finishCreatingLoader() {
            this.mCreatingLoader = false;
        }

        public <D> LoaderInfo<D> getLoader(int i10) {
            return this.mLoaders.get(i10);
        }

        public boolean hasRunningLoaders() {
            int size = this.mLoaders.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mLoaders.valueAt(i10).isCallbackWaitingForData()) {
                    return true;
                }
            }
            return false;
        }

        public boolean isCreatingLoader() {
            return this.mCreatingLoader;
        }

        public void markForRedelivery() {
            int size = this.mLoaders.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mLoaders.valueAt(i10).markForRedelivery();
            }
        }

        @Override
        public void onCleared() {
            super.onCleared();
            int size = this.mLoaders.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mLoaders.valueAt(i10).destroy(true);
            }
            this.mLoaders.clear();
        }

        public void putLoader(int i10, LoaderInfo loaderInfo) {
            this.mLoaders.put(i10, loaderInfo);
        }

        public void removeLoader(int i10) {
            this.mLoaders.remove(i10);
        }

        public void startCreatingLoader() {
            this.mCreatingLoader = true;
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = LoaderViewModel.getInstance(viewModelStore);
    }

    private <D> Loader<D> createAndInstallLoader(int i10, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks, Loader<D> loader) {
        try {
            this.mLoaderViewModel.startCreatingLoader();
            Loader<D> onCreateLoader = loaderCallbacks.onCreateLoader(i10, bundle);
            if (onCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + ((Object) onCreateLoader));
            }
            LoaderInfo loaderInfo = new LoaderInfo(i10, bundle, onCreateLoader, loader);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + ((Object) loaderInfo));
            }
            this.mLoaderViewModel.putLoader(i10, loaderInfo);
            this.mLoaderViewModel.finishCreatingLoader();
            return loaderInfo.setCallback(this.mLifecycleOwner, loaderCallbacks);
        } catch (Throwable th2) {
            this.mLoaderViewModel.finishCreatingLoader();
            throw th2;
        }
    }

    @Override
    public void destroyLoader(int i10) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + ((Object) this) + " of " + i10);
        }
        LoaderInfo loader = this.mLoaderViewModel.getLoader(i10);
        if (loader != null) {
            loader.destroy(true);
            this.mLoaderViewModel.removeLoader(i10);
        }
    }

    @Override
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public <D> Loader<D> getLoader(int i10) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i10);
        if (loader != null) {
            return loader.getLoader();
        }
        return null;
    }

    @Override
    public boolean hasRunningLoaders() {
        return this.mLoaderViewModel.hasRunningLoaders();
    }

    @Override
    public <D> Loader<D> initLoader(int i10, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i10);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + ((Object) this) + ": args=" + ((Object) bundle));
        }
        if (loader == null) {
            return createAndInstallLoader(i10, bundle, loaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v(TAG, "  Re-using existing loader " + ((Object) loader));
        }
        return loader.setCallback(this.mLifecycleOwner, loaderCallbacks);
    }

    @Override
    public void markForRedelivery() {
        this.mLoaderViewModel.markForRedelivery();
    }

    @Override
    public <D> Loader<D> restartLoader(int i10, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + ((Object) this) + ": args=" + ((Object) bundle));
        }
        LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i10);
        return createAndInstallLoader(i10, bundle, loaderCallbacks, loader != null ? loader.destroy(false) : null);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        Class<?> cls = this.mLifecycleOwner.getClass();
        sb2.append(cls.getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(cls)));
        sb2.append("}}");
        return sb2.toString();
    }
}
