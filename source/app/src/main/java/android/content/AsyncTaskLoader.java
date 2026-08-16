package android.content;

import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/AsyncTaskLoader.class
 */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    public abstract D loadInBackground();

    public AsyncTaskLoader(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void setUpdateThrottle(long delayMS) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onForceLoad() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean onCancelLoad() {
        throw new RuntimeException("Stub!");
    }

    public void onCanceled(D data) {
        throw new RuntimeException("Stub!");
    }

    protected D onLoadInBackground() {
        throw new RuntimeException("Stub!");
    }

    public void cancelLoadInBackground() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLoadInBackgroundCanceled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
