package F0;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.r;
import java.io.Closeable;
import java.util.Iterator;

public interface b<T> extends Iterable<T>, r, Closeable {
    @Nullable
    @C0.a
    Bundle Oc();

    void close();

    @NonNull
    T get(int i10);

    int getCount();

    @Deprecated
    boolean isClosed();

    @Override
    @NonNull
    Iterator<T> iterator();

    void release();

    @NonNull
    Iterator<T> x3();
}
