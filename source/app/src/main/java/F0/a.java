package F0;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.data.DataHolder;
import java.util.Iterator;

public abstract class a<T> implements b<T> {

    @Nullable
    @C0.a
    public final DataHolder f6122b;

    @C0.a
    public a(@Nullable DataHolder dataHolder) {
        this.f6122b = dataHolder;
    }

    @Override
    @Nullable
    public final Bundle Oc() {
        DataHolder dataHolder = this.f6122b;
        if (dataHolder == null) {
            return null;
        }
        return dataHolder.Oc();
    }

    @Override
    public final void close() {
        release();
    }

    @Override
    @NonNull
    public abstract T get(int i10);

    @Override
    public int getCount() {
        DataHolder dataHolder = this.f6122b;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override
    @Deprecated
    public boolean isClosed() {
        DataHolder dataHolder = this.f6122b;
        return dataHolder == null || dataHolder.isClosed();
    }

    @Override
    @NonNull
    public Iterator<T> iterator() {
        return new c(this);
    }

    @Override
    public void release() {
        DataHolder dataHolder = this.f6122b;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override
    @NonNull
    public Iterator<T> x3() {
        return new k(this);
    }
}
